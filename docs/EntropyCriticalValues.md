# Entropy Critical Values — Human-Readable Formalization Notes

## 1. Incomplete-ratio constant

$$
\delta_{\mathrm{YXT}} = \frac{\sqrt{5}-1}{2} \approx 0.6180339887
$$

Satisfies the golden-ratio identity

$$
\delta^2 + \delta = 1 \qquad\Rightarrow\qquad \delta^2 = 1-\delta.
$$

## 2. Self-referential recurrence

$$
x_{n+1} = \delta\, x_n + (1-\delta)\, x_{n-1}.
$$

Characteristic equation:

$$
\lambda^2 - \delta\lambda - (1-\delta) = 0.
$$

Roots:

- $\lambda_1 = 1$ (stable fixed point),
- $\lambda_2 = \delta-1$ with $|\lambda_2| = \delta^2$ (decay factor).

## 3. Entropy critical values

From the stability-margin argument

$$
\Omega_{\max} = 1 - \delta^2
$$

one obtains

$$
\Omega_{\mathrm{crit},1} = \delta \approx 0.618,
\qquad
\Omega_{\mathrm{crit},2} = \delta^2 \approx 0.382.
$$

Complementarity (information conservation):

$$
\Omega_{\mathrm{crit},1} + \Omega_{\mathrm{crit},2} = 1.
$$

## 4. Metabolic / survivable window

$$
0.382 < \Omega \le 0.618
$$

i.e.

$$
\Omega_{\mathrm{crit},2} < \Omega \le \Omega_{\mathrm{crit},1}.
$$

- Above $0.618$: phase collapse of the 64 steady-state nodes.
- Below $0.382$: insufficient projection into the algebraic-adaptation domain.

## 5. Lean modules

| File | Content |
|------|---------|
| `DeltaYXT.lean` | definition + golden-ratio identities |
| `FixedPoint.lean` | characteristic equation & eigenvalues |
| `OmegaCrit1.lean` | $\Omega_{\mathrm{crit},1}=\delta$ |
| `OmegaCrit2.lean` | $\Omega_{\mathrm{crit},2}=\delta^2$ |
| `Complementarity.lean` | sum-to-one |
| `MetabolicWindow.lean` | window predicate & non-emptiness |

All files live under `lean/EntropyCriticalValues/`.
