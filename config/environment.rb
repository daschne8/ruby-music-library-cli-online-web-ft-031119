require 'bundler'
Bundler.require

module Concerns
  module Findable
    def find_by_name(name)
      self.all.detect {|object| object.name == name}
    end

    def find_or_create_by_name(name)
      if self.find_by_name(name).nil?
        self.create(name)
      else
        self.find_by_name(name)
      end
    end
  end
end

# require_all 'lib'
require_relative './lib/artist'
require_relative './lib/genre'
require_relative './lib/song'
require_relative './lib/music_importer'
require_relative './lib/music_library_controller'
require_relative './lib/concerns/concerns'
