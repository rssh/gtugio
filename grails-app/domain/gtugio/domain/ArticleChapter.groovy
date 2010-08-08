package gtugio.domain

class ArticleChapter {

	String name
	String slug

	static constraints = {
		name(blank:false)
		slug(blank:false, unique:true)
	}
}
