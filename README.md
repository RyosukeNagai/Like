# README
![image](https://user-images.githubusercontent.com/64464083/97806000-ca555d00-1c9c-11eb-8662-a698d7ed791e.png)

# このアプリについて
 - シンプルな画像投稿サイト
 - コメント機能・いいね機能実装
 - Hamlの導入
 - 使用Gem

# Gem/ver
* Ruby:2.5.7

* Rails:'~> 5.2.4', '>= 5.2.4.4'

* System dependencies
 - gem 'devise'
 - gem 'jquery-rails'
 - gem 'font-awesome-sass'
 - gem 'haml-rails'
 - gem 'refile'
 - gem 'refile-mini_magick'
 - gem 'kaminari'
 - gem 'pry-rails'

## usersテーブル
|Column|Type|
|------|----|
|name|string|
|email|string|
|password|string|

### Association
 -has_many: post_images<br>
 -has_many: comments<br>
 -has_many: favorites<br>

## post_imagesテーブル
|Column|Type|
|------|----|
|shop_name|text|
|image_id|string|
|caption|text|
|avatar|text|
|user_id|integer|

### Association
 -belongs_to: user<br>
 -has_many: comments<br>
 -has_many: favorites<br>

## commentsテーブル
|Column|Type|
|------|----|
|comment|text|
|user_id|integer|
|post_image_id|integer|

### Association
 -belongs_to: user<br>
 -belongs_to: post_image<br>

## favoritesテーブル
|Column|Type|
|------|----|
|user_id|integer|
|post_image_id|integer|

### Association
 -belongs_to: user<br>
 -belongs_to: post_image<br>









