class Component < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredients
end
