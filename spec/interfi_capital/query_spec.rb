require 'spec_helper'

describe InterfiCapital::Origination do
  let(:subject) {InterfiCapital::Origination.new}

  it { should respond_to(:api_key) }
  it { should respond_to(:username) }
  it { should respond_to(:password) }
  it { should respond_to(:create_loan) }

  before(:each) do
    config = YAML.load_file('dev_config.yml')
    @api_key => config["api_key"],
    @username => config["username"],
    @password => config["password"],
  end

  describe ".create_loan" do
    it "does stuff"
  end



end
