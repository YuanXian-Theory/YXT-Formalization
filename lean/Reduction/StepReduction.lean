-- ============================================================
-- 35-Step Dimensional Reduction Framework (Lean 4)
-- ============================================================

import Mathlib.Data.Real.Basic
import Mathlib.Data.Fin.Basic

noncomputable def alpha : ℝ := 1 / 137.035999084

abbrev T64 : Type := Fin 64 → ℝ

-- Step definition with monotonic truncation
def reduction_step (step : ℕ) : Set (Fin 64 → ℤ) :=
  if step ≤ 20 then
    {k | ∑ i, (↑(k i) : ℝ) ^ 2 ≤ step ^ 2 * alpha ^ (-2 * step)}
  else if step ≤ 25 then
    {k | ∑ i, (↑(k i) : ℝ) ^ 2 ≤ step ^ 3 * alpha ^ (-step)}
  else
    {k | ∑ i, (↑(k i) : ℝ) ^ 2 ≤ 64}

-- Theorem: Spectral truncation is monotone
theorem spectral_truncation_monotone (step : ℕ) (h : step < 35) :
  reduction_step step ⊆ reduction_step (step + 1) := by
  intro k hk
  simp [reduction_step] at hk ⊢
  cases h_step : step ≤ 20
  · simp [h_step] at hk ⊢
    apply le_trans hk
    simp [Nat.pow_succ, mul_assoc]
    apply mul_le_mul
    · exact Nat.zero_le _
    · exact le_of_lt (Nat.lt_succ_self _)
    · exact Nat.zero_le _
    · exact Real.one_le_pow_of_one_le (le_of_lt alpha_pos) _
  · simp [h_step] at hk ⊢
    apply le_trans hk
    simp [Nat.pow_succ, mul_assoc]
    apply mul_le_mul
    · exact Nat.zero_le _
    · exact le_of_lt (Nat.lt_succ_self _)
    · exact Nat.zero_le _
    · exact Real.one_le_pow_of_one_le (le_of_lt alpha_pos) _
where
  alpha_pos : alpha > 0 := by
    simp [alpha]
    norm_num
