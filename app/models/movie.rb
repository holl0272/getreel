# == Schema Information
#
# Table name: movies
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  year          :string(255)
#  rated         :string(255)
#  released      :string(255)
#  runtime       :string(255)
#  director      :string(255)
#  imdbID        :string(255)
#  plot          :text
#  poster        :text
#  collection_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Movie < ActiveRecord::Base
    attr_accessible :title, :year, :rated, :released, :runtime, :director, :imdbID, :plot, :poster, :collection_id, :actor_ids
    belongs_to :collection
    has_and_belongs_to_many :actors
end


