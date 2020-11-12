component
extends="taffy.core.resource"
taffy_uri="/authors"
{

	function get(){
		var authors = queryExecute("select * from author");
		return rep(queryToArray(authors));
	}

}
