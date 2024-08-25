class User < ApplicationRecord
    # 一人のユーザー対して、複数のマイクロポストがある
    has_many :microposts
    validates :name, presence: true    # （コードを書き込む）の中身を書き換えてください
    validates :email, presence: true 
  end
  