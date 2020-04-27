# BestPath

Difficulties related to traffic congestion are very common in large cities such as Porto and Lisbon.

A useful approach to solve these issues is to offer all drivers in this city an application that provides information related to the roads congestion. BestPath allows drivers to choose other routes and more efficiently calculate the time of arrival at a destination.

Using GPS coordinates from buses that move in Porto, it's possible to calculate de average velocity. We can then infer whether or not there is traffic.


## Requirements

- Java 8+
- SpringBoot 2.2.6
- Maven 3+
- Intellij (Opcional)


## Execution

To execute the application just run:

```bash
mvn clean compile spring-boot:run
```

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

8. **Running via Maven**: we want to ensure that our Cucumber scenarios can be run as part of a Maven build process. Create a new class inside src/test/java named RunCucumberTest (you can see the code on this repository).


9. For each feature select the file (*.feature) that you want to run.

## Vm and dashboard

- **VM**: 192.168.160.103   (Password: FYddio2g)
- **Dashboard** 192.168.160.87:9090

Note: UA VPN

## Important notes

1. Each of the files with features should have only one feature.