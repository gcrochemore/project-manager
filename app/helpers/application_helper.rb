module ApplicationHelper
    def show_day day_number
        day = ['', 'L', 'M', 'M', 'J', 'V', 'S', 'D']
        return day[day_number]
    end
end
