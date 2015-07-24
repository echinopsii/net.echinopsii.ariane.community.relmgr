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
    <name>Ariane Community Core Mapping DS Blueprints Implementation</name>
    <packaging>bundle</packaging>
    {% endblock %}

    <dependencies>
        <!-- Internal -->
        <dependency>
            <groupId>net.echinopsii.ariane.community.core.mapping.ds</groupId>
            <artifactId>net.echinopsii.ariane.community.core.mapping.ds.api</artifactId>
            <version>${project.version}</version>
            <scope>provided</scope>
        </dependency>
        <dependency>
            <groupId>net.echinopsii.ariane.community.core.mapping.ds</groupId>
            <artifactId>net.echinopsii.ariane.community.core.mapping.ds.dsl</artifactId>
            <version>${project.version}</version>
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
                <!-- This plugin takes care of packaging the artifact as an OSGi Bundle -->
                <groupId>org.apache.felix</groupId>
                <artifactId>maven-bundle-plugin</artifactId>
                <configuration>
                    <instructions>
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
                            net.echinopsii.ariane.community.core.mapping.ds;version="${project.version}",
                            net.echinopsii.ariane.community.core.mapping.ds.service;version="${project.version}",
                            net.echinopsii.ariane.community.core.mapping.ds.domain;version="${project.version}",
                            net.echinopsii.ariane.community.core.mapping.ds.dsl;version="${project.version}",
                            net.echinopsii.ariane.community.core.mapping.ds.repository;version="${project.version}",
                            com.tinkerpop.blueprints.impls.neo4j2;version="[${version.osgimin.com.tinkerpop.blueprints},${version.osgimax.com.tinkerpop.blueprints})";resolution:=optional,
                            com.tinkerpop.blueprints.impls.orient;version="[${version.osgimin.com.tinkerpop.blueprints},${version.osgimax.com.tinkerpop.blueprints})";resolution:=optional,
                            com.tinkerpop.blueprints;version="[${version.osgimin.com.tinkerpop.blueprints},${version.osgimax.com.tinkerpop.blueprints})",
                            org.infinispan;version="${version.org.infinispan}",
                            org.infinispan.configuration.cache;version="${version.org.infinispan}",
                            org.infinispan.manager;version="${version.org.infinispan}",
                            org.neo4j.graphdb;version="${version.osgi.com.neo4j}";resolution:=optional,
                            org.neo4j.graphdb.factory;version="${version.osgi.com.neo4j}";resolution:=optional,
                            org.neo4j.kernel;version="${version.osgi.com.neo4j}";resolution:=optional,
                            org.neo4j.kernel.logging;version="${version.osgi.com.neo4j}";resolution:=optional,
                            org.neo4j.server;version="${version.osgi.com.neo4j}";resolution:=optional,
                            org.neo4j.server.configuration;version="${version.osgi.com.neo4j}";resolution:=optional,
                            org.neo4j.server.configuration.validation;version="${version.osgi.com.neo4j}";resolution:=optional,
                            org.neo4j.server.database;version="${version.osgi.com.neo4j}";resolution:=optional,
                            org.neo4j.server.webadmin.rest;version="${version.osgi.com.neo4j}";resolution:=optional,
                            org.neo4j.server.rest.web;version="${version.osgi.com.neo4j}";resolution:=optional,
                            org.neo4j.server.rest.discovery;version="${version.osgi.com.neo4j}";resolution:=optional,
                            org.slf4j;version="${version.org.slf4j}"
                        </Import-Package>
                        <Export-Package>
                            net.echinopsii.ariane.core.mapping.ds.blueprintsimpl.repository;version=${project.version},
                            net.echinopsii.ariane.community.core.mapping.ds.blueprintsimpl.service;version=${project.version}
                        </Export-Package>
                    </instructions>
                </configuration>
            </plugin>
        </plugins>
    </build>
</project>
