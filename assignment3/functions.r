xyplot(death ~ npatient | owner,
       xlab="Number of Patients Seen",
       ylab="30-day Death Rate",
       main="Heart Attack 30-day Death Rate by Ownership",
       panel=panel.lmline
       )