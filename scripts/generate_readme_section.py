import os

LANGUAGES = {
    "C": ("c", [".c", ".h"]),
    "Python": ("python", [".py"]),
    "Go": ("go", [".go"]),
    "C#": ("csharp", [".cs"])
}

def count_loc(folder, extensions):
    total_lines = 0
    total_files = 0

    for root, _, files in os.walk(folder):
        for file in files:
            if any(file.endswith(ext) for ext in extensions):
                total_files += 1
                path = os.path.join(root, file)
                with open(path, "r", encoding="utf-8", errors="ignore") as f:
                    total_lines += sum(1 for _ in f)

    return total_lines, total_files

def generate_table():
    rows = []

    for lang, (folder, exts) in LANGUAGES.items():
        loc, files = count_loc(folder, exts)
        rows.append((lang, loc, files))

    table = "\n## Auto-Generated Metrics\n\n"
    table += "| Language | LOC | Files |\n"
    table += "|----------|-----|-------|\n"

    for lang, loc, files in rows:
        table += f"| {lang} | {loc} | {files} |\n"

    return table

def update_readme():
    table = generate_table()

    with open("README.md", "r") as f:
        content = f.read()

    start = "<!-- METRICS_START -->"
    end = "<!-- METRICS_END -->"

    if start in content and end in content:
        before = content.split(start)[0]
        after = content.split(end)[1]
        new_content = before + start + "\n" + table + "\n" + end + after
    else:
        new_content = content + "\n\n" + start + "\n" + table + "\n" + end

    with open("README.md", "w") as f:
        f.write(new_content)

if __name__ == "__main__":
    update_readme()
