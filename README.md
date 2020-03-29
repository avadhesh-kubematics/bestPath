# BestPath

Difficulties related to traffic congestion are very common in large cities such as Porto and Lisbon. A useful approach to solve these issues is to offer all drivers in this city an application that provides information related to the roads congestion. Thus, the drivers can choose other paths and calculate more efficiently the time of arrival at a destination.

The concept behind our project is simple, we intend to develop a prototype capable of giving the customer the best route to a given destination. To do this, we aim to provide a framework with a map, dashboard and some statistics graphics. On the map, the user can see with different colours the intensity of traffic for a specific road segment.

At this moment, the big question is: How can we obtain this information to provide it to the users? To obtain the information that will be given to the users it is necessary to process the existing information. Through GPS coordinates from buses that move in Porto, it is possible to calculate de average velocity and to know the road segment where this information came from. Then with information about velocity on a specific road segment, we can infer whether or not there is traffic.

Regarding the technical accomplishment of such vision, our plan is to develop a solution based on SpringBoot providing a web interface for users, persisting data in a H2 database and interacting with the client-side through a REST API. We will have two sources for stream data, and all the information that arrives at the system will be dealt with Kafka. All the components will be developed in a container environment using docker (docker-compose and Dockerfile).

During all the development, tests will be created on various levels to ensure the correct functioning of the system. The connection of all components of the entire system must be guaranteed and all the components must communicate. It is necessary to ensure that the clock of all components is synchronized and the events are passed for the entire system.


## Requirements

- Java 8
- SpringBoot 2.2.6
- Intellij (Opcional)

## Create project

1. Create **SpringBoot** project (Spring Assistant):
    1.1 Group Id - ua.deti.bestpath
    1.2 Artifact Id - bestpath
    1.3 Version - 0.0.1
    1.4 Project name - bestpath
    1.5 Package name - ua.deti.bestpath

2. Implement the tests (Cucumber and Gherkin)


## Cucumber and Gherkin - tests

1. Add the follow dependency to pom.xml

```
	<dependency>
		<groupId>io.cucumber</groupId>
		<artifactId>cucumber-java</artifactId>
		<version>2.3.1</version>
		<scope>test</scope>
	</dependency>
	<dependency>
		<groupId>io.cucumber</groupId>
		<artifactId>cucumber-junit</artifactId>
		<version>2.3.1</version>
		<scope>test</scope>
	</dependency>
```

2. Install the plugin `cucumber-java`

3. On **Run > Edit Configurations…** open up the defaults list and select `Cucumber Java`

4. For the default settings:
    
    4.1 Main class - cucumber.api.cli.Main
    4.2 Glue - stepdefs
    4.3 Use classpath of module - bestpath

5. Right click on the first line of the feature (bestpath.feature) and select Run `Feature: bestpath`

6. Create a new package named stepdefs in src/test/java

7. Notice how the package for our step definitions is the same name as the package we set in the Glue setting for the run configuration. This is so that the run configuration knows where to look for the step definitions when a feature file is run. Inside our package, we create a new class called DemoDefinitions and copy the step definitions from the previous run's output.

8. **Running via Maven**: we want to ensure that our Cucumber scenarios can be run as part of a Maven build process. Create a new class inside src/test/java named RunCukesTest (you can see the code on this repository).


## Authors

* **Catarina Silva** - [catarinaacsilva](https://github.com/catarinaacsilva)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details