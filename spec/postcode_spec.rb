require 'spec_helper'
require 'postcode'

RSpec.describe "Postcode" do
  describe "#valid?" do
    it "3桁の整数 + '-' + 4桁の整数であるとき" do
      postcode = Postcode.new("000-0000")
      expect(postcode.valid?).to be_truthy
    end
    it "4桁の整数 + '-' + 4桁の整数であるとき" do
      postcode = Postcode.new("0000-0000")
      expect(postcode.valid?).to be_falsey
    end
    it "3桁の整数 + '-' + 5桁の整数であるとき" do
      postcode = Postcode.new("000-00000")
      expect(postcode.valid?).to be_falsey
    end
    it "7桁の整数であるとき" do
      postcode = Postcode.new("0000000")
      expect(postcode.valid?).to be_truthy
    end
    it "8桁の整数であるとき" do
      postcode = Postcode.new("00000000")
      expect(postcode.valid?).to be_falsey
    end
  end
end
