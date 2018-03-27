require 'spec_helper'

describe InterfiCapital::Origination do
  let(:subject) {InterfiCapital::Origination.new}

  before(:each) do
    config = YAML.load_file('dev_config.yml')
    @api_key = config["api_key"],
    @username = config["username"],
    @password = config["password"]
  end

  describe ".create_loan" do
    it "does stuff"
  end

end
