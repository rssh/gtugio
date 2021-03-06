grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
//grails.project.war.file = "target/${appName}-${appVersion}.war"
grails.project.dependency.resolution = {
    // inherit Grails' default dependencies
    inherits("global") {
        // uncomment to disable ehcache
        // excludes 'ehcache'
    }
    log "warn" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
    repositories {
        grailsPlugins()
        grailsHome()
        grailsCentral()
		mavenCentral()

        // uncomment the below to enable remote dependency resolution
        // from public Maven repositories
        //mavenLocal()
        //mavenCentral()
        //mavenRepo "http://snapshots.repository.codehaus.org"
        //mavenRepo "http://repository.codehaus.org"
        //mavenRepo "http://download.java.net/maven/2/"
        //mavenRepo "http://repository.jboss.com/maven2/"
    }
    dependencies {
        //compile ('org.codehaus.groovy.modules.http-builder:http-builder:0.5.0') {
    		//excludes 'xml-apis', 'xercesImpl', 'xmlParserAPIs'
    	//}
		
		runtime ('org.openid4java:openid4java:0.9.5', 'mysql:mysql-connector-java:5.1.13') {
			excludes 'xml-apis', 'xercesImpl', 'xmlParserAPIs'
		}

//		runtime 'jdom:jdom:1.0'
		//'org.codehaus.groovy.modules.http-builder:http-builder:0.5.0'
//		'com.mysql:mysql-connector-java:5.1.5',
    }
}
