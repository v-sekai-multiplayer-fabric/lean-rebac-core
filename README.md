# lean-rebac-core

Relationship-based access-control hexagon (NoGod / ReBAC): dependency-free authorization core. The production `NoGod` core is Mathlib-free; the research-tier `ReBAC` proofs use Mathlib.

> Split out of the [`lean-predictive-bvh`](https://github.com/v-sekai-multiplayer-fabric/lean-predictive-bvh) monorepo (now archived). Each hexagon cluster is its own repo following the `core/ports/adapters` convention; cross-cluster wiring is via Lake `require ... from git`.

## Dependencies

- `mathlib` @ `v4.30.0` — research tier only

## Build

```sh
lake build         # production gate: typecheck the  cluster
lake build Research  # research-tier (non-gating; may fail)
```

## Hexagon layout

- `core/` — dependency-free domain logic + proofs
- `ports/` — narrow driving (source) / driven (sink) contracts
- `adapters/` — concrete I/O at the edges
