require 'yaml'

# Module to create YAMLable objects out of MusicDB objects. 
module MusicDB
module YAMLable

  # @return YAML.dump if object has attributes; raise error if not.
  def to_yaml
    if self.respond_to? :attributes
      YAML.dump(attributes)
    else
      raise "Hey, #{self.class} needs some attributes!"
    end
  end

# @param [String] filename dump to filename.yml
  def dump(filename=nil)
    filename ||= 'unknown'

    File.write("#{filename}.yml", to_yaml)
  end
end
end
