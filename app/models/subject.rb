class Subject < ApplicationRecord
  has_and_belongs_to_many :users
  before_save :default_values

  def default_values
    self.name ||= 'default' # note self.status = 'P' if self.status.nil? might be safer (per @frontendbeauty)
    self.k_index ||= '0'
    self.eredmeny ||= 0
  end

  validates :name, length: { maximum: 500 }
  validates :k_index, length: { maximum: 2 }
end
