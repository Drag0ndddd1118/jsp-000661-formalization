import Erdos804

/-- Formal Lean 4 bridge theorem for JSP-000661 (Erdős Problem #804).
Alon and Sudakov (2007) resolved this problem by determining the forced
global independence number when every induced subgraph of order (log n)^2
(respectively, (log n)^3) has an independent set of size log n. -/
theorem jsp_000661_solved :
    ∃ c₂ C₂ c₃ C₃ : ℝ,
      0 < c₂ ∧ 0 < C₂ ∧ 0 < c₃ ∧ 0 < C₃ ∧
      ∀ᶠ n : ℕ in atTop,
        c₂ * Erdos804.resolutionScale n ≤ (Erdos804.squareValue n : ℝ) ∧
        (Erdos804.squareValue n : ℝ) ≤ C₂ * Real.log (n : ℝ) ^ 2 ∧
        c₃ * Erdos804.resolutionScale n ≤ (Erdos804.cubicValue n : ℝ) ∧
        (Erdos804.cubicValue n : ℝ) ≤ C₃ * Erdos804.resolutionScale n :=
  Erdos804.erdos_804

#print axioms jsp_000661_solved
-- 'jsp_000661_solved' depends on axioms: [propext, Classical.choice, Quot.sound]
