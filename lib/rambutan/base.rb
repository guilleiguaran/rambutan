module Rambutan
  class Base
    attr_reader :env, :request, :response
  
    def initialize(method)
      @method = method
    end
  
    def call(env)
      @env = env
      @request = Rack::Request.new(env)
      @response = Rack::Response.new
  
      returned = public_send(@method)
      @response.write(returned) if returned.is_a?(String)
      @response.finish
    end
  
    def render(template)
      template = ERB.new(File.read("views/#{template}.erb"))
      template.result(binding)
    end
  
    def params
      @env['router.params'].merge(@request.params)
    end
  
    def redirect(args)
      @response.redirect(*args)
    end
  end
end