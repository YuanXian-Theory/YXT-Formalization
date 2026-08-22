/-
  YuanXian Theory — Incomplete-Ratio Constant δ_YXT
  Formalization supporting Short Treatise NO. 14
  Author: Zhenyuan Acharya, 2026
-/

import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Tactic

namespace YuanXian.EntropyCriticalValues

/-- Incomplete-ratio constant (un-split constant) of YuanXian Theory.
    δ_YXT = (√5 - 1)/2 ≈ 0.6180339887  -/
noncomputable def deltaYXT : ℝ :=
  (Real.sqrt 5 - 1) / 2

/-- Golden-ratio reciprocal identity: δ = 1/φ = φ - 1 -/
theorem delta_eq_phi_inv :
    deltaYXT = (Real.sqrt 5 + 1)/2 - 1 := by
  unfold deltaYXT
  ring_nf
  field_simp
  ring

/-- Fundamental golden-ratio quadratic identity: δ² + δ = 1 -/
theorem delta_sq_add_delta :
    deltaYXT ^ 2 + deltaYXT = 1 := by
  unfold deltaYXT
  have h5 : (Real.sqrt 5)^2 = 5 := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 5)
  field_simp [h5]
  ring

/-- Immediate corollary: δ² = 1 - δ -/
theorem delta_sq_eq :
    deltaYXT ^ 2 = 1 - deltaYXT := by
  linarith [delta_sq_add_delta]

/-- Numerical bounds used in metabolic-window statements -/
theorem delta_bounds :
    0.618 < deltaYXT ∧ deltaYXT < 0.619 := by
  unfold deltaYXT
  -- Real.sqrt 5 ∈ (2.236, 2.237)
  have h : 2.236 < Real.sqrt 5 ∧ Real.sqrt 5 < 2.237 := by
    constructor
    · nlinarith [Real.sqrt_lt_sqrt (by norm_num : (0:ℝ) ≤ 5) (by norm_num : (2.236:ℝ)^2 < 5)]
    · nlinarith [Real.sqrt_lt_sqrt (by norm_num : (0:ℝ) ≤ 5) (by norm_num : 5 < (2.237:ℝ)^2)]
  constructor <;> linarith

/-- δ² bounds -/
theorem delta_sq_bounds :
    0.381 < deltaYXT ^ 2 ∧ deltaYXT ^ 2 < 0.3821 := by
  have h := delta_bounds
  have h2 := delta_sq_eq
  constructor <;> nlinarith

end YuanXian.EntropyCriticalValues
