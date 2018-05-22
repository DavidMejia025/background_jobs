class DelayTask < ApplicationRecord
  def self.inform(id)
    DelayTask.find(id).inform
  end
  def self.informe
    puts ".................................."
    puts " Start task"
    sleep(10)
    puts " ................................. "
    puts " The task ends here "
  end
end
