Profile: ObservationTobaccoUseI4rc
Parent: Observation
Id: observation-tobaccouse-eu-i4rc
Title: "Observation: tobacco use"
Description: "This profile constrains the Observation resource to represent Tobacco use assessment for the purpose of the IDEA4RC project."
* code 1..1
* code = $loinc#88028-6 "Tobacco use panel"

* insert SubjectRules

/* * effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing." */
* value[x] 0..0

* component 1..
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component code"

* component contains smokingStatus 0..1 
* component[smokingStatus]
  * code = $loinc#72166-2 "Tobacco smoking status"
  * valueCodeableConcept from VsCurrentSmokingStatusI4RC (required) // value set to be revised

* component contains tobaccoProduct 0..1 
* component[tobaccoProduct]
  * code = $loinc#81228-9 "Tobacco product"
  * valueCodeableConcept from VsTobaccoProductI4RC (required) // value set to be revised

* component contains numberPerDay 0..1 
* component[numberPerDay]
  * code = $loinc#64218-1 "How many cigarettes do you smoke per day now" // to be checked 
  // there is also the 8663-7 Cigarettes smoked current (pack per day) - Reported
  * value[x] only Quantity 
// Cigarettes/cigars smoked per day
// the descriptions ays Number of cigarettes or cigars smoked in one day. Together with the information of number of years as a smoker, these information will allow to automatically calculate the pack year.

* component contains yearsAsSmoker 0..1 
* component[yearsAsSmoker]
  * code = $loinc#88029-4 "Tobacco use duration" 
  // there is also the 8663-7 Cigarettes smoked current (pack per day) - Reported
  * value[x] only Quantity
  * valueQuantity
    * code 1..
    * code = #a
    * system = $ucum
    * value 1..