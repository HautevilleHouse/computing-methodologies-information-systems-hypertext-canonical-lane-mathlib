import canonicalLaneMathlib.AdmissibleClass
import ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean.BridgeLemmas
import ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean

def ConstrainedComputingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_computing_endgame (A : AdmissibleClass) :
    ConstrainedComputingClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean
end HautevilleHouse