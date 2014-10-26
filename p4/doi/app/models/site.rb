class Site < ActiveRecord::Base
  validates :site, presence: true
  validates :doi, presence: true

  belongs_to :fingerprint
end
