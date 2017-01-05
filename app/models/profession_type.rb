class ProfessionType < ApplicationRecord

  has_many :professions, dependent: :destroy

  validates :title, presence: true, length: { in: 3..50 }
end
