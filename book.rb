class Book
  def initialize author="anonymous", page=1
    @author = author
    @page = page
  end
  def title=title
    @title = title
  end
  def title
    @title
  end
  def author
    @author
  end
  def page
    @page
  end
  def read pages_read
    @page = @page + pages_read
  end
end
