class Actor < ApplicationRecord
  # Direct associations

  has_many   :characters,
             :dependent => :nullify

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end

end
