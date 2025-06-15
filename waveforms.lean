import data.complex.exponential
import analysis.special_functions.exp_log
import tactic

open complex real

-- Definition: A "longing" wave, oscillating in time, decaying in space
def Psi_longing (t r : ℝ) : ℂ :=
  complex.exp (complex.I * 2 * real.pi * 0.1 * t) /
  (1 + (r / 0.5)^2 : ℂ)

-- Lemma: The absolute value of Psi_longing is always ≤ 1
lemma Psi_longing_bounded (t r : ℝ) :
  complex.abs (Psi_longing t r) ≤ 1 :=
begin
  rw [Psi_longing, complex.abs_div, complex.abs_exp, abs_of_real],
  simp,
  have denom_pos : 0 < (1 + (r / 0.5)^2),
  { linarith [sq_nonneg (r / 0.5)] },
  rw complex.abs_of_real denom_pos.ne',
  simp,
  apply div_le_one,
  { exact denom_pos, },
  { linarith [sq_nonneg (r / 0.5)] }
end

-- Definition: A "fury" wave, oscillating tightly within bounds
def Psi_fury (t r : ℝ) : ℂ :=
  complex.exp (complex.I * 2 * real.pi * 0.5 * t) *
  (real.sin (10 * r) * real.exp (-0.5 * r^2) : ℂ)

-- TODO: Prove boundedness of Psi_fury
-- Plan:
-- 1. |exp(iωt)| = 1
-- 2. |sin(10r)| ≤ 1
-- 3. |exp(-0.5 r²)| ≤ 1
-- Therefore |Psi_fury| ≤ 1 for all t, r
