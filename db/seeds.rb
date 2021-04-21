# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  User.create!(
  name: "テスト太郎",
  nick_name: "太郎",
  email: "aaaaa@aaa.com",
  password: "password",
  user_image: File.open("app/assets/images/sakana.jpeg") 
  )
  
  Pet.create!(
  user_id: "1",
  genre: "犬",
  category: "雑種",
  name: "太郎１",
  gender: "男の子",
  age: "5",
  pet_image: File.open("app/assets/images/dog1.jpg")
  )
  
  Post.create!(
  user_id: "1",
  pet_id: "1",
  title: "日常風景",
  text: "日常の中で取れた１枚です！",
  post_image: File.open("app/assets/images/dog2.jpg")
  )
  Post.create!(
  user_id: "1",
  pet_id: "1",
  title: "日常風景",
  text: "日常の中で取れた１枚です！！",
  post_image: File.open("app/assets/images/dog3.jpg")
  )
  Post.create!(
  user_id: "1",
  pet_id: "1",
  title: "日常風景",
  text: "日常の中で取れた１枚です！！！",
  post_image: File.open("app/assets/images/dog4.jpg")
  )
  Post.create!(
  user_id: "1",
  pet_id: "1",
  title: "日常風景",
  text: "日常の中で取れた１枚です！！！！",
  post_image: File.open("app/assets/images/dog5.jpg")
  )
  Post.create!(
  user_id: "1",
  pet_id: "1",
  title: "日常風景",
  text: "日常の中で取れた１枚です！！！！！",
  post_image: File.open("app/assets/images/dog6.jpg")
  )
  Post.create!(
  user_id: "1",
  pet_id: "1",
  title: "日常風景",
  text: "日常の中で取れた１枚です！！！！！！",
  post_image: File.open("app/assets/images//dog7.jpg")
  )