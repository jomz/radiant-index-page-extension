class IndexPage < Page 

  #
  # The Index Page type redirects to the first published child
  #
  def render

    published_children = children.delete_if{|c| c.status_id != 100 }

    if !published_children.empty?

      if Radiant::Config["index.page"] && Radiant::Config["index.page"] == 'include'

        # Just render the first published child under the parents url
        published_children.first.render

      else

        # Prefix url with the site language?
        if defined?(SiteLanguage)  && SiteLanguage.count > 0
          redirect_url = (params[:language] || I18n.code.to_s) + published_children.first.url
        else
          redirect_url = published_children.first.url
        end

        # Redirect to a published child page
        response.headers['Refresh'] = "0; url=#{redirect_url}"
        ''
      end

    else

      # No published children found, so render the page itself
      super

    end
  end
  
end