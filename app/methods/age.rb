def age
    now = Time.now.utc.to_date
    dob = self.dob
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
end