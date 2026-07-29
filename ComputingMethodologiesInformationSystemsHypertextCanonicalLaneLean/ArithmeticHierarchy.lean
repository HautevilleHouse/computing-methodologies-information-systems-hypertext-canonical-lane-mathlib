import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean

structure ArithmeticHierarchyPackage where
  sigmaZeroRecursive : Prop
  sigmaOneComputablyEnumerable : Prop
  piOneCoEnumerable : Prop
  jumpOperatorDefined : Prop
  haltingProblemSigmaOne : Prop

structure ArithmeticHierarchyEvidence (A : ArithmeticHierarchyPackage) where
  sigmaZeroRecursiveClosed : A.sigmaZeroRecursive
  sigmaOneComputablyEnumerableClosed : A.sigmaOneComputablyEnumerable
  piOneCoEnumerableClosed : A.piOneCoEnumerable
  jumpOperatorDefinedClosed : A.jumpOperatorDefined
  haltingProblemSigmaOneClosed : A.haltingProblemSigmaOne

def ArithmeticHierarchyClosed (A : ArithmeticHierarchyPackage) : Prop :=
  A.sigmaZeroRecursive ∧ A.sigmaOneComputablyEnumerable ∧ A.piOneCoEnumerable ∧ A.jumpOperatorDefined ∧ A.haltingProblemSigmaOne

theorem arithmetic_hierarchy_closed_from_evidence (A : ArithmeticHierarchyPackage) (E : ArithmeticHierarchyEvidence A) :
    ArithmeticHierarchyClosed A := by
  exact And.intro E.sigmaZeroRecursiveClosed
    (And.intro E.sigmaOneComputablyEnumerableClosed
      (And.intro E.piOneCoEnumerableClosed
        (And.intro E.jumpOperatorDefinedClosed E.haltingProblemSigmaOneClosed)))

end ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean
end HautevilleHouse