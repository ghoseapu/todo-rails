class Task < ApplicationRecord
    def percent_complete
        return 0 if total_items == 0
        (100 * completed_items.to_f / total_items).round(1)
    end
    
    def completed_items
        @completed_items ||= tasks.task_completed.count
    end
    
    def total_items
        @total_items ||= tasks.count
    end
    
    def status
        case percent_complete.to_i
        when 0
          'Not started'
        when 100
          'Complete'
        else
          'In Progress'
        end
    end
end
