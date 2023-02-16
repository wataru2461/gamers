class Genre < ApplicationRecord
  has_many :items, dependent: :destroy
  has_one_attached :image

  def pc?
    name == "ゲーミングPC"
  end
  
  def graphic_board?
    name == "グラフィックボード"
  end
  
  def mother_board?
    name == "マザーボード"
  end
  
  def desk?
    name == "ゲーミングデスク"
  end
  
  def chair?
    name == "ゲーミングチェア"
  end
  
  def key_board?
    name == "キーボード"
  end
  
  def mouse?
    name == "マウス"
  end
  
  def headset?
    name == "ヘッドセット"
  end
  
  def monitor?
    name == "モニター"
  end
end
