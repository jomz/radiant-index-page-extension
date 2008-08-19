class IndexPageExtension < Radiant::Extension
  version "1.0"
  description "Adds the ability to let a 'blank' parent page redirect to it's first child"
  url "http://www.gorilla-webdesign.be"
  
  # define_routes do |map|
  #   map.connect 'admin/index_page/:action', :controller => 'admin/index_page'
  # end
  
  def activate
    IndexPage
    # admin.tabs.add "Index Page", "/admin/index_page", :after => "Layouts", :visibility => [:all]
  end
  
  def deactivate
    # admin.tabs.remove "Index Page"
  end
  
end