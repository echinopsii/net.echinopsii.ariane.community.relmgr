<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>
    {% block attributes %}
    <parent>
        <groupId>{{ groupId }}</groupId>
        <artifactId>{{ artifactId }}</artifactId>
        <version>{{ version }}</version>
        <relativePath>..</relativePath>
    </parent>

    <groupId>{{ artifactId }}</groupId>
    <artifactId>{{ artifactId }}.{{ name }}</artifactId>
    <name>Ariane Community Plugin For RabbitMQ - JSON Parser</name>
    <packaging>bundle</packaging>
    {% endblock %}

    <dependencies>
        <dependency>
            <groupId>com.rabbitmq</groupId>
            <artifactId>amqp-client</artifactId>
            <version>3.3.5</version>
            <scope>test</scope>
        </dependency>
    </dependencies>

    <build>
        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <configuration>
                    <compilerId>groovy-eclipse-compiler</compilerId>
                </configuration>
                <dependencies>
                    <dependency>
                        <groupId>org.codehaus.groovy</groupId>
                        <artifactId>groovy-eclipse-compiler</artifactId>
                        <version>2.5.1-M3</version>
                        <!-- <version>2.8.0-01</version> -->
                        <exclusions>
                            <exclusion>
                                <groupId>org.codehaus.groovy</groupId>
                                <artifactId>groovy-eclipse-batch</artifactId>
                            </exclusion>
                        </exclusions>
                    </dependency>
                    <dependency>
                        <groupId>org.codehaus.groovy</groupId>
                        <artifactId>groovy-eclipse-batch</artifactId>
                        <!--<version>2.1.5-03</version>-->
                        <version>1.8.0-03</version>
                    </dependency>
                    <dependency>
                        <groupId>org.codehaus.groovy.modules.http-builder</groupId>
                        <artifactId>http-builder</artifactId>
                        <version>0.7</version>
                    </dependency>
                </dependencies>
            </plugin>

            <plugin>
                <groupId>org.codehaus.mojo</groupId>
                <artifactId>build-helper-maven-plugin</artifactId>
                <executions>
                    <execution>
                        <id>add-source</id>
                        <phase>generate-sources</phase>
                        <goals>
                            <goal>add-source</goal>
                        </goals>
                        <configuration>
                            <sources>
                                <source>src/main/groovy</source>
                            </sources>
                        </configuration>
                    </execution>
                    <execution>
                        <id>add-test-source</id>
                        <phase>generate-test-sources</phase>
                        <goals>
                            <goal>add-test-source</goal>
                        </goals>
                        <configuration>
                            <sources>
                                <source>src/test/groovy</source>
                            </sources>
                        </configuration>
                    </execution>
                </executions>
            </plugin>

            <plugin>
                <groupId>org.apache.felix</groupId>
                <artifactId>maven-bundle-plugin</artifactId>
                <extensions>true</extensions>
                <configuration>
                    <instructions>
                        <Bundle-Description>${project.name}</Bundle-Description>
                        <Bundle-ClassPath>.</Bundle-ClassPath>
                        <Embed-Directory>lib</Embed-Directory>
                        <Embed-Dependency>*;scope=compile|runtime</Embed-Dependency>
                        <Embed-Transitive>true</Embed-Transitive>
                        <Import-Package>
                            org.w3c.dom*,
                            org.ccil.cowan.tagsoup,
                            javax.net.ssl,
                            javax.xml.parsers,
                            org.xml.sax.helpers,
                            org.xml.sax,
                            org.slf4j;version="${version.org.slf4j}"
                        </Import-Package>
                        <Export-Package>
                            net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser.serializable;version=${project.version},
                            net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser.tools;version=${project.version}
                        </Export-Package>
                    </instructions>
                </configuration>
            </plugin>
        </plugins>
    </build>
</project>