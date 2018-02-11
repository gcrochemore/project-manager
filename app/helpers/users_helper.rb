module UsersHelper
    def show_total_time user_day_assignment
        if ((user_day_assignment.day_number > 5) && (user_day_assignment.total_time > 0)) ||
            ((user_day_assignment.total_time > 1) && (user_day_assignment.day_number < 6))
            return '<span class="badge badge-pill badge-danger">' + user_day_assignment.total_time.round(2).to_s + '</span>'
        else
            return '<span class="badge badge-pill badge-info">' + user_day_assignment.total_time.round(2).to_s + '</span>'
        end
    end
end
