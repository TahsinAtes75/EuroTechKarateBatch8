Feature: Hello Karate

  Scenario: How to print
    Given print "Hello Karate"
    When print "another print"
    # When print 'another print' use single coat
    Then print 2+2
    * print 5+5

    Scenario: Variables

    * def name = "Ali"
    * def age = 30
    * print name , "is",age, "years old"
    * print name    +   "Ates"

     Scenario: Some json Object
     #  * def SDET = {"FirstName":"Mehmet","LastName":"Ates","Age":35,"Salary":5000,"Company":"EuroTech Academy"}

       * def SDET =
       """
       {
       "FirstName":"Mehmet",
       "LastName":"Ates",
       "Age":35,
       "Salary": 5000,
       "Company":"EuroTech Academy"
       }
       """
       * print SDET
       * print SDET.FirstName
       * print SDET.LastName
       * print SDET.Salary