#require 'ruled/core_ext'
require 'ruled/acts_as_ruled'

module Ruled
  def self.included(base) # :nodoc:
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_ruled(options={})
      options[:max_records]
      
      puts self.class
    end
  end
end

