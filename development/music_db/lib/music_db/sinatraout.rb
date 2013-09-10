require 'sinatra'

# Takes a string and serves it as a webpage"
# @param [String] outY 
  def webify(outY)
	get '/' do
		"#{outY}"
	end
  end

end
