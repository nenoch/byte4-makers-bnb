require 'data_mapper'
require 'dm-postgres-adapter'

class Space
  include DataMapper::Resource

  property :id,           Serial
  property :title,        String
  property :description,  Text
  property :price,        Float
  property :start_date,   Date
  property :end_date,     Date

  belongs_to :user
  has n, :bookings
  has n, :tags
  has n, :pictures


end
