package gtugio.utils

class TextUtils {
	
	def static truncateWords = { text, num ->
		def words = text.split(' ')
		if (words.size() > num)
			words = words[0..num-1]

		words.join(' ')
	}
	
	def static stripTags = { text ->
		text.replaceAll("<(.|\n)*?>", '')
	}

	def static safeMarkup = { text ->
		text
	}
}
