package gtugio.service

import gtugio.domain.SiteProperty 

class PropertyService {

    static transactional = true

    def static getProperty = { propertyName ->
		def propertyObj = SiteProperty.findByName(propertyName)
		if (propertyObj == null)
			throw new IllegalArgumentException("Property " + propertyName + " not found")
		
		propertyObj.value.toString()
	}
}
