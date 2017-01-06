class ProfessionType < ApplicationRecord

  has_many :professions, dependent: :destroy

  validates :title, presence: true, length: { in: 2..50 }
end
