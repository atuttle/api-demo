<cfscript>
	this.datasources["demodb"] = {
		class: 'com.mysql.cj.jdbc.Driver'
	 , bundleName: 'com.mysql.cj'
	 , bundleVersion: '8.0.19'
	 , connectionString: 'jdbc:mysql://demodb:3306/blog?useUnicode=true&characterEncoding=UTF8&serverTimezone=US/Eastern&maxReconnects=3&allowMultiQueries=true&useLegacyDatetimeCode=true'
	 , username: 'root'
	 , password: "encrypted:b85e973a47a03c35cb67cc1c172fb32010cd3e7ae5ec4d56"

	 // optional settings
	 , clob:true // default: false
	 , connectionLimit:5 // default:-1
	 , connectionTimeout:20 // default: 1; unit: minutes
	 , alwaysSetTimeout:true // default: false
	 , validate:false // default: false
	};
</cfscript>
