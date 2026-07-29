import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean

structure HypertextSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure HypertextAdmittedObject where
  space : HypertextSpace
  complexityClass : Prop
  completeForClass : Prop
  conclusion : complexityClass

def HypertextWitnessClosed (O : HypertextAdmittedObject) : Prop :=
  O.complexityClass

end ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean
end HautevilleHouse
