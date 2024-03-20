from datetime import date

class Person:
    def __init__(self, name, country, dob):
        self.name = name
        self.country = country
        self.dob = dob
    
    def get_age(self):
        today = date.today()
        days = today.day - self.dob.day
        months = today.month - self.dob.month
        years = today.year - self.dob.year
        
        if days < 0:
            months -= 1
            days += self.get_days_in_month(self.dob.month, self.dob.year)
        if months < 0:
            years -= 1
            months += 12

        print(f"{years} years,{months} months,{days} days")

    def display_details(self):

        print(f"Name:{self.name}\nCountry:{self.country}")
        
    
    @staticmethod
    def get_days_in_month(month, year):
        if month == 2:
            if year % 4 == 0 and (year % 100 != 0 or year % 400 == 0): 
                return 29  
            else:
                return 28
        elif month in [4, 6, 9, 11]: 
            return 30
        else:
            return 31

p = Person('Suresh', 'India', date(2003,5,24))
p.display_details()
p.get_age()
