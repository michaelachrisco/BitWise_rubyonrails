require_relative 'yamlable'

# Class creates an Artist object within the MusicDB object
class Artist
  include MusicDB::YAMLable

  attr_accessor :name

  # @param [String] name Initalize the name. 
  def initialize(name)
    @name = name
  end
  # @return [String] name Returns the attributes name.
  def attributes
    { name: @name }
  end
end
