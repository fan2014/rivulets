class User < ActiveRecord::Base
  
  mount_uploader :image, ImageUploader
  
  validates :name, presence: true, length: { maximum: 50 }

  def self.enrolled_students_id_list
    %w[
      9037644698 
      1234567890    
      0123456789
      ] 
  end
  
  LIST = User.enrolled_students_id_list

  validates :student_id, inclusion: { in: LIST, message: "student id is not valid" }
  

end
