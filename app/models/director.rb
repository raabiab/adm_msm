class Director < ApplicationRecord
  # Direct associations

  has_many   :filmography,
             class_name: "Movie",
             dependent: :nullify

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end
end
