class Category < ApplicationRecord
  has_many :trades
  scope :category_list, -> { all.pluck(:name, :id)}
  # 収入の勘定科目
  scope :income_category_list, -> { where(exchange: 0).pluck(:name, :id)}
  # 支出の勘定科目
  scope :Spending_category_list, -> { where(exchange: 1).pluck(:name, :id)}
end
