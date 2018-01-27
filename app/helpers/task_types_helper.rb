module TaskTypesHelper

    def show_task_type task
        if !task.task_type.nil?
            css_class = [ 'badge-primary', 'badge-secondary', 'badge-success', 'badge-danger', 'badge-warning',
                          'badge-info', 'badge-light', 'badge-dark' ]
            return '<span class="badge ' + css_class[task.task_type.id % 7] + '">' + task.task_type.to_s + '</span>'
        end
        return ''
    end
end
