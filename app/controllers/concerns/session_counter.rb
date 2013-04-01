module SessionCounter
  extend ActiveSupport::Concern

  private

    def inc_counter
      session[:counter] = session[:counter].nil? ? 1 : session[:counter] + 1
    end

    def reset_counter
      session[:counter] = nil
    end
end
