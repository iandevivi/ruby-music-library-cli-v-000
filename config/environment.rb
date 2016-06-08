require 'bundler'
require 'pry'
Bundler.require

module Concerns
  module Findable

    def find_by_name(name)
      self.all.detect{|a| a.name}
    end

    def find_or_create_by_name(name)
      self.find_by_name(name) || self.create(name)
    end


  end

end

require_all 'lib'
