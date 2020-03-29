# BestPath


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
		<version>5.5.0</version>
		<scope>test</scope>
	</dependency>
	<dependency>
		<groupId>io.cucumber</groupId>
		<artifactId>cucumber-spring</artifactId>
		<version>5.5.0</version>
		<scope>test</scope>
	</dependency>
```

2. Install the plugin `cucumber-java`

3. On **Run > Edit Configurations…** open up the defaults list and select `Cucumber Java`

4. For the default settings:
    
    4.1 Main class - ua.deti.es.BestpathApplication
    4.2 Glue - stepdefs
    4.3 Use classpath of module - bestpath

5. **test > java > ua.deti.es > BestPathApplicationTests** - output of tests

## Authors

* **Catarina Silva** - [catarinaacsilva](https://github.com/catarinaacsilva)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details