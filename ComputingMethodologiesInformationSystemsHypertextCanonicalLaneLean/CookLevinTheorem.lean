import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean

structure CookLevinTheoremPackage where
  satIsNPCompleteProof : Prop
  reductionConstruction : Prop
  turingMachineSimulation : Prop
  booleanFormulaEncoding : Prop
  polynomialTimeReduction : Prop

structure CookLevinTheoremEvidence (C : CookLevinTheoremPackage) where
  satIsNPCompleteProofClosed : C.satIsNPCompleteProof
  reductionConstructionClosed : C.reductionConstruction
  turingMachineSimulationClosed : C.turingMachineSimulation
  booleanFormulaEncodingClosed : C.booleanFormulaEncoding
  polynomialTimeReductionClosed : C.polynomialTimeReduction

def CookLevinTheoremClosed (C : CookLevinTheoremPackage) : Prop :=
  C.satIsNPCompleteProof ∧ C.reductionConstruction ∧ C.turingMachineSimulation ∧ C.booleanFormulaEncoding ∧ C.polynomialTimeReduction

theorem cook_levin_theorem_closed_from_evidence (C : CookLevinTheoremPackage) (E : CookLevinTheoremEvidence C) :
    CookLevinTheoremClosed C := by
  exact And.intro E.satIsNPCompleteProofClosed
    (And.intro E.reductionConstructionClosed
      (And.intro E.turingMachineSimulationClosed
        (And.intro E.booleanFormulaEncodingClosed E.polynomialTimeReductionClosed)))

end ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean
end HautevilleHouse