# Budget calcluator

# monthlt budget

income = 4000

rent = 1800
utilities = 200
internet = 100 # includes internet + phone
geoceries = 500
credit_card = 100

recurring_exp = rent + internet + geoceries + credit_card

recurring_exp = rent + utilities + internet + geoceries + credit_card

print("MONTHLY income: " + str(income))
print("recurring_exp: " + str(recurring_exp))
print("income after expenses: " + str(income - recurring_exp))
       



