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
echo "*.olean" > .gitignore, and decay at infinity.used to prove properties such
mkdir: cannot create directory ‘aurion-waveforms’: File exists
Reinitialized existing Git repository in C:/Users/brayd/aurion-waveforms/.git/

brayd@DESKTOP-5R34Q61 MINGW64 ~/aurion-waveforms (master)
$ # Create and enter your new folder
mkdir aurion-waveforms
cd aurion-waveforms

# Initialize Git
git init

# Create Lean file
cat > waveforms.lean << 'EOF'
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
echo "*.olean" > .gitignore, and decay at infinity.used to prove properties such
Initialized empty Git repository in C:/Users/brayd/aurion-waveforms/aurion-wavef
orms/.git/

brayd@DESKTOP-5R34Q61 MINGW64 ~/aurion-waveforms/aurion-waveforms (master)
$ cd ~/aurion-waveforms
rm -r aurion-waveforms
cat > waveforms.lean << 'EOF'
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
