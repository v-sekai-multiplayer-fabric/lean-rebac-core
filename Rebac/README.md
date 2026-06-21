# Rebac

Relationship-based access-control hexagon (NoGod / ReBAC): dependency-free authorization core.

## Hexagon layout

- `core/` — dependency-free domain logic + proofs
- `ports/` — narrow driving (source) / driven (sink) contracts
- `adapters/` — concrete I/O at the edges

## Sibling wiring

- (standalone — no sibling cores)
