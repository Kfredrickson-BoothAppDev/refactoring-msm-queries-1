# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
  def characters
    my_id = self.id

    matching_movies = Movie.where({ :director_id => my_id })

    return matching_movies
  end
end
