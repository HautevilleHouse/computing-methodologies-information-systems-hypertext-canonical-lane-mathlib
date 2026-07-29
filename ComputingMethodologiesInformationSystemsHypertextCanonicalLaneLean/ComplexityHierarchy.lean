import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean

structure ComplexityHierarchy where
  timeComplexityClasses : Type
  spaceComplexityClasses : Type
  inclusionProofs : timeComplexityClasses → spaceComplexityClasses → Prop
  strictInclusionExamples : Prop
  hierarchyTheoremsProved : Prop
  hierarchyTheoremsProvedTerm : hierarchyTheoremsProved

structure ComplexityHierarchyEvidence (C : ComplexityHierarchy) where
  hierarchyTheoremsProvedClosed : C.hierarchyTheoremsProved
  strictInclusionExamplesClosed : C.strictInclusionExamples

def ComplexityHierarchyClosed (C : ComplexityHierarchy) : Prop :=
  C.hierarchyTheoremsProved ∧ C.strictInclusionExamples

theorem complexity_hierarchy_closed_from_evidence (C : ComplexityHierarchy)
    (E : ComplexityHierarchyEvidence C) : ComplexityHierarchyClosed C :=
  And.intro E.hierarchyTheoremsProvedClosed E.strictInclusionExamplesClosed

end ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean
end HautevilleHouse