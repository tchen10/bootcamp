module ApplicationHelper

  def active_if(options)
    if params.merge(options) == params
      return "active"
    end
  end

end
