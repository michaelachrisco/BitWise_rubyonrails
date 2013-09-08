require_relative 'yamlable'

# Class creates a YAMLable Album for the MusicDB.
class MusicDB::Album
  include MusicDB::YAMLable

  attr_accessor :title, :artist, :year
end
