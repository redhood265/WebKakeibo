class Trade < ApplicationRecord
  belongs_to :category
  
  #項目のバリデーション
  validates :exchange, presence: true
  validates :price, numericality: true
  
  #ransackの検索カラムの設定(検索できるカラムを指定)
  def self.ransackable_attributes(auth_object = nil)
    %w[items created_at]
  end
  
  def self.ransackable_associations(auth_object = nil)
    []
  end
  
  # 収入/支出の文字列を返す
  def exchangeName
    if self.exchange == 0
      '収入'
    else
      '支出'
    end
  end

  #作成日時順(降順)で取得
  scope :recent, -> { order(created_at: :desc)}
  
end
