module PaysHelper
  def working_times(started, finished)
    format("%.2f",(((finished - started)/ 60) / 60))
  end
  
  def working_times_overtime(started, finished)
    format("%.2f",(((finished - started)/ 60) / 60) - 8.0)
  end
  
  def working_times_sum(seconds)
    format("%.2f", seconds / 60 / 60.0)
  end
  
  def working_times_overtime_sum(secondsov)
    format("%.2f", secondsov / 60.0 / 60.0)
  end
end
