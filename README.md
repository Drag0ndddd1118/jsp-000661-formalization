# Formalization of JSP-000661 (Erdős Problem #804)

## Problem Overview

**Catalog ID:** [JSP-000661](https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0601-0700.md#JSP-000661)  
**Erdős Problem:** [#804](https://www.erdosproblems.com/804)  
**Mathematical Area:** Graph theory  

### Problem Statement
If every local part has a large independent set, how large an independent set must the whole graph have?

Specifically, Erdős and Hajnal asked: let $f(m, n)$ be the maximum integer such that any graph on $n$ vertices in which every induced subgraph on $m$ vertices has an independent set of size at least $\log n$ must contain an independent set of size at least $f(m, n)$. What is the growth rate of $f(m, n)$? In particular, what are the asymptotics of $f((\log n)^2, n)$ and $f((\log n)^3, n)$?

### Resolution
Resolved by Noga Alon and Benny Sudakov (2007):
- **Reference:** N. Alon and B. Sudakov, *On graphs with subgraphs having large independence numbers*, J. Graph Theory 56 (2007), 149–157. [doi:10.1002/jgt.20264](https://doi.org/10.1002/jgt.20264).

Alon and Sudakov proved that:
1. For the square window $m = (\log n)^2$, the forced global independence number satisfies:
   $$\frac{(\log n)^2}{\log\log n} \ll f((\log n)^2, n) \ll (\log n)^2$$
2. For the cubic window $m = (\log n)^3$, the forced global independence number satisfies:
   $$f((\log n)^3, n) \asymp \frac{(\log n)^2}{\log\log n}$$

## Formalization Details

- **Target File:** `JSP_000661.lean`
- **Underlying Formalization:** `Erdos804.lean`
- **Main Theorem:**
  ```lean
  theorem jsp_000661_solved :
      ∃ c₂ C₂ c₃ C₃ : ℝ,
        0 < c₂ ∧ 0 < C₂ ∧ 0 < c₃ ∧ 0 < C₃ ∧
        ∀ᶠ n : ℕ in atTop,
          c₂ * Erdos804.resolutionScale n ≤ (Erdos804.squareValue n : ℝ) ∧
          (Erdos804.squareValue n : ℝ) ≤ C₂ * Real.log (n : ℝ) ^ 2 ∧
          c₃ * Erdos804.resolutionScale n ≤ (Erdos804.cubicValue n : ℝ) ∧
          (Erdos804.cubicValue n : ℝ) ≤ C₃ * Erdos804.resolutionScale n :=
    Erdos804.erdos_804
  ```
- **Axioms Check:**
  `#print axioms jsp_000661_solved` depends strictly on standard foundational Lean axioms:
  ```lean
  [propext, Classical.choice, Quot.sound]
  ```
  Zero `sorry`, zero `admit`, zero custom axioms.

## Build & Verification Instructions

### Toolchain
- **Lean:** `leanprover/lean4:v4.33.0`
- **Mathlib:** `v4.33.0`

### Build
```bash
lake exe cache get
lake build
```

## Attribution & Provenance
- **Mathematical Solution:** Noga Alon and Benny Sudakov (2007).
- **Formal Authors:** OpenAI Codex, GPT-5.6 Sol, with upstream formalization in `plby/lean-proofs` (`src/latest/ErdosProblems/Erdos804.lean`).
- **Packaging & Verification:** Maintained and verified by 赵钦 (Qin Zhao, GitHub: [@Drag0ndddd1118](https://github.com/Drag0ndddd1118)).
- **Submission Type:** Record-only catalog citation; no award claim is pending for this entry.
