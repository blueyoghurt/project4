module EventsHelper

  def show_time(event)
    event.start_time.strftime("%l:%M %P ")
  end

end
