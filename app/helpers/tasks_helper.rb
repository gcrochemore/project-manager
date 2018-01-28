module TasksHelper

    def show_task_identifier task
        if !task.project.bug_tracker.nil?
            return link_to task.identifier.to_s, task.project.bug_tracker + task.identifier.to_s, target: "_blank"
        else
            return task.identifier.to_s
        end
    end

    def show_task_estimated_time task
        estimated_time = (task.estimated_time ? task.estimated_time : 0)
        consumed_and_planned_time = (task.consumed_time ? task.consumed_time : 0) + (task.planned_time ? task.planned_time : 0)

        estimated_time_display =  fa_icon('calendar-o') + ' ' + number_with_precision(estimated_time, precision: 2)

        if estimated_time < consumed_and_planned_time
            return '<font class="estimated-time-lower-than-consumed-and-planned-time">' + estimated_time_display + '</font>'
        elsif estimated_time > consumed_and_planned_time
            return '<font class="estimated-time-gretter-than-consumed-and-planned-time">' + estimated_time_display + '</font>'
        else
            return estimated_time_display
        end
    end
end
