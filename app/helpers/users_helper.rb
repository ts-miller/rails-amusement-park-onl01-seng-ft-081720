module UsersHelper

    def user_type
        if @user.admin
            "ADMIN"
        else
            "GUEST"
        end
    end
end
