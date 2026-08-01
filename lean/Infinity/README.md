# Infinity Unification (Bounded Infinity Theory)

Formalization of the paper:

> **Infinity is Zero — Unification of Infinity and Infinitesimal in the T⁶⁴ Topological Self-Referential Closed Loop**

## Modules

| File | Content |
|------|--------|
| `T64Compact.lean` | T⁶⁴ compactness interface + spectral gap Δ > 0 |
| `TCSCContraction.lean` | TCSC idempotence f∘f=f and Lip(f)<1 |
| `BanachOnT64.lean` | Unique fixed point on T⁶⁴ |
| `FSCConservation.lean` | FSC integral conservation + infinity-unification conservation |
| `InfinityUnification.lean` | Main theorem ∞ = 0 = −∞ (interface chain) |

## Scope

Interface-layer formalization only. Full analytic content (Banach on a concrete metric, measure-theoretic limits, physical singularity resolution) relies on Mathlib topology/analysis and is outside the zero-`sorry` machine-checked core, consistent with the paper’s own verification statement.

## Dependencies

- `lean/Physics/T64/`
- `lean/TCSC/`
- Mathlib
