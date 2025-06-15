def Psi_longing (t r : ℝ) : ℂ :=
  complex.exp (complex.I * 2 * real.pi * 0.1 * t) /
  (1 + (r / 0.5)^2 : ℂ)

def Psi_fury (t r : ℝ) : ℂ :=
  complex.exp (complex.I * 2 * real.pi * 0.5 * t) *
  (real.sin (10 * r) * real.exp (-0.5 * r^2) : ℂ)

def Psi_resolve (t x : ℝ) : ℂ :=
  complex.exp (complex.I * (2 * real.pi * 0.3 * t - 0.1 * x))
