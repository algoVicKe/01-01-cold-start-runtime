# Project Standards (SE Lab System)

This document defines the global rules for all projects in this repository ecosystem.
Every generated project MUST conform to these constraints to ensure consistency,
comparability, and scalable execution across 150+ repositories.

---

## 1. Project Scaling Model

All projects must be implemented at **Level 1 (Minimal Viable Technical Expression)**.

Level 1 means:
- Smallest implementation that demonstrates the concept clearly
- No production hardening
- No distributed system complexity unless core to concept
- Local or single-node execution only

DO NOT build full-scale systems.

---

## 2. Complexity Budget

Each language implementation MUST follow:

- Maximum 500 lines of code per language
- Maximum 5 source files per language
- Maximum 2 external dependencies (if any)
- Prefer standard library usage over frameworks

This ensures consistency across languages and prevents overengineering.

---

## 3. Execution Modes

Every project must declare its execution mode:

- CPU-bound
- IO-bound
- Memory-bound
- Mixed

This is required for later benchmarking and comparison analysis.

---

## 4. Effort Classification

Each project must be classified:

- Class A → 1–3 hours (simple algorithmic/system concept)
- Class B → 3–6 hours (moderate systems behavior)
- Class C → 6–10 hours (complex systems simulation)

Daily workflow should mix classes for sustainability.

---

## 5. Input / Output Contracts

Each project must explicitly define:

### Input Contract
- source of input (stdin, file, API)
- format specification

### Output Contract
- format of output
- error behavior

This ensures cross-language comparability.

---

## 6. Logging Standard

All implementations should use consistent minimal logging:

- [INFO] normal execution flow
- [WARN] recoverable issues
- [ERROR] failure states

Logging must be simple and consistent across all languages.

---

## 7. Testing Requirement

Each implementation must include:

- 1 valid input test (happy path)
- 1 edge case test
- 1 invalid input test

No exhaustive testing required.

---

## 8. Documentation Principle

Keep documentation minimal but structured:
- No long essays
- Focus on clarity over verbosity
- Explain “what and why”, not implementation details

---

## 9. Language Parity Rule

All 4 languages must implement:
- identical behavior
- identical input/output contract
- equivalent logic structure

Differences must be due to language design, not logic variation.

---

## 10. Anti-Overengineering Rule

If a design decision:
- adds complexity without improving clarity
- introduces infrastructure not required by concept

→ it must be removed.

Simplicity is a feature.
