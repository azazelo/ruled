module Ruled
  module ActsAsRuled
    extend ActiveSupport::Concern
 
    included do
    end
 
    module ClassMethods
      def acts_as_ruled(options = {})
        puts "hello form acts as ruled"
        # your code will go here
      end
    end
  end
end
 
ActiveRecord::Base.send :include, Ruled::ActsAsRuled
