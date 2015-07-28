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
    <name>Ariane Community Core Mapping DS Mapper DSL</name>
    <packaging>bundle</packaging>
    {% endblock %}

    <dependencies>
        <dependency>
            <groupId>net.echinopsii.ariane.community.core.idm</groupId>
            <artifactId>net.echinopsii.ariane.community.core.idm.base</artifactId>
            <version>${version.net.echinopsii.ariane.community.core.idm}</version>
            <scope>provided</scope>
        </dependency>
        <dependency>
            <groupId>net.echinopsii.ariane.community.core.portal</groupId>
            <artifactId>net.echinopsii.ariane.community.core.portal.idmwat</artifactId>
            <version>${version.net.echinopsii.ariane.community.core.portal}</version>
            <scope>provided</scope>
        </dependency>
        <dependency>
            <groupId>net.echinopsii.ariane.community.core.mapping.ds</groupId>
            <artifactId>net.echinopsii.ariane.community.core.mapping.ds.api</artifactId>
            <version>${project.version}</version>
            <scope>provided</scope>
        </dependency>
    </dependencies>

    <build>
        <plugins>
            <!-- disable surefire -->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-surefire-plugin</artifactId>
                <version>2.7</version>
                <configuration>
                    <skipTests>true</skipTests>
                </configuration>
            </plugin>
            <!-- enable scalatest -->
            <plugin>
                <groupId>org.scalatest</groupId>
                <artifactId>scalatest-maven-plugin</artifactId>
                <configuration>
                    <reportsDirectory>${project.build.directory}/surefire-reports</reportsDirectory>
                    <junitxml>.</junitxml>
                    <filereports>WDF TestSuite.txt</filereports>
                </configuration>
                <executions>
                    <execution>
                        <id>test</id>
                        <goals>
                            <goal>test</goal>
                        </goals>
                    </execution>
                </executions>
            </plugin>

            <plugin>
                <groupId>net.alchim31.maven</groupId>
                <artifactId>scala-maven-plugin</artifactId>
                <executions>
                    <execution>
                        <id>scala-compile</id>
                        <goals>
                            <goal>add-source</goal>
                            <goal>compile</goal>
                        </goals>
                        <phase>process-resources</phase>
                    </execution>
                    <execution>
                        <id>scala-test-compile</id>
                        <phase>process-test-resources</phase>
                        <goals>
                            <goal>testCompile</goal>
                        </goals>
                    </execution>
                </executions>
                <configuration>
                    <scalaCompatVersion>2.10</scalaCompatVersion>
                    <jvmArgs>
                        <jvmArg>-Xms64m</jvmArg>
                        <jvmArg>-Xmx1024m</jvmArg>
                    </jvmArgs>
                </configuration>
            </plugin>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <configuration>
                    <source>${version.java.source}</source>
                    <target>${version.java.target}</target>
                    <showDeprecation>true</showDeprecation>
                    <showWarnings>true</showWarnings>
                    <optimize>true</optimize>
                </configuration>
            </plugin>
            <plugin>
                <groupId>org.apache.felix</groupId>
                <artifactId>maven-ipojo-plugin</artifactId>
                <extensions>true</extensions>
                <executions>
                    <execution>
                        <goals>
                            <goal>ipojo-bundle</goal>
                        </goals>
                    </execution>
                </executions>
            </plugin>
            <plugin>
                <!-- This plugin takes care of packaging the artifact as an OSGi Bundle -->
                <groupId>org.apache.felix</groupId>
                <artifactId>maven-bundle-plugin</artifactId>
                <configuration>
                    <instructions>
                        <Export-Package>
                            net.echinopsii.ariane.community.core.mapping.ds.dsl;version=${project.version},
                            net.echinopsii.ariane.community.core.mapping.ds.dsl.registry;version=${project.version},
                            net.echinopsii.ariane.community.core.mapping.ds.dsl.registry.model;version=${project.version}
                        </Export-Package>
                        <Import-Package>
                            javassist.util.proxy,
                            javax.persistence;version="[${version.osgimin.javax.persistence},${version.osgimax.javax.persistence})",
                            javax.persistence.criteria;version="[${version.osgimin.javax.persistence},${version.osgimax.javax.persistence})",
                            javax.persistence.spi;version="[${version.osgimin.javax.persistence},${version.osgimax.javax.persistence})",
                            javax.transaction;version="${version.javax.transaction.jta}",
                            org.h2;resolution:=optional,
                            org.mariadb.jdbc;resolution:=optional,
                            com.mysql.jdbc;resolution:=optional,
                            org.hibernate.proxy;version="[${version.osgimin.hibernate},${version.osgimax.hibernate})",
                            org.hibernate.jpa;version="[${version.osgimin.hibernate},${version.osgimax.hibernate})",
                            org.hibernate.jpa.boot.internal;version="[${version.osgimin.hibernate},${version.osgimax.hibernate})",
                            org.hibernate.jpa.boot.spi;version="[${version.osgimin.hibernate},${version.osgimax.hibernate})",
                            org.osgi.framework;version="[${version.osgimin.org.osgi.framework},${version.osgimax.org.osgi.framework})",
                            *
                        </Import-Package>
                    </instructions>
                </configuration>
            </plugin>
        </plugins>
    </build>
</project>