class IndexPageExtension < Radiant::Extension
  version "1.0"
  description "Adds the ability to let a 'blank' parent page redirect to it's first child"
  url "http://www.gorilla-webdesign.be"
  
  def activate
    IndexPage.send :include, IndexPageMethods
    IndexArchivePage.send :include, IndexPageMethods
  end
  
end