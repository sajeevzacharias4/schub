package domain.goal

class Discrete {
	String title
	String milestone
	byte[] filePayload
    static constraints = {
	title(blank:false, nullable: false)
	milestone(blank:false, nullable: false)
    }
	static mapping={
		columns{
		filePayload type:'blob'
			}
		}
}
