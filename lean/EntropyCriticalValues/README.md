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
| Characteristic equation of self-referential iteration | `FixedPoint.lean` | Formalized |
| Eigenvalues $\lambda_1 = 1$, $\lambda_2 = \delta-1$ | `FixedPoint.lean` | Formalized |
| $\Omega_{\mathrm{crit},1} = \delta_{\mathrm{YXT}}$ | `OmegaCrit1.lean` | Formalized |
| $\Omega_{\mathrm{crit},2} = \delta_{\mathrm{YXT}}^2$ | `OmegaCrit2.lean` | Formalized |
| Complementarity $\Omega_{\mathrm{crit},1} + \Omega_{\mathrm{crit},2} = 1$ | `Complementarity.lean` | Formalized |
| Metabolic window $0.382 < \Omega \le 0.618$ | `MetabolicWindow.lean` | Formalized |

## Quick Start

```bash
cd YXT-Formalization
lake exe cache get
lake build

# Run individual modules (example)
lean --run lean/EntropyCriticalValues/DeltaYXT.lean
lean --run lean/EntropyCriticalValues/OmegaCrit1.lean
lean --run lean/EntropyCriticalValues/Complementarity.lean
```

## Relation to Core Papers

- Directly supports **Core Paper No. 3** (`T^{64}\to 35\to 137` Dimensional-Reduction Evolutionary Dynamics).
- Relies on the incomplete-ratio constant already used in the 35-step reduction chain (`lean/Reduction/`).
- Complements the physical-constants formalization in `lean/Constants/`.

## License

MIT (same as the parent repository).
