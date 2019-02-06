# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#初期データを記載
(2..5).each do |i|
  Trade.create(exchange:"収入",items:"#{i}月給与",amount:100000+(3980*"#{i}".to_i),remarks:"seeds.rbの初期データ")
end

(7..10).each do |k|
  Trade.create(exchange:"支出",items:"#{k}月家賃",amount:30000+(2160*"#{k}".to_i),remarks:"seeds.rbの初期データ")
end
