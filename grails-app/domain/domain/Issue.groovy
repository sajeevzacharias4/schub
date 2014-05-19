package domain

class Issue {
String title
byte[] filePayload

static belongsTo=Condition

    static constraints = {
title(blank:false, nullable: false)
    }
	static mapping={
		columns{
		filePayload type:'blob'
			}
		}
}
