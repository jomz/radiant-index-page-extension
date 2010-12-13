class IndexPage < Page
  def render
    first_published_child = children.find_by_status_id("100", :conditions => ["published_at <= ?", Time.current])
    super if first_published_child.nil?
    if include_index?
      first_published_child.render
    else
      response.redirect first_published_child.url, 302
    end
  end
end