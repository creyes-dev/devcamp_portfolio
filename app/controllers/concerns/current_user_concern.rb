module CurrentUserConcern
    extend ActiveSupport::Concern
    # Overriding devise current_user
    def current_user
        guest = GuestUser.new
        guest.name = "Guest User"
        guest.first_name = "Guest"
        guest.last_name = "User"
        guest.email = "guest@example.com"
        guest
    end


end