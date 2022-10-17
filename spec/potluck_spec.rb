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

  describe '#add_dish' do
    it 'adds new dishes to dishes array' do
      potluck = Potluck.new("7-13-18")
      couscous_salad = Dish.new("Couscous Salad", :appetizer)
      cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
      potluck.add_dish(couscous_salad)
      potluck.add_dish(cocktail_meatballs)

      expect(dishes).to eq([couscous_salad, cocktail_meatballs])
    end
  end
end