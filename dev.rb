
@config = YAML.load_file('dev_config.yml')


@req = InterfiCaptial::Origination.new(@config['api_key'], @config['username'], @config['password'])

puts "You now have an instance to use."

# TODO do stuff here
