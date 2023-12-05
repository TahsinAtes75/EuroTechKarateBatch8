Feature: API GET request

 # Background:

  #  * url "https://reqres.in/"

  Scenario: GET request
    Given url "https://reqres.in/api/user/2"
   # Given path "api/user/2"
    When method GET
    Then status 200
    And print response

    Scenario: List of user GET request
      * url "https://reqres.in/api/users?page=2"
     # * path "api/users?page=2"
      * method get
      * status 200
      * print response
      * match header Content-Type == "application/json; charset=utf-8"
      And match header Date == "#present"


      Scenario: Json Body Verification
        * url "https://reqres.in/api/user/2"
      #  * path "api/user/2"
        When method GET
        Then status 200
        * def response =
        """
       {
        "data": {
    "color": "#C74375",
    "year": 2001,
    "name": "fuchsia rose",
    "id": 2,
    "pantone_value": "17-2031"
  },
  "support": {
    "text": "To keep ReqRes free, contributions towards server costs are appreciated!",
    "url": "https://reqres.in/#support-heading"
  }
}
}
 """
 * match response.data.id == 2
 And match response.data.name == "fuchsia rose"


 Scenario: Request with Path
   Given url "https://reqres.in/"
   * path "api/users"
   * param id = 6
   When method GET
   Then status 200
   And print response