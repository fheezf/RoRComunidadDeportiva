require 'digest'
class User < ActiveRecord::Base
  attr_accessor :password  
  before_save :encrypt_new_password 
  belongs_to :location
  has_many :articles, dependent: :nullify

  validates :email, uniqueness: {case_sensitive: false, message: 'El correo no es válido'}, length: {in: 4..20, too_short: "El correo debe tener al menos %{count} caracteres"}, format: {with: /\A(\S+)@(.+)\.(\S+)\z/, message: "Formato de correo no valido"}

  validates :password, confirmation: true, length: {within: 4..10, too_short: " debe tener al menos %{count} caracteres"}, presence: {if: :password_required, message: "no puede estar en blanco"}
  validates :password_confirmation, presence: {if: :password_required, message: "no puede estar en blanco"}

  def self.authenticate(email,password)
    user = find_by_email(email)
    return user if user && user.authenticated?(password)
  end

  def authenticated?(password)
    self.hashed_password == encrypt(password)
  end

  protected
    def password_required
      hashed_password.blank? || password.present?
    end

    def encrypt_new_password
      return if password.blank?
      self.hashed_password = encrypt(password)
    end

    def encrypt(string)
      Digest::SHA1.hexdigest(string)
    end
end
