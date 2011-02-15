module IndexPageMethods
  def response_code
    response.status
  end

  private

  def include_index?
    Radiant::Config["index.page"] && Radiant::Config["index.page"] == 'include'
  end
end
