Feature: Assert with Karate

Scenario: Matching Example
 * def name = "Mustafa"
 * match name == "Mustafa"
 # * match name == "Mus" error mesaji
 * match name != "Ali"

 Scenario: More matching example
  * def employee =
  """
  {
  "FirstName":"Tarik",
  "LastName":'Kutlu',
  "Salary":10000,
  "Active":true
  }
  """
  # * print employee
  * match employee.FirstName == "Tarik"
  * match employee.LastName == 'Kutlu'
  * match employee.Salary == 10000
  * match employee.Active == true
  # Similar to Assert.assertEquals

 # assertion for data type is it string or integer or boelan
 Scenario: fuzzy matching
 * def SeniorSDET =
  """
  {
  "FirstName":"Fatma",
  "LastName":'Okur',
  "Age":30,
  "Salary":10000,
  "Active":true
  }
  """
  * match SeniorSDET.FirstName == "#string"
 # * match SeniorSDET.FirstName == "#number"
  * match SeniorSDET.LastName == "#string"
  * match SeniorSDET.Age == "#number"
  * match SeniorSDET.Active == "#boolean"
  

