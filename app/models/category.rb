class Category < ActiveRecord::Base
  has_many :posts

  def collapse_spaces
    #write method to deal with white spaces in category names
  end

end
