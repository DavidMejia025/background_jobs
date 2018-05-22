class DelayTask < ApplicationRecord
  def informe
    sleep(19)
    puts " ................................. "
    puts " The task ends here " 
    redirect_to edit_path
  end
end
