import Lake
open Lake DSL

package "jsp-000661-formalization" where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.33.0"

lean_lib Erdos804

@[default_target]
lean_lib «JSP_000661» where
  roots := #[`JSP_000661, `Erdos804]
