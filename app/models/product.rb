class Product < ApplicationRecord
  attr_accessor :new_category_name
  belongs_to :category, required: false
  before_save :create_category_from_name
  def create_category_from_name
    create_category(name: new_category_name) unless new_category_name.blank?
  end
end
