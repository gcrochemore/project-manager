module TaskStatusesHelper

    def show_task_status task
        if !task.task_status.nil?
            return '<span class="badge badge-pill badge-info"><i>' + task.task_status.to_s + '</i></span>'
        end
        return ''
    end
end