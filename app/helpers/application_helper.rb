module ApplicationHelper
	def coderay text
		CodeRay.scan(text, :ruby).div(css: :class)
	end
end
