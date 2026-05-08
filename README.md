# [PROJECT_NAME]

> **Category `##`** · **[CATEGORY_NAME]**
> **Sub-project `#`** · [One-line description of what this concretely implements]

---

## What This Explores

[2–3 sentences. What is being tested? What makes this sub-project a meaningful stress case for the language comparison? What would you NOT learn from a simpler version of this?]

---

## Prerequisites

> Complete these steps **once per language**. Skip any you've already done.

<details>
<summary><strong>C</strong> — GCC / Clang + Make</summary>

**macOS**
```bash
xcode-select --install
```

**Ubuntu / Debian**
```bash
sudo apt update && sudo apt install -y gcc make
```

**Windows**
Install [MSYS2](https://www.msys2.org/) then:
```bash
pacman -S mingw-w64-ucrt-x86_64-gcc make
```

Verify:
```bash
gcc --version && make --version
```
</details>

<details>
<summary><strong>Python</strong> — Python 3.11+ + pip</summary>

**macOS**
```bash
brew install python@3.11
```

**Ubuntu / Debian**
```bash
sudo apt update && sudo apt install -y python3 python3-pip python3-venv
```

**Windows**
Download from [python.org](https://www.python.org/downloads/) (check "Add to PATH")

Verify:
```bash
python3 --version && pip3 --version
```
</details>

<details>
<summary><strong>Go</strong> — Go 1.22+</summary>

**macOS**
```bash
brew install go
```

**Ubuntu / Debian**
```bash
sudo apt update && sudo apt install -y golang-go
# Or for latest: https://go.dev/dl/
```

**Windows**
Download from [go.dev/dl](https://go.dev/dl/)

Verify:
```bash
go version
```
</details>

<details>
<summary><strong>C#</strong> — .NET 8 SDK</summary>

**macOS**
```bash
brew install --cask dotnet-sdk
```

**Ubuntu / Debian**
```bash
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt update && sudo apt install -y dotnet-sdk-8.0
```

**Windows**
Download from [dotnet.microsoft.com](https://dotnet.microsoft.com/download)

Verify:
```bash
dotnet --version
```
</details>

<details>
<summary><strong>Docker</strong> (optional — run any language without installing it)</summary>

Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)

```bash
# C
docker run --rm -v $(pwd)/c:/app -w /app gcc:latest bash -c "gcc -O2 -o main main.c && ./main"

# Python
docker run --rm -v $(pwd)/python:/app -w /app python:3.11 bash -c "pip install -r requirements.txt -q && python main.py"

# Go
docker run --rm -v $(pwd)/go:/app -w /app golang:1.22 bash -c "go run ."

# C#
docker run --rm -v $(pwd)/csharp:/app -w /app mcr.microsoft.com/dotnet/sdk:8.0 bash -c "dotnet run"
```
</details>

---

## Quick Start

### C
```bash
cd c
make          # or: gcc -O2 -o main main.c -lpthread
./main
```

### Python
```bash
cd python
python3 -m venv .venv && source .venv/bin/activate   # Windows: .venv\Scripts\activate
pip install -r requirements.txt
python main.py
```

### Go
```bash
cd go
go mod tidy
go run .
```

### C#
```bash
cd csharp
dotnet restore
dotnet run
```

---

## Implementation Breakdown

### C

**Approach:** [How C solves this — e.g. manual pthread pool, arena allocator, raw syscalls]

**Key mechanism:**
```c
// The most important / interesting snippet — the core pattern
```

**Watch out for:**
- [e.g. Manual cleanup required — no RAII, forgetting to free causes leak under load]
- [e.g. Signal handling must be set before threads spawn]

---

### Python

**Approach:** [How Python solves this — e.g. asyncio + uvloop, multiprocessing.Pool, ctypes FFI]

**Key mechanism:**
```python
# The most important / interesting snippet — the core pattern
```

**Watch out for:**
- [e.g. GIL prevents true thread parallelism — use multiprocessing for CPU-bound work]
- [e.g. Dynamic typing means runtime errors that C/Go/C# would catch at compile time]

---

### Go

**Approach:** [How Go solves this — e.g. goroutine fan-out, sync.WaitGroup, channel pipeline]

**Key mechanism:**
```go
// The most important / interesting snippet — the core pattern
```

**Watch out for:**
- [e.g. Goroutine leaks if channels are never closed]
- [e.g. defer runs at function exit, not block exit — can surprise in loops]

---

### C#

**Approach:** [How C# solves this — e.g. Task.WhenAll, Channel<T>, Span<T> for zero-copy]

**Key mechanism:**
```csharp
// The most important / interesting snippet — the core pattern
```

**Watch out for:**
- [e.g. async void swallows exceptions — always use async Task]
- [e.g. IDisposable must be explicitly managed outside using blocks]

---

## Comparison

> Grades are **relative within this sub-project only**.
> `A` excellent · `B` good · `C` adequate · `D` painful · `F` not viable

<!--
GRADING GUIDE — delete this comment block before publishing
Fill each criterion with a letter grade then a short reason after the dash.
Format: GRADE — reason
Example: A — zero-config, `go run .` just works
-->

**Implementation effort**
- C: 
- Python: 
- Go: 
- C#: 

**Readability of solution**
- C: 
- Python: 
- Go: 
- C#: 

**Runtime performance**
- C: 
- Python: 
- Go: 
- C#: 

**Memory efficiency**
- C: 
- Python: 
- Go: 
- C#: 

**Error handling quality**
- C: 
- Python: 
- Go: 
- C#: 

**Toolchain friction**
- C: 
- Python: 
- Go: 
- C#: 

**Production readiness**
- C: 
- Python: 
- Go: 
- C#: 

---

## Metrics

> Run `./bench.sh` from project root to populate. Delete any row that isn't applicable.

<!-- METRICS_START -->

**Build time (seconds)**
- C: 
- Python: 
- Go: 
- C#: 

**Binary / image size (MB)**
- C: 
- Python: 
- Go: 
- C#: 

**Cold start (ms)**
- C: 
- Python: 
- Go: 
- C#: 

**Peak memory RSS (MB)**
- C: 
- Python: 
- Go: 
- C#: 

**Throughput (ops/s)**
- C: 
- Python: 
- Go: 
- C#: 

**Latency p50 (ms)**
- C: 
- Python: 
- Go: 
- C#: 

**Latency p99 (ms)**
- C: 
- Python: 
- Go: 
- C#: 

<!-- METRICS_END -->

---

## Key Insights

**Winner in this context:** [Language] — [one sentence on why it wins for THIS specific problem]

**Most surprising finding:**
[Something genuinely unexpected after implementing all four versions]

**The real trade-off:**
[The tension no single language resolves cleanly — the honest nuance]

**When you'd reach for each:**
- **C** — [specific scenario where C is the right call]
- **Python** — [specific scenario where Python is the right call]
- **Go** — [specific scenario where Go is the right call]
- **C#** — [specific scenario where C# is the right call]

---

## Retrospective

**What was easy:**
[The part that went smoothly across most implementations]

**What was hard:**
[The part that caused the most friction — and which language made it worst]

**What carries forward:**
[The one insight from this project worth remembering when choosing a language for a real system]

---

## Related Projects

- `##-#` [Project name] — [one line on why it's related]
- `##-#` [Project name] — [one line on why it's related]
