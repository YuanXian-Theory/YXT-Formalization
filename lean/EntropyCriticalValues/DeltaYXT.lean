/-
  YuanXian Theory — Incomplete-Ratio Constant δ_YXT
  Formalization supporting Short Treatise NO. 14
  Author: Zhenyuan Acharya, 2026

  Numerical bounds are proved by rational sandwich of √5,
  then transferred by linear arithmetic. No floating-point tactics.
-/

import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Tactic

namespace YuanXian.EntropyCriticalValues

/-- Incomplete-ratio constant (un-split constant) of YuanXian Theory.
    δ_YXT = (√5 - 1)/2 ≈ 0.6180339887  -/
noncomputable def deltaYXT : ℝ :=
  (Real.sqrt 5 - 1) / 2

/-- Golden-ratio reciprocal identity: δ = φ - 1 -/
theorem delta_eq_phi_inv :
    deltaYXT = (Real.sqrt 5 + 1)/2 - 1 := by
  unfold deltaYXT
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

/-! ### Rational sandwich for √5

  We use the tight rational bounds
    2236/1000 < √5 < 2237/1000
  which are equivalent to
    (2236/1000)² < 5 < (2237/1000)².
-/

private lemma sq_2236_lt_5 :
    ((2236 : ℝ) / 1000) ^ 2 < 5 := by norm_num

private lemma sq_2237_gt_5 :
    (5 : ℝ) < ((2237 : ℝ) / 1000) ^ 2 := by norm_num

/-- Strict rational lower and upper bounds for √5. -/
theorem sqrt5_bounds :
    (2236 / 1000 : ℝ) < Real.sqrt 5 ∧ Real.sqrt 5 < (2237 / 1000 : ℝ) := by
  constructor
  · -- lower bound: a < √5  ⇔  a² < 5  (a > 0)
    have ha_pos : (0 : ℝ) < 2236 / 1000 := by norm_num
    exact (Real.lt_sqrt ha_pos.le).mpr sq_2236_lt_5
  · -- upper bound: √5 < b  ⇔  5 < b²  (b > 0)
    have hb_pos : (0 : ℝ) < 2237 / 1000 := by norm_num
    exact (Real.sqrt_lt hb_pos.le).mpr sq_2237_gt_5

/-- Numerical bounds for δ itself:
    0.618 < δ < 0.619  (written as rationals 618/1000, 619/1000). -/
theorem delta_bounds :
    (618 / 1000 : ℝ) < deltaYXT ∧ deltaYXT < (619 / 1000 : ℝ) := by
  unfold deltaYXT
  have hs := sqrt5_bounds
  constructor
  · -- (√5 - 1)/2 > 618/1000  ⇔  √5 > 2236/1000
    linarith [hs.1]
  · -- (√5 - 1)/2 < 619/1000  ⇔  √5 < 2237/1000
    linarith [hs.2]

/-- Numerical bounds for δ²:
    0.381 < δ² < 0.3821. -/
theorem delta_sq_bounds :
    (381 / 1000 : ℝ) < deltaYXT ^ 2 ∧ deltaYXT ^ 2 < (3821 / 10000 : ℝ) := by
  -- Use δ² = 1 - δ together with delta_bounds
  have hδ := delta_bounds
  have hsq := delta_sq_eq
  constructor
  · -- lower: 1 - δ > 381/1000  ⇔  δ < 619/1000
    linarith [hsq, hδ.2]
  · -- upper: 1 - δ < 3821/10000  ⇔  δ > 6179/10000
    -- We already have δ > 618/1000 = 6180/10000 > 6179/10000
    have : (618 / 1000 : ℝ) = 6180 / 10000 := by norm_num
    linarith [hsq, hδ.1]

end YuanXian.EntropyCriticalValues
