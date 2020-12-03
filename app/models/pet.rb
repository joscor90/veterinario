class Pet < ApplicationRecord
  has_many :pet_histories

  def history_count
    self.pet_histories.count
  end

  def avg_weight
    pet_arr = pet_histories.pluck(:weight)
    pet_arr.sum / pet_arr.size
  end

  def avg_height
    pet_arr = pet_histories.pluck(:heigth)
    (pet_arr.sum).to_i / pet_arr.size
  end

  def max_weight
    (pet_histories.pluck(:weight)).max
  end

  def max_height
    (pet_histories.pluck(:heigth)).max
  end

end
