import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean

structure ChurchTuringThesisPackage where
  turingMachineComputable : Prop
  lambdaCalculusComputable : Prop
  muRecursiveFunction : Prop
  decidableLanguages : Prop
  equivalenceProof : Prop

structure ChurchTuringThesisEvidence (C : ChurchTuringThesisPackage) where
  turingMachineComputableClosed : C.turingMachineComputable
  lambdaCalculusComputableClosed : C.lambdaCalculusComputable
  muRecursiveFunctionClosed : C.muRecursiveFunction
  decidableLanguagesClosed : C.decidableLanguages
  equivalenceProofClosed : C.equivalenceProof

def ChurchTuringThesisClosed (C : ChurchTuringThesisPackage) : Prop :=
  C.turingMachineComputable ∧ C.lambdaCalculusComputable ∧ C.muRecursiveFunction ∧ C.decidableLanguages ∧ C.equivalenceProof

theorem church_turing_thesis_closed_from_evidence (C : ChurchTuringThesisPackage) (E : ChurchTuringThesisEvidence C) :
    ChurchTuringThesisClosed C := by
  exact And.intro E.turingMachineComputableClosed
    (And.intro E.lambdaCalculusComputableClosed
      (And.intro E.muRecursiveFunctionClosed
        (And.intro E.decidableLanguagesClosed E.equivalenceProofClosed)))

end ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean
end HautevilleHouse