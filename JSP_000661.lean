import Erdos804

/-- Formal Lean 4 bridge theorem for JSP-000661 (Erdős Problem #804).
Alon and Sudakov (2007) resolved this problem by determining the forced
global independence number when every induced subgraph of order (log n)^2
(respectively, (log n)^3) has an independent set of size log n. -/
theorem jsp_000661_solved :=
  Erdos804.erdos_804

#print axioms jsp_000661_solved
