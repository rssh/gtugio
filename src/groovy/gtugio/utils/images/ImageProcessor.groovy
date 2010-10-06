package gtugio.utils.images

interface ImageProcessor {

	def static Integer ICON_SIZE_EXCEEDS = 101

	def String process()

	def boolean validate()

	def Integer errcode()
}

