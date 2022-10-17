require 'rspec'
require './lib/dish'
require './lib/potluck'

describe Potluck do
  describe '#initialize' do
    it 'is an instance of Potluck' do
      potluck = Potluck.new("7-13-18")

      expect(potluck).to be_instance_of(Potluck)
    end

    it 'has a date' do
      potluck = Potluck.new("7-13-18")

      expect(potluck.date).to eq("7-13-18")
    end

    it 'has an array of dishes' do
      potluck = Potluck.new("7-13-18")

      expect(potluck.dishes).to eq([])
    end
  end
end