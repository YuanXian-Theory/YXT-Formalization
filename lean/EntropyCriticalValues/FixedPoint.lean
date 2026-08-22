/-
  Fixed-point analysis of the self-referential iteration
  supporting Ω_crit,1 derivation (Short Treatise NO. 14)
-/

import Mathlib.Data.Real.Basic
import Mathlib.Tactic
import YuanXian.EntropyCriticalValues.DeltaYXT

namespace YuanXian.EntropyCriticalValues

/-- Characteristic polynomial of the self-referential recurrence
    x_{n+1} = δ x_n + (1-δ) x_{n-1}
    λ² - δ λ - (1-δ) = 0  -/
def charPoly (lam : ℝ) : ℝ :=
  lam^2 - deltaYXT * lam - (1 - deltaYXT)

/-- The root λ₁ = 1 satisfies the characteristic equation. -/
theorem lambda1_is_root :
    charPoly 1 = 0 := by
  unfold charPoly
  -- 1 - δ - (1 - δ) = 0
  ring

/-- The second root λ₂ = δ - 1. -/
def lambda2 : ℝ := deltaYXT - 1

theorem lambda2_is_root :
    charPoly lambda2 = 0 := by
  unfold charPoly lambda2
  -- Expand and use δ² = 1 - δ
  have h := delta_sq_eq
  ring_nf
  linarith [h]

/-- |λ₂| = 1 - δ = δ²  (decay factor). -/
theorem abs_lambda2_eq_delta_sq :
    |lambda2| = deltaYXT ^ 2 := by
  unfold lambda2
  have hneg : deltaYXT - 1 < 0 := by
    have := delta_bounds
    linarith
  rw [abs_of_neg hneg]
  linarith [delta_sq_eq]

/-- Stability margin statement used in the paper:
    Ω_max = 1 - δ² = δ. -/
theorem stability_margin :
    1 - deltaYXT ^ 2 = deltaYXT := by
  linarith [delta_sq_eq]

end YuanXian.EntropyCriticalValues
