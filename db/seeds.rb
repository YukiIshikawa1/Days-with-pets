# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  name: '山田 太郎',
  nick_name: '太郎',
  email: 'test@test.com',
  password: 'password',
  user_image: File.open('app/assets/images/sakana.jpeg')
)
User.create!(
  name: '安本 徹也',
  nick_name: '太郎',
  email: 'yasumoto@test.com',
  password: 'password',
  user_image: File.open('app/assets/images/user1.jpg')
)
User.create!(
  name: '角田 亜希子',
  nick_name: '太郎',
  email: 'kakuta@test.com',
  password: 'password',
  user_image: File.open('app/assets/images/user2.jpg')
)
User.create!(
  name: '森内 佑輔',
  nick_name: '太郎',
  email: 'moriuti@test.com',
  password: 'password',
  user_image: File.open('app/assets/images/user3.jpg')
)
User.create!(
  name: '山 尚美',
  nick_name: '太郎',
  email: 'yama@test.com',
  password: 'password',
  user_image: File.open('app/assets/images/user4.jpg')
)

Pet.create!(
  user_id: '1',
  genre: '猫',
  category: '雑種',
  name: 'こまり',
  gender: '男の子',
  age: '3',
  pet_image: File.open('app/assets/images/cat1.jpg')
)
Pet.create!(
  user_id: '2',
  genre: '犬',
  category: 'ダックス・フンド',
  name: 'クロ',
  gender: '男の子',
  age: '６',
  pet_image: File.open('app/assets/images/dog15.jpg')
)
Pet.create!(
  user_id: '3',
  genre: '犬',
  category: 'ボーダーコリー',
  name: 'マックス',
  gender: '男の子',
  age: '5',
  pet_image: File.open('app/assets/images/dog17.jpg')
)
Pet.create!(
  user_id: '4',
  genre: '猫',
  category: 'トイガー',
  name: 'ルーシー',
  gender: '女の子',
  age: '4',
  pet_image: File.open('app/assets/images/cat9.jpg')
)
Pet.create!(
  user_id: '5',
  genre: '猫',
  category: '不明',
  name: 'ローラ',
  gender: '女の子',
  age: '7',
  pet_image: File.open('app/assets/images/cat4.jpg')
)

Post.create!(
  user_id: '1',
  pet_id: '1',
  title: '日常風景',
  text: '日常の中で取れた１枚です！',
  post_image: File.open('app/assets/images/cat1.jpg')
)
Post.create!(
  user_id: '2',
  pet_id: '2',
  title: '日常風景',
  text: '日常の中で取れた１枚です！！',
  post_image: File.open('app/assets/images/dog15.jpg')
)
Post.create!(
  user_id: '3',
  pet_id: '3',
  title: '日常風景',
  text: '日常の中で取れた１枚です！！！',
  post_image: File.open('app/assets/images/dog17.jpg')
)
Post.create!(
  user_id: '4',
  pet_id: '4',
  title: '日常風景',
  text: '日常の中で取れた１枚です！！！！',
  post_image: File.open('app/assets/images/cat9.jpg')
)
Post.create!(
  user_id: '5',
  pet_id: '5',
  title: '日常風景',
  text: '日常の中で取れた１枚です！！！！！',
  post_image: File.open('app/assets/images/cat4.jpg')
)
