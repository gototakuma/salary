module PaysHelper
  def working_times(started, finished)
    format("%.2f",(((finished - started)/ 60) / 60))
  end
  
  def working_times_nextday(started, finished)
    format("%.2f",(((finished - started)/ 60) / 60 ) + 24.0 )
  end
  
  def working_times_nextday_overtime(started, finished)
    format("%.2f",(((finished - started) / 60) / 60) + 16.0)
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
  
  
  def basic_pay(started,finished,basic_salary)
    (((finished - started)/ 60) / 60)*basic_salary
  end
  
  def nextday_basic_pay(started,finished,basic_salary)
    ((((finished - started)/ 60) / 60) +24 )*basic_salary
  end
  
  def overtime_pay(started,finished,basic_salary)
    (basic_salary*8)+(((((finished - started)/ 60) / 60) - 8)*(basic_salary*1.25))
  end
  
  def nextday_overtime_pay(started,finished,basic_salary)
    (basic_salary*8)+(((((finished - started) / 60) / 60) + 16.0)*(basic_salary*1.25))
  end
end
