require 'yaml'

def to_yaml
  if self.respond_to? :attributes
    YAML.dump(attributes)
  else
    raise "Hey, #{self.class} needs some attributes!"
  end
end
