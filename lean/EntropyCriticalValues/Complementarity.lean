/-
  Complementarity Ω_crit,1 + Ω_crit,2 = 1
  (information conservation under dimensional reduction)
-/

import Mathlib.Data.Real.Basic
import Mathlib.Tactic
import YuanXian.EntropyCriticalValues.OmegaCrit1
import YuanXian.EntropyCriticalValues.OmegaCrit2

namespace YuanXian.EntropyCriticalValues

/-- Core complementarity relation of the paper. -/
theorem omega_complementarity :
    OmegaCrit1 + OmegaCrit2 = 1 := by
  rw [OmegaCrit1, OmegaCrit2]
  exact delta_sq_add_delta

/-- Equivalent form used in metabolic-window statements. -/
theorem omega_sum_one :
    OmegaCrit1 + OmegaCrit2 = (1 : ℝ) := omega_complementarity

end YuanXian.EntropyCriticalValues
