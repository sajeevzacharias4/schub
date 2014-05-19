package domain.goal

class Continuous {
	String title
	int minValue
	int maxValue
	byte[] filePayload
    static constraints = {
	title(blank:false, nullable: false)
    }
	static mapping={
		columns{
		filePayload type:'blob'
			}
		}
}
