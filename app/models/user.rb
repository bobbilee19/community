class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :attendees
  has_many :events, through: :attendees

  has_many :skills
  has_many :categories, through: :skills

  def full_name
    "#{first_name} #{last_name}"
  end

  def abbreviated_name
    # take first letter
    "#{first_name} #{first_letter_last_name}."
  end
end
