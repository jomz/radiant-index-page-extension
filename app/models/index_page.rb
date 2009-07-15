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
        response.redirect redirect_url(page), 302
      end
    end
  end

  def response_code
    response.status
  end

  private

    def include_index?
      Radiant::Config["index.page"] && Radiant::Config["index.page"] == 'include'
    end

    def redirect_url(page)
      if is_site_language_dependant?
        site_language + page.url
      else
        page.url
      end
    end

    def is_site_language_dependant?
      defined?(SiteLanguage) && SiteLanguage.count > 0
    end

    def site_language
      params[:language] || I18n.code.to_s
    end
end