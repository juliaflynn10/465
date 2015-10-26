class Reference < ActiveRecord::Base
  validates :URL, presence: true
  validates :date, presence: true

  belongs_to :topic
end
