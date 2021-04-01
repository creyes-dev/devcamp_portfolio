module CurrentUserConcern
    extend ActiveSupport::Concern
    # Overriding devise current_user
    def current_user
        super || OpenStruct.new(name: "Guest User", first_name: "Guest", last_name: "User", email: "guest@example.com")
    end
end