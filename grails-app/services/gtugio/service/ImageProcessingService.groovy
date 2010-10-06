package gtugio.service

import gtugio.utils.images.ImageProcessor

class ImageProcessingService {

	static scope = "request"

	def process(ImageProcessor processor) {
		return processor.process()
	}
}
