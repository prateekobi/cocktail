  class Like < ActiveRecord::Base
    belongs_to :barmen
    belongs_to :recipe
  end
