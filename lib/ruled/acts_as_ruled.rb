module Ruled
  module ActsAsRuled
    extend ActiveSupport::Concern
 
    included do
    end
 
    module ClassMethods
      def acts_as_ruled(options = {})
        # your code will go here
      end
    end
  end
end
 
ActiveRecord::Base.send :include, Ruled::ActsAsRuled
