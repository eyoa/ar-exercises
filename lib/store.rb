class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, presence: true, numericality: {only_integer: true, greater_than: 0}
  validate :must_carry_apparel
  
  before_destroy :has_employees?

  def must_carry_apparel
    if !(mens_apparel == true || womens_apparel == true)
      errors.add(:mens_apparel, "either mens or womens apparel must be true")
      errors.add(:womens_apparel, "either mens or womens apparel must be true")
    end
  end

  private
  def has_employees?
    if self.employees.count > 0
      errors.add :employees, "Cannot delete a store with employees"
    end
    false
  end
end
