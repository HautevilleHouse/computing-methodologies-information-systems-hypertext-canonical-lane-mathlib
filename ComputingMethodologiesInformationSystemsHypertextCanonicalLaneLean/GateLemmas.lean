import canonicalLaneMathlib.AdmissibleClass
import ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean
end HautevilleHouse
