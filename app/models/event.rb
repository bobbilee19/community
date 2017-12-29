class Event < ApplicationRecord
  has_many :attendees
  has_many :users, through: :attendees

  def attendee_skills
    skills = []
    users.each do |user|
      if user.categories
        user.categories.each do |category|
          skills << category.name
        end
      end
    end
    skills
  end

  def amount_per_attendee_skill(skill)
    # coming soon
  end

  def tshirt_size
    # add this eventually for rails camp, just a thought
  end
end
