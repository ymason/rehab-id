class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :projects

  has_many :price_features

  has_many :features, through: :price_features

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

   def owner_of_project?(project)
    self.id == project.user_id
  end

  def contractor_own_price_features?(price_feature)
      self.id = price_feature.user_id
    end

  def project_features_owner?(project_feature)
      self.id = project_feature.project.user_id
    end

  # def contractor_in_area?(project)
  #     user.where(role: 2 && city = project.city)
  #   end
  protected

    def send_welcome_email
      WelcomeMailer.welcome_email(self).deliver_later
    end
end
