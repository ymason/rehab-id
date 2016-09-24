class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_mappable :auto_geocode=>{:field=>:full_address, :error_message=>'Could not geocode address'}

  has_many :projects

  has_many :price_features

  validates :name, presence: true

  validates :phone, presence: true

  validates :address, presence: true

  validates :city, presence: true

  validates :zip_code, presence: true

  validates :state, presence: true

  validates :role, presence: true

  after_create :send_welcome_email

  enum role: [:admin, :lender, :contractor, :user]

  def full_address
    "#{self.address} #{self.city} #{self.state}"
  end

  def user_is_self?(user)
    self.id == user.id
  end

  def self.local_contractors(project)
      # Find All Contractors Within 50 Miles
      User.within(50, origin: "#{project.full_address}").where(role: 2)
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

  protected

    def send_welcome_email
      WelcomeMailer.welcome_email(self).deliver_later
    end
end
