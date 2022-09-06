Instance: Contact
InstanceOf: StructureDefinition
Description: "Contacts: Address and Telecoms"
Title: "Contact"
Usage: #definition
* publisher = "eHealth Network"
* status = #draft
* url = "http://hl7.eu/fhir/ig/idea4rc/StructureDefinition/Contact"
* name = "Contact"
* title = "Contact"
* status = #draft
* experimental = true
* description = "Contacts: Address and Telecoms"
* version = "0.0.1"
* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "FHIR"
* mapping[1].identity = "cda"
* mapping[1].uri = "http://hl7.org/v3/cda"
* mapping[1].name = "CDA (R2)"
* kind = #logical
* abstract = true
* type = "Contact"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization
* differential.element[0].id = "Contact"
* differential.element[0].path = "Contact"
* differential.element[0].short = "Contacts"
* differential.element[0].definition = "Contacts: Address and Telecoms"
* differential.element[0].min = 1
* differential.element[0].max = "1"
* differential.element[1].id = "Contact.address"
* differential.element[1].path = "Contact.address"
* differential.element[1].short = "Address"
* differential.element[1].definition = "Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, ZIP code, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."
* differential.element[1].min = 0
* differential.element[1].max = "*"
* differential.element[1].type.code = #Address
* differential.element[2].id = "Contact.telecom"
* differential.element[2].path = "Contact.telecom"
* differential.element[2].short = "Telecom"
* differential.element[2].definition = "Telecommunication contact information (addresses) associated to a person. Multiple telecommunication addresses might be provided."
* differential.element[2].min = 0
* differential.element[2].max = "*"
* differential.element[2].type.code = #Telecom
// 
