describe Dish do 
  describe '#initialize'
    it 'is an instance of Dish' do
      dish = Dish.new("Couscous Salad", :appetizer)

      expect(dish).to be_instance_of(Dish)
    end
  end
end