module PaysHelper

  def working_times_a(started_a,started_b,finished_a,finished_b)
    format("%.2f",(finished_a - started_a)+((finished_b - started_b) / 60.0))
  end
  
  def working_nextday_times_a(started_a,started_b,finished_a,finished_b)
    format("%.2f",((finished_a+24) - started_a)+((finished_b - started_b) / 60.0))
  end
  
  def working_nextday_overtimes_a(started_a,started_b,finished_a,finished_b)
    format("%.2f",((finished_a+16) - started_a)+((finished_b - started_b) / 60.0))
  end
  
  def working_overtimes(started_a,started_b,finished_a,finished_b)
    format("%.2f",(finished_a - started_a)+((finished_b - started_b) / 60.0) - 8.0)
  end
  
  def rechargesub(recharge,salary)
    recharge - salary
  end
end
