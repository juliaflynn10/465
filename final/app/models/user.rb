class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true

  has_many :courses, through: :course_users
  has_many :course_users

  before_save :teacher_status

  def teacher_status
      if self.teacher_code == "teach"
        self.teacher = true
      end
  end



end
