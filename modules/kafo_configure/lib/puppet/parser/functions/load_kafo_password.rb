# Loads a kafo master password from kafo.yaml
#
module Puppet::Parser::Functions
  newfunction(:load_kafo_password, :type => :rvalue) do |args|
    YAML.load_file('config/kafo.yaml')[:password]
  end
end

