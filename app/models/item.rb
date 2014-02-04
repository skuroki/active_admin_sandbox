class Item < ActiveRecord::Base
  has_paper_trail

  def to_s
    name
  end
end
