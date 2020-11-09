<cfoutput>
	<h1>The current time is: #dateTimeFormat(now(), 'yyyy-mm-dd hh:nn:ss tt')#</h1>
</cfoutput>

<cfquery name="data">
	select * from author
</cfquery>

<cfdump var="#data#" />

<br/><br/><br/>
Lucee is functional and we're able to pull data from the database.
