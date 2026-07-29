import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean

structure TuringMachineComputation where
  states : Type
  alphabet : Type
  transitionFunction : states → alphabet → states × alphabet × Bool
  initialState : states
  haltingStates : Set states
  tapeInitialized : Prop
  tapeInitializedTerm : tapeInitialized

structure TuringMachineEvidence (T : TuringMachineComputation) where
  tapeInitializedClosed : T.tapeInitialized
  transitionFunctionDefined : Prop
  transitionFunctionDefinedTerm : transitionFunctionDefined

def TuringMachineClosed (T : TuringMachineComputation) : Prop :=
  T.tapeInitialized

theorem turing_machine_closed_from_evidence (T : TuringMachineComputation) 
    (E : TuringMachineEvidence T) : TuringMachineClosed T :=
  E.tapeInitializedClosed

end ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean
end HautevilleHouse