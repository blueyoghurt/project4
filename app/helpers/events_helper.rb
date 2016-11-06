module EventsHelper

  def show_time(event)
    event.strftime("%l:%M %P ")
  end

  def show_date(event)
    event.strftime("%d %b")
  end

end
