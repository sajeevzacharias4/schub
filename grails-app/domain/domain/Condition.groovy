package domain

class Condition {
	String title
	byte[] filePayload
	static hasMany=[issues:Issue]
    	static constraints = {
 		title(blank:false, nullable: false)
		filePayload(nullable:true)

   		}
	static mapping={
		columns{
		filePayload type:'blob'
			}
		}
}
