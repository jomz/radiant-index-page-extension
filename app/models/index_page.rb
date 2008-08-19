class IndexPage < Page 
  
  def render
    published_children = children.delete_if{|c| c.status_id != 100 }
    if !published_children.empty?
      if defined?(SiteLanguage)  && SiteLanguage.count > 0
        response.redirect "/#{Locale.active.language.code}#{published_children.first.url}", "302 Found"
      else
        response.redirect published_children.first.url, "302 Found"
      end
    else
      super
    end
  end
  
end