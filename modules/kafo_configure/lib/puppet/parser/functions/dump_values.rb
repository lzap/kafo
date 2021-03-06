# Find default values for variables specified as args
#
module Puppet::Parser::Functions
  newfunction(:dump_values) do |args|
    data = Hash[args.map { |arg| [arg, lookupvar(arg)] }]
    File.open('config/default_values.yaml', 'w') { |file| file.write(YAML.dump(data)) }
  end
end

