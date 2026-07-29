import canonicalLaneMathlib.AdmissibleClass
import ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HypertextWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ComputingMethodologiesInformationSystemsHypertextCanonicalLaneLean
end HautevilleHouse
