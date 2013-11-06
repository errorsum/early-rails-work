module ApplicationHelper

	def hidden_div_if(condition, attributes = {}, &block)
		#we pass into the helper a condition, attributes, and a block
		if condition
			attributes["style"] = "display: none"
			#if our condition is true, we add "style" to the attributes hash and make its key "display:none"
		end
		content_tag("div", attributes, &block)
		#content tag wraps the output of the helper in a div tag with the attributes in our hash and the block we already specified.
	end
end
