class Profession < ApplicationRecord

  has_many :worker_profession, dependent: :destroy
  has_many :worker, through: :worker_profession
  belongs_to :profession_type

  validates :name, presence: true, length: {in: 3..100}
  validates :profession_type, presence: true

  delegate :title, to: :profession_type, prefix: true
end
