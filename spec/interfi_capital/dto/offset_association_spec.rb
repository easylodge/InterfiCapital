require 'spec_helper'

describe InterfiCapital::Dto::OffsetAssociation do
  let(:subject) {InterfiCapital::Dto::OffsetAssociation.new}

  context "validation" do
    describe "allocation" do
      it "sets the value if > 0.0" do
        expect {
          subject.allocation = 0.0 + rand(99)
        }.not_to raise_error
        expect(subject.allocation).to_not be_nil
      end

      it "sets the value if < 100.0" do
        expect {
          subject.allocation = 0.0 + rand(99)
        }.not_to raise_error
        expect(subject.allocation).to_not be_nil
      end

      it "raises an exeption if outside the allowed range" do
        expect {
          subject.allocation = [0.0-rand(99), 0.0, 100 + rand(99)].sample
        }.to raise_error(InterfiCapital::Dto::ValidationError)
        expect(subject.allocation).to be_nil
      end

    end
  end

end
