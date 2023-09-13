in_case_of_emergency do 
   use_credit_card
   panic       
end          
def in_case_of_emergency
 yield if emergency?
end
