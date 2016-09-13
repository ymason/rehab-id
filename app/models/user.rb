class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :projects

  validates :name, presence: true

  validates :phone, presence: true

  validates :address, presence: true

  validates :city, presence: true

  validates :zip_code, presence: true

  validates :state, presence: true

  validates :role, presence: true

  after_create :send_welcome_email

  enum role: [:admin, :lender, :contractor, :user]

  def user_is_self?(user)
    self.id == user.id
  end

  protected

    def send_welcome_email
      WelcomeMailer.welcome_email(self).deliver_later
    end
end
