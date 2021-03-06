#module Ruled
#  module ActsAsRuled
#    extend ActiveSupport::Concern
# 
#    included do
#    end
#    
#    def self.included(klazz)
#      klazz.extend Callbacks
#      klazz.extend ClassMethods
#    end
#
# 
#    module ClassMethods
#      
#      def included(into)
#        @into = into
#      end
#      
#      def acts_as_ruled(options = {})
#        @options = options
#      end
#    end
#    
#    module Limits
#      MAX_RECORDS = 5
#    end
#    
#    module Callbacks
#      def self.extended(klazz)
#        klazz.define_callbacks :before_save
#
#        klazz.define_singleton_method("before_save") do |*args, &block|
#          puts klazz
##          if (klazz.count + 1) <= Limits::MAX_RECORDS #max_records 
##            before_save *args, &block
##          else
##            puts "No save. reached Limit of records"
##          end
#        end
#      end
#    end
#    
#    
#  end
#end
 
#ActiveRecord::Base.send :include, Ruled::ActsAsRuled

#class ActiveRecord::Base
#  def self.acts_as_ruled(options={})
#    include Ruled::Callbacks
#
#    before_save {
#      self.class.notify_observers(:before_saver, self) if self.class.respond_to?(:before_save)
#    }
#  end
#
#  def self.ruled? ; false ; end
#  def ruled? ; self.class.ruled? ; end
#end
