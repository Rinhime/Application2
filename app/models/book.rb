class Book < ApplicationRecord
  # この記述でモデルが画像を持てるようになる
  has_one_attached :image
  belongs_to :user
  
  def get_image
    if image.attached?
      image
    else
      'default-image.jpg'
    end
  end
  
  
end
