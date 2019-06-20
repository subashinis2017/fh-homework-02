class Book < ApplicationRecord
  def self.search(keyword)
    if keyword

      yearnum = keyword.to_i.instance_of?(Integer) ? keyword : nil 
      keyword = "%#{keyword}%"
      Book.where("title ilike ? OR author ilike ? OR genre ilike ? OR classification ilike ? OR book_type ilike ? OR year = ?", keyword, keyword, keyword, keyword, keyword, yearnum)
    else
      all
    end
  end

end
