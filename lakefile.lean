-- SPDX-License-Identifier: MIT
-- Copyright (c) 2026-present K. S. Ernest (iFire) Lee

import Lake
open System Lake DSL

package «lean-rebac-core» where

-- Mathlib is only needed by the research-tier ReBAC module; the production
-- NoGod core is Mathlib-free. Pinned to the toolchain line in lean-toolchain.
require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.30.0"

-- Relationship-based access-control hexagon (NoGod / ReBAC): dependency-free
-- authorization core.
lean_lib Rebac where
  roots := #[`Rebac]
  globs := #[.one `Rebac]

-- Research-tier ReBAC proofs (NOT on the CI production gate; uses Mathlib).
lean_lib Research where
  roots := #[`Research]
  globs := #[.one `Research]
