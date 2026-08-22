# Entropy Critical Values — Lean 4 Formalization

**Paper**: Number-Theoretic Origin and Topological Significance of the Entropy Critical Values in Yuanxian Theory  
(Short Treatise Series NO. 14)  
**Author**: Zhenyuan Acharya  
**Date**: August 2026

## Scope of Formalization

This directory provides machine-checked Lean 4 support for the core number-theoretic claims of the paper:

| Claim | Lean file | Status |
|-------|-----------|--------|
| Definition of incomplete-ratio constant $\delta_{\mathrm{YXT}} = (\sqrt{5}-1)/2$ | `DeltaYXT.lean` | Formalized |
| Golden-ratio identities $\delta^2 + \delta = 1$, $\delta^2 = 1-\delta$ | `DeltaYXT.lean` | Formalized |
| Rational sandwich $2236/1000 < \sqrt{5} < 2237/1000$ | `DeltaYXT.lean` | Formalized |
| Bounds $0.618 < \delta < 0.619$, $0.381 < \delta^2 < 0.3821$ | `DeltaYXT.lean` | Formalized |
| Characteristic equation of self-referential iteration | `FixedPoint.lean` | Formalized |
| Eigenvalues $\lambda_1 = 1$, $\lambda_2 = \delta-1$ | `FixedPoint.lean` | Formalized |
| $\Omega_{\mathrm{crit},1} = \delta_{\mathrm{YXT}}$ | `OmegaCrit1.lean` | Formalized |
| $\Omega_{\mathrm{crit},2} = \delta_{\mathrm{YXT}}^2$ | `OmegaCrit2.lean` | Formalized |
| Complementarity $\Omega_{\mathrm{crit},1} + \Omega_{\mathrm{crit},2} = 1$ | `Complementarity.lean` | Formalized |
| Metabolic window $0.382 < \Omega \le 0.618$ | `MetabolicWindow.lean` | Formalized |

## Numerical strategy

All floating-point comparisons are replaced by **exact rational arithmetic**:

1. Prove $(2236/1000)^2 < 5 < (2237/1000)^2$ with `norm_num`.
2. Transfer to $2236/1000 < \sqrt{5} < 2237/1000$ via `Real.lt_sqrt` / `Real.sqrt_lt`.
3. Linear arithmetic yields the stated bounds on $\delta$ and $\delta^2$.

No `nlinarith` or approximate decimal tactics are required for the critical inequalities.

## Quick Start

```bash
cd YXT-Formalization
lake exe cache get
lake build

# Run individual modules
lake env lean lean/EntropyCriticalValues/DeltaYXT.lean
lake env lean lean/EntropyCriticalValues/FixedPoint.lean
lake env lean lean/EntropyCriticalValues/OmegaCrit1.lean
lake env lean lean/EntropyCriticalValues/OmegaCrit2.lean
lake env lean lean/EntropyCriticalValues/Complementarity.lean
lake env lean lean/EntropyCriticalValues/MetabolicWindow.lean
```

## Relation to Core Papers

- Directly supports **Core Paper No. 3** (`T^{64}\to 35\to 137` Dimensional-Reduction Evolutionary Dynamics).
- Relies on the incomplete-ratio constant already used in the 35-step reduction chain (`lean/Reduction/`).
- Complements the physical-constants formalization in `lean/Constants/`.

## License

MIT (same as the parent repository).
