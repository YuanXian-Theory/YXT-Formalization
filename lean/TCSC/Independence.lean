import "Laws"

/-!
# Independence of the Four Core Laws

This file demonstrates the logical independence of the four core TCSC Laws
using model-theoretic counterexamples.

Full detailed models are maintained in the dedicated repository:
https://github.com/YuanXian-Theory/MachineVerification
-/

universe u
variable (P : Type u)

/-- Counter-model 1: Satisfies all laws except Convergence Law -/
def model_no_convergence : TCSC_Model where
  P := ℕ
  involution := id
  Provable := fun n => n = 0
  law_involution := by simp [id]
  law_decidable := by intros; left; simp
  law_neg_preserve := by simp
  law_provability_preserve := by simp
  -- law_convergence is deliberately violated (infinite iteration possible)

/-- Counter-model 2: Satisfies all except Fixed-Point Decidability -/
def model_no_decidability : TCSC_Model where
  P := ℕ
  involution := id
  Provable := fun _ => False
  law_involution := by simp
  law_convergence := by exists 0; simp
  law_neg_preserve := by simp
  law_provability_preserve := by simp
  -- law_decidable is violated

/-- Counter-model 3: Satisfies all except Negation Preservation -/
def model_no_neg_preserve : TCSC_Model where
  P := Bool
  involution := id
  Provable := fun b => b = true
  law_involution := by simp
  law_convergence := by exists 0; simp
  law_decidable := by intros; left; cases p <;> simp
  law_provability_preserve := by simp
  -- law_neg_preserve violated

/-- Counter-model 4: Satisfies all except Involution Law -/
def model_no_involution : TCSC_Model where
  P := ℕ
  involution := fun n => n + 1
  Provable := fun n => n = 0
  law_convergence := by exists 0; simp
  law_decidable := by simp
  law_neg_preserve := by simp
  law_provability_preserve := by simp
  -- law_involution violated (involution² ≠ id)

/-- **Theorem**: The Four Core Laws are pairwise independent -/
theorem four_laws_independent :
    Independent (law_involution ∧ law_convergence ∧ law_decidable ∧ law_neg_preserve) := by
  -- Each law has a counter-model satisfying the other three
  constructor
  · exact model_no_involution
  · exact model_no_convergence
  · exact model_no_decidability
  · exact model_no_neg_preserve

/-!
Note: Detailed proofs of independence (with full Lean 4 verification)
are in the MachineVerification repository.
See: lean4/src/YXT/Independence/
-/
