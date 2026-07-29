import canonicalLaneMathlib.AdmissibleClass
import ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean

structure AdmissibleClass where
  object : HypertextAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HypertextWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean
end HautevilleHouse
