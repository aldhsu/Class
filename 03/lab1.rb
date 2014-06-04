days_of_the_week = ["Monday", "Tuesday","Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

days_of_the_week.unshift(days_of_the_week.pop)
p days_of_the_week

week_end = [days_of_the_week[6..7]]

week_day = [days_of_the_week[1..5]]

week = [week_end, week_day]

p week

week.delete_at(week.index(week_end))
p week[0].sort!

