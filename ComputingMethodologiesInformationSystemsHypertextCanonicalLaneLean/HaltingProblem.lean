import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean

structure HaltingProblemOracle where
  oracleFunction : (ℕ → ℕ) → ℕ → Bool
  oracleCorrect : Prop
  oracleCorrectTerm : oracleCorrect

structure HaltingProblemEvidence (H : HaltingProblemOracle) where
  oracleCorrectClosed : H.oracleCorrect
  undecidabilityWitness : ℕ → ℕ
  undecidabilityWitnessTerm : (undecidabilityWitness ∉ {f | H.oracleFunction f 0 = true}) ∨ (¬∃ f, H.oracleFunction f 0 = true)

def HaltingProblemClosed (H : HaltingProblemOracle) : Prop :=
  H.oracleCorrect ∧ (∃ f : ℕ → ℕ, H.oracleFunction f 0 = true → False)

theorem halting_problem_closed_from_evidence (H : HaltingProblemOracle)
    (E : HaltingProblemEvidence H) : HaltingProblemClosed H :=
  And.intro E.oracleCorrectClosed (by
    cases E.undecidabilityWitnessTerm with
    | inl h => exact ⟨E.undecidabilityWitness, h⟩
    | inr h => exact False.elim (h ?_))

end ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean
end HautevilleHouse