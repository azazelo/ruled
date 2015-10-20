module Ruled
  module ActsAsRuled
    extend ActiveSupport::Concern
 
    included do
    end
 
    module ClassMethods
      
      def self.included(into)
        @into = into
      end
      
      def acts_as_ruled(options = {})
        @options = options

      end
      
      def before_save
        puts @into.count
        super
      end
    end
  end
end
 
ActiveRecord::Base.send :include, Ruled::ActsAsRuled
