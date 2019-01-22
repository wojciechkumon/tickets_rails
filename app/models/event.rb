class Event < ApplicationRecord

  has_many :tickets

  validates :artist, presence: true
  validates :city, presence: true
  validates :price_low, presence: true, numericality: {greater_than: 0}
  validates :price_high, presence: true, numericality: {greater_than: 0}
  validates :event_date, presence: true
  validate :event_date_not_from_past, :max_price_lower_than_min

  def event_date_not_from_past
    if event_date < Date.today
      errors.add(:event_date, 'cannot be in past')
    end
  end

  def max_price_lower_than_min
    if price_high < price_low
      errors.add(:price_high, 'cannot lower then low')
    end
  end
end
