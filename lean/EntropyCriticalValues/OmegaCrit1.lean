/-
  Ω_crit,1 = δ_YXT  (maximal entropy for self-referential closed chain)
-/

import Mathlib.Data.Real.Basic
import Mathlib.Tactic
import YuanXian.EntropyCriticalValues.DeltaYXT
import YuanXian.EntropyCriticalValues.FixedPoint

namespace YuanXian.EntropyCriticalValues

/-- First entropy critical value -/
noncomputable def OmegaCrit1 : ℝ := deltaYXT

/-- Main theorem of the paper for the first critical value -/
theorem omega_crit1_eq_delta :
    OmegaCrit1 = deltaYXT := rfl

/-- Derived from stability margin: Ω_crit,1 = 1 - δ² -/
theorem omega_crit1_from_margin :
    OmegaCrit1 = 1 - deltaYXT ^ 2 := by
  rw [omega_crit1_eq_delta, stability_margin]

/-- Numerical statement used in the paper -/
theorem omega_crit1_approx :
    0.618 < OmegaCrit1 ∧ OmegaCrit1 < 0.619 := by
  simpa [OmegaCrit1] using delta_bounds

end YuanXian.EntropyCriticalValues
