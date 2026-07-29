import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean

structure NpCompletenessPackage where
  problem : Type
  certificate : Type
  verificationAlgorithm : problem → certificate → Bool
  polynomialTimeVerification : Prop
  reductionsToKnownNpComplete : Prop
  reductionClosed : Prop
  reductionClosedTerm : reductionClosed

structure NpCompletenessEvidence (N : NpCompletenessPackage) where
  polynomialTimeVerificationClosed : N.polynomialTimeVerification
  reductionClosedClosed : N.reductionClosed

def NpCompletenessClosed (N : NpCompletenessPackage) : Prop :=
  N.polynomialTimeVerification ∧ N.reductionClosed

theorem np_completeness_closed_from_evidence (N : NpCompletenessPackage)
    (E : NpCompletenessEvidence N) : NpCompletenessClosed N :=
  And.intro E.polynomialTimeVerificationClosed E.reductionClosedClosed

end ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean
end HautevilleHouse