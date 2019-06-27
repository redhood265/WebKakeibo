class Trade < ApplicationRecord
  #項目のバリデーション
  validates :exchange, presence: true
  validates :items, presence: true
  validates :amount, numericality: true
#  remarks

  #ransackの検索カラムの設定(検索できるカラムを指定)
  def self.ransackable_attributes(auth_object = nil)
    %w[items created_at]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end

  #作成日時順(降順)で取得
  scope :recent, -> { order(created_at: :desc)}
end