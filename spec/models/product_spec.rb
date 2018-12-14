require 'rails_helper'

RSpec.describe Product, type: :model do
  before :each do
    Product.destroy_all
  end
  subject { described_class.new ({name: "Laptop" }) }

  it "has none to begin with" do
    expect(Product.count).to eq 0
  end

  it "has one after adding one" do
    subject.save
    expect(Product.count).to eq 1
  end

  it "has none after one was created in a previous example" do
    expect(Product.count).to eq 0
  end

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a name"  do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end
end
