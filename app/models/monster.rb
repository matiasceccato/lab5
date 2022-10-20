class Monster < ApplicationRecord
  validates :name, :birthdate, presence: true
  validate :phone_must_be_valid_and_argentinian

  def phone_must_be_valid_and_argentinian
    if !PhoneValidator.new(phone).valid?
      errors.add(:phone, :invalid)
    end
  end
end
