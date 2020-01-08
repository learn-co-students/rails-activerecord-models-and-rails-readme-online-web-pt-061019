class Post < ActiveRecord::Base
  def post_summary
    title_and_description = self.title + " - " + self.description
    if title_and_description.length > 150
      title_and_description[0,147] + "..."
    else
      title_and_description
    end
  end
end