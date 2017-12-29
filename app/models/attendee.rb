class Attendee < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :event_id, :uniqueness => {:scope=>:user_id}

  def full_name
    user.full_name
  end

  def skills
    user.skills
  end
end
