class User < ApplicationRecord
  has_and_belongs_to_many :subjects

  validates :name, length: { maximum: 100 }
  validates :age, length: { maximum: 2 }


  end

