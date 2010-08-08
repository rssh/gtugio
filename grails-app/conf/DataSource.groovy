hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "create-drop"
            url = "jdbc:hsqldb:mem:devDB"
        }
    }
    test {
        dataSource {
            dbCreate = "create-drop"
            url = "jdbc:hsqldb:mem:testDb"
        }
    }
    preproduction {
		dataSource {
			pooled = true
			dbCreate = "update"
			url = "jdbc:mysql://localhost/gtugio_preprod?useUnicode=true&characterEncoding=UTF-8"
			driverClassName = "com.mysql.jdbc.Driver"
			dialect= gtugio.core.hibernate.MySQL5UTF8InnoDBDialect
			username = "gtugio"
			password = "gtugio_preprod"
		}
	}
    production {
        dataSource {
        }
    }
}
