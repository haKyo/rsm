class Currency < ApplicationRecord
  has_many :jobs
  has_many :offers
  belongs_to :company

  validates :nation, presence: true
  validates :unit, presence: true
  validates :sign, presence: true

  scope :get_newest, ->{order created_at: :desc}
end
