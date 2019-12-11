# frozen_string_literal: true

class Pokemon < ApplicationRecord 
  has_many :pokemon_types
  has_many :types, through: :pokemon_types

  has_one :base
end
