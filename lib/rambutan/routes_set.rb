require 'http_router'
 
module Rambutan
  class RoutesSet
    def initialize(&block)
      @http_router = HttpRouter.new
      self.instance_eval(&block) if block_given?
    end
  
    ['get', 'post', 'put', 'delete'].each do |http_method|
      define_method(http_method.to_sym) do |hash|
        controller, action = hash.values.first.split('#')
        controller_class = Module.const_get(controller.capitalize + "Controller")
        @http_router.send(http_method, hash.keys.first).to(controller_class.new(action))
      end
    end
  
    def router
      @http_router
    end
  end
end