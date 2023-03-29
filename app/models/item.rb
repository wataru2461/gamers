class Item < ApplicationRecord
  has_one_attached :image
  
  belongs_to :genre
  has_many :cart_items, dependent: :destroy
  has_many :order_details, dependent: :destroy
  has_many :item_comments, dependent: :destroy

  
  def with_tax_price
    (price * 1.1).floor
  end
 
  delegate :pc?, :graphic_board?, :mother_board?, :desk?, :chair?, :key_board?, :mouse?, :headset?, :monitor?, to: :genre
  
  def show_os?
    pc?
  end
  
  def show_cpu?
    pc?
  end
  
  def show_graphics?
    pc?
  end
  
  def show_memory?
    pc? || graphic_board? || mother_board?
  end
  
  def show_storage?
    pc?
  end
  
  def show_connection?
    graphic_board? || key_board? || mouse? || headset?
  end
  
  def show_resolution?
    mouse? || monitor?
  end
  
  def show_polling_rate?
    mouse?
  end

  def show_size?
    key_board? || mouse? || headset? || monitor?
  end
  
  def show_memory_bus?
   graphic_board? 
  end
  
  def show_memory_type?
    graphic_board? || mother_board?
  end
  
  def show_core_clock?
    graphic_board?
  end
  
  def show_memory_clock?
    graphic_board?
  end
  
  def show_monitor_output?
    graphic_board?
  end
  
  def show_chip?
    graphic_board? || mother_board?
  end
  
  def show_response_speed?
    monitor?
  end
  
  def show_refresh_rate?
    monitor?
  end
  
  def show_input_terminal?
    monitor?
  end
  
  def show_key_layout?
    key_board?
  end
  
  def show_key_switch?
    key_board?
  end
end
