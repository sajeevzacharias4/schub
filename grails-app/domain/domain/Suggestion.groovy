package domain

class Suggestion {
	String name
	String opinion
	byte[] filePayload
	
    static constraints = {
    }

	static mapping={
		columns{
		filePayload type:'blob'
			}
		}
}
