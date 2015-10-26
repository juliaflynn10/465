class Site < ActiveRecord::Base
  belongs_to :fingerprint
  validates :url, presence: true

end
