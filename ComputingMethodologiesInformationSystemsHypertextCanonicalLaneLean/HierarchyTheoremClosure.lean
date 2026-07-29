import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean

structure TimeHierarchyPackage where
  timeConstructible : Prop
  separation : Prop
  diagonalization : Prop

structure TimeHierarchyEvidence (T : TimeHierarchyPackage) where
  timeConstructibleClosed : T.timeConstructible
  separationClosed : T.separation
  diagonalizationClosed : T.diagonalization

def TimeHierarchyClosed (T : TimeHierarchyPackage) : Prop :=
  T.timeConstructible ∧ T.separation ∧ T.diagonalization

theorem time_hierarchy_closed_from_evidence (T : TimeHierarchyPackage) 
    (E : TimeHierarchyEvidence T) : TimeHierarchyClosed T := by
  exact And.intro E.timeConstructibleClosed
    (And.intro E.separationClosed E.diagonalizationClosed)

structure SpaceHierarchyPackage where
  spaceConstructible : Prop
  separation : Prop
  diagonalization : Prop

structure SpaceHierarchyEvidence (S : SpaceHierarchyPackage) where
  spaceConstructibleClosed : S.spaceConstructible
  separationClosed : S.separation
  diagonalizationClosed : S.diagonalization

def SpaceHierarchyClosed (S : SpaceHierarchyPackage) : Prop :=
  S.spaceConstructible ∧ S.separation ∧ S.diagonalization

theorem space_hierarchy_closed_from_evidence (S : SpaceHierarchyPackage) 
    (E : SpaceHierarchyEvidence S) : SpaceHierarchyClosed S := by
  exact And.intro E.spaceConstructibleClosed
    (And.intro E.separationClosed E.diagonalizationClosed)

end ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean
end HautevilleHouse