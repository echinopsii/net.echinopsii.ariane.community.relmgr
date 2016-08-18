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
    <name>Ariane Community Core Portal IDM WebApp Tooling</name>
    <packaging>bundle</packaging>
    {% endblock %}

    <dependencies>
        <dependency>
            <groupId>net.echinopsii.ariane.community.core.portal</groupId>
            <artifactId>net.echinopsii.ariane.community.core.portal.base</artifactId>
            <version>${project.version}</version>
            <scope>provided</scope>
        </dependency>
        <dependency>
            <groupId>net.echinopsii.ariane.community.core.idm</groupId>
            <artifactId>net.echinopsii.ariane.community.core.idm.base</artifactId>
            <version>${version.net.echinopsii.ariane.core.idm}</version>
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
                            net.echinopsii.ariane.community.core.portal.base.plugin;version=${project.version},
                            net.echinopsii.ariane.community.core.portal.base.model;version=${project.version},
                            net.echinopsii.ariane.community.core.idm.base.proxy;version="[${version.net.echinopsii.ariane.core.idm.min},${version.net.echinopsii.ariane.core.idm.max})",
                            net.echinopsii.ariane.community.core.idm.base.model.jpa;version="[${version.net.echinopsii.ariane.core.idm.min},${version.net.echinopsii.ariane.core.idm.max})",
                            com.sun.faces;version="${version.javax.faces.api}",
                            com.sun.faces.application;version="${version.javax.faces.api}",
                            com.sun.faces.application.annotation;version="${version.javax.faces.api}",
                            com.sun.faces.application.resource;version="${version.javax.faces.api}",
                            com.sun.faces.application.view;version="${version.javax.faces.api}",
                            com.sun.faces.component;version="${version.javax.faces.api}",
                            com.sun.faces.component.behavior;version="${version.javax.faces.api}",
                            com.sun.faces.component.validator;version="${version.javax.faces.api}",
                            com.sun.faces.component.visit;version="${version.javax.faces.api}",
                            com.sun.faces.config;version="${version.javax.faces.api}",
                            com.sun.faces.config.configprovider;version="${version.javax.faces.api}",
                            com.sun.faces.config.processor;version="${version.javax.faces.api}",
                            com.sun.faces.context;version="${version.javax.faces.api}",
                            com.sun.faces.context.flash;version="${version.javax.faces.api}",
                            com.sun.faces.el;version="${version.javax.faces.api}",
                            com.sun.faces.ext.component;version="${version.javax.faces.api}",
                            com.sun.faces.ext.render;version="${version.javax.faces.api}",
                            com.sun.faces.ext.taglib;version="${version.javax.faces.api}",
                            com.sun.faces.ext.validator;version="${version.javax.faces.api}",
                            com.sun.faces.facelets;version="${version.javax.faces.api}",
                            com.sun.faces.facelets.compiler;version="${version.javax.faces.api}",
                            com.sun.faces.facelets.component;version="${version.javax.faces.api}",
                            com.sun.faces.facelets.el;version="${version.javax.faces.api}",
                            com.sun.faces.facelets.impl;version="${version.javax.faces.api}",
                            com.sun.faces.facelets.tag;version="${version.javax.faces.api}",
                            com.sun.faces.facelets.tag.composite;version="${version.javax.faces.api}",
                            com.sun.faces.facelets.tag.jsf;version="${version.javax.faces.api}",
                            com.sun.faces.facelets.tag.jsf.core;version="${version.javax.faces.api}",
                            com.sun.faces.facelets.tag.jsf.html;version="${version.javax.faces.api}",
                            com.sun.faces.facelets.tag.jstl.core;version="${version.javax.faces.api}",
                            com.sun.faces.facelets.tag.jstl.fn;version="${version.javax.faces.api}",
                            com.sun.faces.facelets.tag.ui;version="${version.javax.faces.api}",
                            com.sun.faces.facelets.util;version="${version.javax.faces.api}",
                            com.sun.faces.io;version="${version.javax.faces.api}",
                            com.sun.faces.lifecycle;version="${version.javax.faces.api}",
                            com.sun.faces.metadata.taglib;version="${version.javax.faces.api}",
                            com.sun.faces.mgbean;version="${version.javax.faces.api}",
                            com.sun.faces.renderkit;version="${version.javax.faces.api}",
                            com.sun.faces.renderkit.html_basic;version="${version.javax.faces.api}",
                            com.sun.faces.resources;version="${version.javax.faces.api}",
                            com.sun.faces.scripting;version="${version.javax.faces.api}",
                            com.sun.faces.scripting.groovy;version="${version.javax.faces.api}",
                            com.sun.faces.spi;version="${version.javax.faces.api}",
                            com.sun.faces.taglib;version="${version.javax.faces.api}",
                            com.sun.faces.taglib.html_basic;version="${version.javax.faces.api}",
                            com.sun.faces.taglib.jsf_core;version="${version.javax.faces.api}",
                            com.sun.faces.util;version="${version.javax.faces.api}",
                            com.sun.faces.vendor;version="${version.javax.faces.api}",
                            com.sun.faces.xhtml;version="${version.javax.faces.api}",
                            javax.annotation;version="${version.javax.annotations.jsr250-api}",
                            javax.el;version="${version.javax.el}",
                            javax.mail;version="${version.osgi.javax.mail}",
                            javax.mail.internet;version="${version.osgi.javax.mail}",
                            javax.servlet;version="${version.javax.servlet.servlet-api}",
                            javax.faces;version="${version.javax.faces.api}",
                            javax.faces.application;version="${version.javax.faces.api}",
                            javax.faces.bean;version="${version.javax.faces.api}",
                            javax.faces.component;version="${version.javax.faces.api}",
                            javax.faces.component.behavior;version="${version.javax.faces.api}",
                            javax.faces.component.html;version="${version.javax.faces.api}",
                            javax.faces.component.visit;version="${version.javax.faces.api}",
                            javax.faces.context;version="${version.javax.faces.api}",
                            javax.faces.convert;version="${version.javax.faces.api}",
                            javax.faces.el;version="${version.javax.faces.api}",
                            javax.faces.event;version="${version.javax.faces.api}",
                            javax.faces.lifecycle;version="${version.javax.faces.api}",
                            javax.faces.model;version="${version.javax.faces.api}",
                            javax.faces.render;version="${version.javax.faces.api}",
                            javax.faces.validator;version="${version.javax.faces.api}",
                            javax.faces.view;version="${version.javax.faces.api}",
                            javax.faces.view.facelets;version="${version.javax.faces.api}",
                            javax.faces.webapp;version="${version.javax.faces.api}",
                            javax.persistence;version="[${version.osgimin.javax.persistence},${version.osgimax.javax.persistence})",
                            javax.persistence.criteria;version="[${version.osgimin.javax.persistence},${version.osgimax.javax.persistence})",
                            javax.transaction;version="${version.javax.transaction.jta}",
                            org.apache.shiro;version="${version.org.apache.shiro}",
                            org.apache.shiro.authc;version="${version.org.apache.shiro}",
                            org.apache.shiro.config;version="${version.org.apache.shiro}",
                            org.apache.shiro.io;version="${version.org.apache.shiro}",
                            org.apache.shiro.mgt;version="${version.org.apache.shiro}",
                            org.apache.shiro.session;version="${version.org.apache.shiro}",
                            org.apache.shiro.session.mgt;version="${version.org.apache.shiro}",
                            org.apache.shiro.subject;version="${version.org.apache.shiro}",
                            org.apache.shiro.util;version="${version.org.apache.shiro}",
                            org.apache.shiro.web.config;version="${version.org.apache.shiro}",
                            org.apache.shiro.web.env;version="${version.org.apache.shiro}",
                            org.apache.shiro.web.filter;version="${version.org.apache.shiro}",
                            org.apache.shiro.web.filter.authc;version="${version.org.apache.shiro}",
                            org.apache.shiro.web.filter.authz;version="${version.org.apache.shiro}",
                            org.apache.shiro.web.filter.mgt;version="${version.org.apache.shiro}",
                            org.apache.shiro.web.filter.session;version="${version.org.apache.shiro}",
                            org.apache.shiro.web.mgt;version="${version.org.apache.shiro}",
                            org.apache.shiro.web.servlet;version="${version.org.apache.shiro}",
                            org.apache.shiro.web.session;version="${version.org.apache.shiro}",
                            org.apache.shiro.web.session.mgt;version="${version.org.apache.shiro}",
                            org.apache.shiro.web.subject;version="${version.org.apache.shiro}",
                            org.apache.shiro.web.subject.support;version="${version.org.apache.shiro}",
                            org.apache.shiro.web.util;version="${version.org.apache.shiro}",
                            org.apache.shiro.web.tags;version="${version.org.apache.shiro}",
                            org.primefaces;version="${version.org.primefaces.primefaces}",
                            org.primefaces.application;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.accordionpanel;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.ajaxstatus;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.api;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.autocomplete;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.behavior.ajax;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.behavior.printer;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.blockui;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.breadcrumb;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.button;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.calendar;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.captcha;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.carousel;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.celleditor;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.chart;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.chart.bar;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.chart.bubble;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.chart.donut;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.chart.line;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.chart.metergauge;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.chart.ohlc;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.chart.pie;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.clock;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.collector;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.colorpicker;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.column;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.columngroup;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.columns;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.commandbutton;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.commandlink;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.confirmdialog;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.contextmenu;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.dashboard;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.datagrid;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.datalist;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.datatable;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.datatable.feature;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.defaultcommand;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.dialog;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.dnd;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.dock;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.editor;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.effect;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.export;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.feedreader;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.fieldset;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.filedownload;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.fileupload;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.focus;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.galleria;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.gmap;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.graphicimage;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.growl;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.hotkey;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.idlemonitor;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.imagecompare;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.imagecropper;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.imageswitch;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.inplace;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.inputmask;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.inputtext;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.inputtextarea;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.keyboard;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.layout;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.lightbox;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.log;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.media;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.media.player;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.megamenu;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.menu;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.menubar;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.menubutton;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.menuitem;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.message;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.messages;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.mindmap;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.notificationbar;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.orderlist;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.outputlabel;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.outputpanel;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.overlaypanel;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.paginator;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.panel;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.panelgrid;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.panelmenu;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.password;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.photocam;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.picklist;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.poll;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.progressbar;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.radiobutton;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.rating;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.remotecommand;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.resetinput;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.resizable;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.resources;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.ring;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.row;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.roweditor;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.rowexpansion;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.rowtoggler;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.schedule;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.scrollpanel;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.selectbooleanbutton;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.selectbooleancheckbox;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.selectcheckboxmenu;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.selectmanybutton;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.selectmanycheckbox;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.selectmanymenu;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.selectonebutton;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.selectonelistbox;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.selectonemenu;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.selectoneradio;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.separator;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.slidemenu;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.slider;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.socket;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.spacer;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.spinner;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.splitbutton;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.stack;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.submenu;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.subtable;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.summaryrow;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.tabmenu;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.tabview;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.tagcloud;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.terminal;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.themeswitcher;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.tieredmenu;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.toolbar;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.tooltip;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.tree;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.treetable;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.watermark;version="${version.org.primefaces.primefaces}",
                            org.primefaces.component.wizard;version="${version.org.primefaces.primefaces}",
                            org.primefaces.context;version="${version.org.primefaces.primefaces}",
                            org.primefaces.event;version="${version.org.primefaces.primefaces}",
                            org.primefaces.event.data;version="${version.org.primefaces.primefaces}",
                            org.primefaces.event.map;version="${version.org.primefaces.primefaces}",
                            org.primefaces.facelets;version="${version.org.primefaces.primefaces}",
                            org.primefaces.json;version="${version.org.primefaces.primefaces}",
                            org.primefaces.lifecycle;version="${version.org.primefaces.primefaces}",
                            org.primefaces.model;version="${version.org.primefaces.primefaces}",
                            org.primefaces.model.chart;version="${version.org.primefaces.primefaces}",
                            org.primefaces.model.filter;version="${version.org.primefaces.primefaces}",
                            org.primefaces.model.map;version="${version.org.primefaces.primefaces}",
                            org.primefaces.model.mindmap;version="${version.org.primefaces.primefaces}",
                            org.primefaces.model.tagcloud;version="${version.org.primefaces.primefaces}",
                            org.primefaces.push;version="${version.org.primefaces.primefaces}",
                            org.primefaces.renderkit;version="${version.org.primefaces.primefaces}",
                            org.primefaces.util;version="${version.org.primefaces.primefaces}",
                            org.primefaces.visit;version="${version.org.primefaces.primefaces}",
                            org.primefaces.webapp;version="${version.org.primefaces.primefaces}",
                            org.primefaces.webapp.filter;version="${version.org.primefaces.primefaces}",
                            org.slf4j;version="${version.org.slf4j}",
                            org.w3c.dom;version="0.0.0"
                        </Import-Package>
                        <Export-Package>
                            net.echinopsii.ariane.community.core.portal.idmwat.controller;version="${project.version}",
                            net.echinopsii.ariane.community.core.portal.idmwat.controller.group;version="${project.version}",
                            net.echinopsii.ariane.community.core.portal.idmwat.controller.permission;version="${project.version}",
                            net.echinopsii.ariane.community.core.portal.idmwat.controller.resource;version="${project.version}",
                            net.echinopsii.ariane.community.core.portal.idmwat.controller.role;version="${project.version}",
                            net.echinopsii.ariane.community.core.portal.idmwat.controller.user;version="${project.version}",
                            net.echinopsii.ariane.community.core.portal.idmwat.tools;version="${project.version}"
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