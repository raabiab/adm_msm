class Movie < ApplicationRecord
  # Direct associations

  belongs_to :director,
             :counter_cache => :filmography_count

  has_many   :characters,
             :dependent => :destroy

  # Indirect associations

  has_many   :cast,
             :through => :characters,
             :source => :actor

  # Validations

  # Scopes

  def to_s
    title
  end

end
