# Interfi Capital Origination API


## Installation

Add this line to your application's Gemfile:

    gem 'interfi_capital'

And then execute:

    $ bundle

Then run install generator:

	rails g interfi_capital:install


## Usage

### Request

    request = InterfiCapital::Origination.create_loan(...)

You need to have a username, password and api_key configured.


## Contributing

1. Fork it ( http://github.com/easylodge/interfi_captital/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. See dev.rb file in root
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request
