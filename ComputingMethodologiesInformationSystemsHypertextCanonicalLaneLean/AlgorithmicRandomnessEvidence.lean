import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean

structure AlgorithmicRandomnessPackage where
  martingale : Type
  selectionFunction : Type
  randomnessDefinition : Prop
  constructiveMeasure : Prop
  kolmogorovComplexity : Prop

structure AlgorithmicRandomnessEvidence (A : AlgorithmicRandomnessPackage) where
  randomnessDefinitionClosed : A.randomnessDefinition
  constructiveMeasureClosed : A.constructiveMeasure
  kolmogorovComplexityClosed : A.kolmogorovComplexity

def AlgorithmicRandomnessClosed (A : AlgorithmicRandomnessPackage) : Prop :=
  A.randomnessDefinition ∧ A.constructiveMeasure ∧ A.kolmogorovComplexity

theorem algorithmic_randomness_closed_from_evidence (A : AlgorithmicRandomnessPackage) 
    (E : AlgorithmicRandomnessEvidence A) : AlgorithmicRandomnessClosed A := by
  exact And.intro E.randomnessDefinitionClosed
    (And.intro E.constructiveMeasureClosed E.kolmogorovComplexityClosed)

end ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean
end HautevilleHouse