# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'
require 'radiant-index_page-extension/version'
class IndexPageExtension < Radiant::Extension
  version RadiantIndexPageExtension::VERSION
  description "Adds the ability to let a 'blank' parent page redirect to it's first child"
  url "http://github.com/jomz/radiant-index-page-extension"
  
  def activate
    IndexPage.send :include, IndexPageMethods
    IndexArchivePage.send :include, IndexPageMethods
  end
end
