class Worker < User

  has_many :worker_profession, dependent: :destroy
  has_many :professions, through: :worker_profession

  validates :professions, presence: true, on: :update

  scope :with_professions, -> (professions){joins(:professions).where(professions: {id: professions})}
end
