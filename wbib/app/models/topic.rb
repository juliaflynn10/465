class Topic < ActiveRecord::Base
  has_many :references, dependent: :destroy
  accepts_nested_attributes_for :references, reject_if: lambda { |attributes| attributes['URL'].blank? || attributes['date']}
  validates :title, presence: true
  validates :description, presence: true


end
