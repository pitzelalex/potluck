class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(cat_id)
    @dishes.select { |dish| dish.category == cat_id}
  end

  def menu
    menu = {}
    categories = []
    @dishes.each { |dish| categories << dish.category unless categories.include?(dish.category) }
    categories.each do |cat_id|
      selected = @dishes.select { |selected_dish| selected_dish.category == cat_id }
      menu[cat_id] = selected.map { |select| select.name }.sort
    end
    return menu
  end

  def ratio(cat_id)
    ((dishes.count { |dish| dish.category == cat_id} / dishes.count.to_f) * 100).round(1)
  end
end