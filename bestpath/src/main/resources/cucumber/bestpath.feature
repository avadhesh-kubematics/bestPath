Feature: Do you want to find the best path to your destination?
    Everybody wants to reach to the destination quickly

    Scenario: Find the fastest path to the Ribeira
        Given I am at Estação de São Bento, Porto
        When I search for the fastest path to Ribeira
        Then I find the road with less congestion

    Scenario: Simple and intuitive Visualization
        Given I need the instantly information about road congestion
        When I look to the Porto map
        Then I regard the principal information to avoid some roads

Feature: Statistics page
    A statistics page is available for everyone

    Scenario: Regard more information about general road congestion
        Given I want to know more information about road congestion
        When I see the statistics page on BestPath system
        Then I obtain a detailed information about general road congestion

    Scenario: Make studies about road traffic at Porto
        Given a person with interesting to study the road congestion
        When use the information available on system
        Then the person can to make a dataset.

    Scenario: official people make management based on existing data
        Given a data information about all the roads congestion
        When official people want to improve the quality of traffic
        Then they use the system to visualize the beahvior on last times.

Feature: All the system need a data source
    To provide the information is necessary a data source

    Scenario: Consuming data from buses velocities information
        Given several buses on Porto
        When is necessary the information about traffic to process the data
        Then use the velocity of these buses to know if the traffic is slow, fast or normal.

    Scenario: Consuming data about maximum velocity to a given road
        Given a road
        When we know if that road is congestion or not
        Then we compare the values of limits and the median velocity

Feature: A web application is available to provide the system
    The system can be access by the web application

    Scenario: I want to acces the system to find the best path
        Given the necessity to find the best path to the destination
        When I access the web application
        Then I can visualize the information

Feature: What can I do if a predict about a road is wrong?
    The web application has a report page.

    Scenario: I report the fails on road congestion predicts
        Given I access to the web application
        When I see the wrong road congestion predicts
        Then I report to the developers by the menu Report

