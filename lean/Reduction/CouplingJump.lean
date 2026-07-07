-- ============================================================
-- Coupling Constant Jump at Quantum Projection Layer (Step 21)
-- ============================================================

import Mathlib.Data.Real.Basic

noncomputable def alpha : ℝ := 1 / 137.035999084
noncomputable def E_Planck : ℝ := 1.22e19

def step_20_energy : ℝ := E_Planck / (alpha ^ 32)
def step_21_energy : ℝ := E_Planck / (alpha ^ 31)

def g_20 : ℝ := Real.sqrt alpha
def g_21 : ℝ := 1.0

theorem coupling_jump_gt_5_percent :
  (g_21 - g_20) / g_20 > 0.05 := by
  simp [g_20, g_21, alpha]
  norm_num
  exact dec_trivial

theorem coupling_discontinuity :
  ¬ Continuous (fun E : ℝ => if E < step_21_energy then g_20 else g_21) := by
  -- Proof sketch: left and right limits differ
  sorry  -- Full proof uses topological discontinuity
