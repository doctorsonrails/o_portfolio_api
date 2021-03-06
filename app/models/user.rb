class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password
  
  attr_accessor :password
  before_save :encrypt_password
  
  validates_presence_of :password, :on => :create
  validates_presence_of :first_name, :last_name, :email
  validates_uniqueness_of :email
  
  has_many :entries
  has_many :assessments, foreign_key: :trainee_id
  
  def encrypt_password    
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, self.password_salt)
    end
    true
  end
  
  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
end
