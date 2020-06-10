class User < ActiveRecord::Base
    has_many :to_dos
    has_many :tasks, through: :to_dos

    def self.make_new_user(attributes)
        User.find_or_create_by(attributes)
    end

    def destroy_completed_tasks
        to_dos.destroy_by(complete?: true)
    end

    def all_incomplete_tasks
        to_dos.where(complete?: false)
    end

    def all_complete_tasks
        to_dos.where(complete?: true)
    end

    def update_priorities
        to_dos.each do |to_do|
            if to_do.task.due_date == Date.today || to_do.task.due_date == Date.today.next #|| #to_do.task.due_date <=> Date.today = -1
                to_do.mark_priority
            end
        end
    end

    def get_priority_tasks
        self.update_priorities
        all_incomplete_tasks.where(priority_level: 5) 
    end

    



    

    
end