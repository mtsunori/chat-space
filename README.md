# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

	
# chat-space DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true, unique: true|
|mail|string|null: false, unique: true|
|pass|string|null: false, unique: true|
### Association
- has_many :groups, trough: :groups_users
- has_many :group_users
- has_many :messages


## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|image|string|
|group|references|foreign_key: true|
|user|references|foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group


## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true, unique: true|
### Association
- has_many :users, through: :group_users
- has_many :group_users
- has_many :messages


## group_usersテーブル
|Column|Type|Options|
|------|----|-------|
|group|references|null: false, index: true, foreign_key: true|
|user|references|null: false, index: true, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user
