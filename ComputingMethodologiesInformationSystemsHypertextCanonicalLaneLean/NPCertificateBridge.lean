import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean

structure NPCompleteCertificate where
  language : Type
  verifier : language → language → Bool
  verifierPolynomial : Prop
  primeReductionComplete : Prop
  lemmasForReduction : Prop

structure NPCompleteEvidence (C : NPCompleteCertificate) where
  verifierPolynomialClosed : C.verifierPolynomial
  primeReductionCompleteClosed : C.primeReductionComplete
  lemmasForReductionClosed : C.lemmasForReduction

def NPCompleteCertificateClosed (C : NPCompleteCertificate) : Prop :=
  C.verifierPolynomial ∧ C.primeReductionComplete ∧ C.lemmasForReduction

theorem np_complete_certificate_closed_from_evidence (C : NPCompleteCertificate) 
    (E : NPCompleteEvidence C) : NPCompleteCertificateClosed C := by
  exact And.intro E.verifierPolynomialClosed
    (And.intro E.primeReductionCompleteClosed E.lemmasForReductionClosed)

end ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean
end HautevilleHouse