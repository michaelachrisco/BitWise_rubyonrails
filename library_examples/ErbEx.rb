#from http://rrn.dk/rubys-erb-templating-system Used for html in ruby and templating

require 'erb'
class DummyController
  def index
    @name = 'Mike'
  end
  def get_binding # this is only a helper method to access the objects binding method
    binding
  end
end

controller = DummyController.new
controller.index
template_string = "Welcome <%= @name %>" # this string would typically be read from a template file
template = ERB.new template_string
puts template.result(controller.get_binding) # prints "Welcome Mike"
