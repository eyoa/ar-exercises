class Employee < ActiveRecord::Base
  belongs_to :store
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {only_integer: true, greater_than: 40, less_than: 200}
  validates :store, presence: true
  
  before_save :password_gen

  private 

  def password_gen
    self.password = ([*('A'..'Z'),*('0'..'9'),*('a'..'z')]).sample(8).join
  end
end