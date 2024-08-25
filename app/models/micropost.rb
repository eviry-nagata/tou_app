class Micropost < ApplicationRecord
    # 1つのマイクロポストは1人のユーザーに属する
    belongs_to :user
    # テキストの長さを制限する
    validates :content, length: { maximum: 140 },
                        presence: true
  end
  