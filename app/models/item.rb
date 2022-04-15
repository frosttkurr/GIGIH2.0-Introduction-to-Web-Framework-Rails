class Item < ApplicationRecord
  def category
    @category = CategoryItem.find_by(id: self.category_id)
    return @category.name
  end
end
