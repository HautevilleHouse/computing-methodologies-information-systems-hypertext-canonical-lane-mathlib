import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean

structure AlgorithmicRandomness where
  binarySequence : ℕ → ℕ
  kolmogorovComplexityBound : ℕ → ℕ
  incompressibility : Prop
  incompressibilityTerm : incompressibility
  passesStatisticalTests : Prop
  passesStatisticalTestsTerm : passesStatisticalTests

structure AlgorithmicRandomnessEvidence (R : AlgorithmicRandomness) where
  incompressibilityClosed : R.incompressibility
  passesStatisticalTestsClosed : R.passesStatisticalTests

def AlgorithmicRandomnessClosed (R : AlgorithmicRandomness) : Prop :=
  R.incompressibility ∧ R.passesStatisticalTests

theorem algorithmic_randomness_closed_from_evidence (R : AlgorithmicRandomness)
    (E : AlgorithmicRandomnessEvidence R) : AlgorithmicRandomnessClosed R :=
  And.intro E.incompressibilityClosed E.passesStatisticalTestsClosed

end ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean
end HautevilleHouse