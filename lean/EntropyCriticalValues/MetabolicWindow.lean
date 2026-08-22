/-
  Metabolic (survivable) window:  Ω_crit,2 < Ω ≤ Ω_crit,1
  i.e.  0.382 < Ω ≤ 0.618
-/

import Mathlib.Data.Real.Basic
import Mathlib.Tactic
import YuanXian.EntropyCriticalValues.OmegaCrit1
import YuanXian.EntropyCriticalValues.OmegaCrit2
import YuanXian.EntropyCriticalValues.Complementarity

namespace YuanXian.EntropyCriticalValues

/-- Predicate: entropy lies inside the metabolic / survivable window -/
def InMetabolicWindow (Omega : ℝ) : Prop :=
  OmegaCrit2 < Omega ∧ Omega ≤ OmegaCrit1

/-- The window is non-empty -/
theorem metabolic_window_nonempty :
    ∃ Omega, InMetabolicWindow Omega := by
  refine ⟨ (OmegaCrit1 + OmegaCrit2) / 2, ?_ ⟩
  unfold InMetabolicWindow
  have hsum := omega_complementarity
  have h1 := omega_crit1_approx
  have h2 := omega_crit2_approx
  constructor <;> linarith

/-- Upper boundary is exactly Ω_crit,1 -/
theorem upper_boundary :
    InMetabolicWindow OmegaCrit1 := by
  unfold InMetabolicWindow
  constructor
  · have h := omega_complementarity
    have := omega_crit2_approx
    have := omega_crit1_approx
    linarith
  · le_rfl

/-- Strict lower boundary -/
theorem lower_boundary_strict :
    ¬ InMetabolicWindow OmegaCrit2 := by
  unfold InMetabolicWindow
  intro h
  exact lt_irrefl _ h.1

end YuanXian.EntropyCriticalValues
