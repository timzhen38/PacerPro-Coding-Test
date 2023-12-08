class Item < ApplicationRecord
    #Updates the deleted_at attribute with the current timestamp
    def soft_delete
        update(deleted_at:Time.current)
    end

    #Sets the deleted_at attribute to nil
    def restore
        update(deleted_at:nil)
    end

    #Default scope to exclude "deleted" items from normal queries
    default_scope{
        where(deleted_at:nil)
    }
end
