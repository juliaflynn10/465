class Fingerprint < ActiveRecord::Base
	has_many :sites, dependent: :destroy
	accepts_nested_attributes_for :sites
	
	validates :name, presence: true
	validates :description, presence: true


end
