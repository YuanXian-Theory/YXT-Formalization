/-
  Ω_crit,2 = δ_YXT²  (threshold for entering algebraic-adaptation domain)
-/

import Mathlib.Data.Real.Basic
import Mathlib.Tactic
import YuanXian.EntropyCriticalValues.DeltaYXT
import YuanXian.EntropyCriticalValues.OmegaCrit1

namespace YuanXian.EntropyCriticalValues

/-- Second entropy critical value. -/
noncomputable def OmegaCrit2 : ℝ := deltaYXT ^ 2

/-- Main theorem: Ω_crit,2 = δ². -/
theorem omega_crit2_eq_delta_sq :
    OmegaCrit2 = deltaYXT ^ 2 := rfl

/-- Self-similar scaling: Ω_crit,2 = δ · Ω_crit,1. -/
theorem omega_crit2_self_similar :
    OmegaCrit2 = deltaYXT * OmegaCrit1 := by
  rw [OmegaCrit2, OmegaCrit1]
  ring

/-- Numerical statement. -/
theorem omega_crit2_approx :
    (381 / 1000 : ℝ) < OmegaCrit2 ∧ OmegaCrit2 < (3821 / 10000 : ℝ) := by
  simpa [OmegaCrit2] using delta_sq_bounds

end YuanXian.EntropyCriticalValues
