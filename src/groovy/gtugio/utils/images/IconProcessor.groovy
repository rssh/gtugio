package gtugio.utils.images

class IconProcessor implements ImageProcessor {

	def private imageTool

	def private errcode

	def IconProcessor(bytes) {
		this.imageTool = new ImageTool()
		imageTool.load(bytes)
	}

	def String process() {
		this.imageTool.writerResult("~/gtugio_storage/${user.id}/icon.png", "PNG")
		return "/path"
	}

	def boolean validate() {
		if (imageTool.getWidth() > 32 || imageTool.getHeight() > 32) {
			this.errcode = ICON_SIZE_EXCEEDS
			return false
		}

		return true
	}

	def Integer errcode() {
		this.errcode
	}
}

