def time_string(sec)
   t = Time.at(sec).utc.strftime("%H:%M:%S")
end