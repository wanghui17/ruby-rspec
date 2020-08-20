require "calculator"

RSpec.describe Calculator do
  # This calculator is a magic calculator
  # It doesn't start counting from 0 :D

  subject { Calculator.new(7) }

  describe "#add" do
    context "given a positive number" do
      it "returns the sum" do
        expect(subject.add(2)).to eq(9)
      end
    end
    context "given a negative number" do
      it "returns the sum" do
        expect(subject.add(-3)).to eq(4)
      end
    end
  end

  describe "#history" do
    context "given previous executions" do
      before(:each) do
        subject.add 5
        subject.add 10
        subject.add 3
      end
      it "returns the x most recent commands" do
        expect(subject.history(2)).to eq([
          [:add, 3],
          [:add, 10]
        ])
      end
    end
  end
end
