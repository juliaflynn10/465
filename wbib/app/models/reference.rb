class Reference < ActiveRecord::Base
  validates :URL, presence: true
  validates :date, presence: true
  before_save :validate_url
 
  validates_format_of :URL, :with => /((?:https?\:\/\/|www\.)(?:[-a-z0-9]+\.)*[-a-z0-9]+.*)/i

  belongs_to :topic

  def validate_url
	if self.URL.to_s =~ /\A(https?\:\/\/.*)\z/
		self.URL = self.URL
	else
		self.URL = "http://" + self.URL
	end
  end
end
