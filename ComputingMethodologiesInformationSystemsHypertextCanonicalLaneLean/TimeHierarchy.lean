import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean

structure TimeHierarchyPackage where
  timeHierarchyTheorem : Prop
  spaceHierarchyTheorem : Prop
  nondeterministicTimeHierarchy : Prop
  fixedPolynomialTimeSep : Prop

structure TimeHierarchyEvidence (T : TimeHierarchyPackage) where
  timeHierarchyTheoremClosed : T.timeHierarchyTheorem
  spaceHierarchyTheoremClosed : T.spaceHierarchyTheorem
  nondeterministicTimeHierarchyClosed : T.nondeterministicTimeHierarchy
  fixedPolynomialTimeSepClosed : T.fixedPolynomialTimeSep

def TimeHierarchyClosed (T : TimeHierarchyPackage) : Prop :=
  T.timeHierarchyTheorem ∧ T.spaceHierarchyTheorem ∧ T.nondeterministicTimeHierarchy ∧ T.fixedPolynomialTimeSep

theorem time_hierarchy_closed_from_evidence (T : TimeHierarchyPackage) (E : TimeHierarchyEvidence T) :
    TimeHierarchyClosed T := by
  exact And.intro E.timeHierarchyTheoremClosed
    (And.intro E.spaceHierarchyTheoremClosed
      (And.intro E.nondeterministicTimeHierarchyClosed E.fixedPolynomialTimeSepClosed))

end ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean
end HautevilleHouse