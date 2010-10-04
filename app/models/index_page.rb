class IndexPage < Page

  def render
    published_children = children.delete_if{|c| c.status_id != 100 }
    if published_children.empty?
      super
    else
      page = published_children.first
      if include_index?
        page.render
      else
        response.redirect page.url, 302
      end
    end
  end

  private

    def include_index?
      Radiant::Config["index.page"] && Radiant::Config["index.page"] == 'include'
    end

end