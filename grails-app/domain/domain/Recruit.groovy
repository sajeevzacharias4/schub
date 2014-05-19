package domain

class Recruit {
	String name
	String type
	String contactDetails
	int disclosureLevel
	String communicationChannel
	String communicationFrequency
	byte[] filePayload
    static constraints = {
    }

	static mapping={
		columns{
		filePayload type:'blob'
			}
		}
}
