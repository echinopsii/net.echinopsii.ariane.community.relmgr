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
    <name>Ariane Community Core Directory Base</name>
    <packaging>bundle</packaging>
    {% endblock %}

    <dependencies>
        <dependency>
            <groupId>net.echinopsii.ariane.community.core.portal</groupId>
            <artifactId>net.echinopsii.ariane.community.core.portal.base</artifactId>
            <version>${version.net.echinopsii.ariane.core.portal}</version>
            <scope>provided</scope>
        </dependency>
    </dependencies>

    <build>
        <plugins>
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
                        <Embed-Dependency>*;scope=compile|runtime</Embed-Dependency>
                        <Embed-Transitive>true</Embed-Transitive>
                        <Import-Package>
                            com.fasterxml.jackson.datatype.jsonorg;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.databind;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.databind.annotation;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.databind.cfg;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.databind.deser;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.databind.deser.impl;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.databind.deser.std;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.databind.exc;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.databind.ext;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.databind.introspect;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.databind.jsonFormatVisitors;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.databind.jsonschema;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.databind.jsontype;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.databind.jsontype.impl;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.databind.module;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.databind.node;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.databind.ser;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.databind.ser.impl;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.databind.ser.std;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.databind.type;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.databind.util;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.annotation;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.core;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.core.base;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.core.format;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.core.io;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.core.json;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.core.sym;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.core.type;version="${version.com.fasterxml.jackson}",
                            com.fasterxml.jackson.core.util;version="${version.com.fasterxml.jackson}",
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
                        <Export-Package>
                            net.echinopsii.ariane.community.core.directory.base.model;version=${project.version},
                            net.echinopsii.ariane.community.core.directory.base.model.organisational;version=${project.version},
                            net.echinopsii.ariane.community.core.directory.base.model.technical.network;version=${project.version},
                            net.echinopsii.ariane.community.core.directory.base.model.technical.system;version=${project.version},
                            net.echinopsii.ariane.community.core.directory.base.json;version=${project.version},
                            net.echinopsii.ariane.community.core.directory.base.json.ds.organisational;version=${project.version},
                            net.echinopsii.ariane.community.core.directory.base.json.ds.technical.network;version=${project.version},
                            net.echinopsii.ariane.community.core.directory.base.json.ds.technical.system;version=${project.version},
                            net.echinopsii.ariane.community.core.directory.base.persistence;version=${project.version}
                        </Export-Package>
                    </instructions>
                </configuration>
            </plugin>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-javadoc-plugin</artifactId>
                <executions>
                    <execution>
                        <id>attach-javadocs</id>
                        <goals>
                            <goal>jar</goal>
                        </goals>
                    </execution>
                </executions>
            </plugin>
        </plugins>
    </build>
</project>