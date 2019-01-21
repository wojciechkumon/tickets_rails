class Ticket < ApplicationRecord

  belongs_to :event
  belongs_to :user

  validates :name, presence: true, length: {minimum: 6}
  validates :email_address, presence: true
  validates :price, presence: true
  validate :valid_price

  def valid_price
    if price > event.price_high
      errors.add(:price, "Price higher than allowed in this event (#{event.price_high})")
    end
    if price < event.price_low
      errors.add(:price, "Price lower than allowed in this event (#{event.price_low})")
    end
  end
end
