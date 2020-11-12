component extends="taffy.core.api" {
	this.name = "api_demo";
	this.datasource="demodb";
	this.mappings['/taffy'] = expandPath('./taffy');
	this.mappings['/resources'] = expandPath('./resources');

	include "../dsn.cfm";

}
