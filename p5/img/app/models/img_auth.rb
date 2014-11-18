class ImgAuth < ActiveRecord::Base
  belongs_to :usr
  belongs_to :imgob
end
