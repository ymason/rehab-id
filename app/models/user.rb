class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_mappable :auto_geocode=>{:field=>:full_address, :error_message=>'Could not geocode address'}


  has_many :projects

  has_many :price_features

  has_many :lender_underwritings

  has_many :lender_loans

  has_many :loan_quotes

  has_many :bids

  has_many :contractor_bids
  
  validates :name, presence: true

  validates :phone, presence: true

  validates :address, presence: true

  validates :city, presence: true

  validates :zip_code, presence: true

  validates :state, presence: true

  validates :role, presence: true

  after_create :send_welcome_email

  enum role: [:admin, :lender, :contractor, :user]

  acts_as_messageable

  def mailboxer_email(object)
    self.email
  end

  def full_address
    "#{self.address} #{self.city} #{self.state}"
  end

  def user_is_self?(user)
    self.id == user.id
  end

  # Projects Policies

  def self.local_contractors(project)
      # Find All Contractors Within 50 Miles
      User.within(25, origin: "#{project.full_address}").where(role: 2)
  end

  def self.local_lenders(loan_quote)
      # Find All Contractors Within 50 Miles
      User.within(50, origin: "#{loan_quote.full_address}").where(role: 1)
  end

  def owner_of_project?(project)
    self.id == project.user_id
  end

  
  def contractor_own_price_features?(price_feature)
      self.id = price_feature.user_id
  end

  # Bids Policies

  def owner_of_bid_project?(bid)
    self.id == bid.project.user_id
  end

  def owner_of_bid_approval?(bid_project)
    self.id == bid_project.bid.project.user_id
  end

  def owner_of_contractor_bid(contractor_bid)
    self.id == contractor_bid.user_id
  end

  # Loans Policies

  def lender_own_underwriting?(lender_underwriting)
      self.id = lender_underwriting.user_id
  end

  def owner_of_loan_quote?(loan_quote)
    self.id == loan_quote.user_id
  end

  def owner_of_loan_app?(loan_application)
    self.id == loan_application.lender_quote.loan_quote.user_id
  end

  def lender_own_loan?(lender_loan)
    self.id = lender_loan.user_id
  end

  protected

    def send_welcome_email
      WelcomeMailer.welcome_email(self).deliver_later
    end
end
