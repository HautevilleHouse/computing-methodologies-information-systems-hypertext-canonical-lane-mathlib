import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean

structure ComputingMachine where
  carrier : Type
  alphabet : Type
  transitionFunction : carrier → alphabet → carrier × alphabet × Bool
  haltingStates : Set carrier

structure ComputingAdmittedObject where
  machine : ComputingMachine
  universalSimulation : Prop
  haltingProblemUndecidable : Prop
  conclusion : universalSimulation ∧ haltingProblemUndecidable

structure ComputingEndgameState where
  object : ComputingAdmittedObject

def ComputingWitnessClosed (O : ComputingAdmittedObject) : Prop :=
  O.conclusion

end ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean
end HautevilleHouse