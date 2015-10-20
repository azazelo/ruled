#require 'ruled/core_ext'
#require 'ruled/acts_as_ruled'
require 'active_record' unless defined? ActiveRecord

module Ruled
  
  def self.included(klazz)
    klazz.extend Callbacks
  end

  module Callbacks
    def self.extended(klazz)
      klazz.define_callbacks :before_save

#      klazz.define_singleton_method("before_save") do |*args, &block|
#        puts klazz
#  #          if (klazz.count + 1) <= Limits::MAX_RECORDS #max_records 
#  #            before_save *args, &block
#  #          else
#  #            puts "No save. reached Limit of records"
#  #          end
#      end

      def self.before_save
        puts self.class
    #    self.class.send(:before_save)
      end
    end
  end
end

class ActiveRecord::Base
  def self.acts_as_ruled(options={})
    include Ruled::Callbacks
  end


  
  def self.ruled? ; false ; end
  def ruled? ; self.class.ruled? ; end
end

