class Computer < ActiveRecord::Base
  def toggle_status
    if self.status >= 2
      self.status = 0
    else
      self.status += 1
    end
    self.save
  end
end
