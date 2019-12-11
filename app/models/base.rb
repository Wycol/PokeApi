class Base < ApplicationRecord
  belongs_to :pokemon, optional: true
end
