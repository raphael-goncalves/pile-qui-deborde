package pile.qui.deborde

import java.util.Date;

class Comment {
	
	String body
	Date date

	static belongsTo = [author:Member]
	
	static constraints = {
		body(blank:false)
		date(blank:false)
	}
	
}