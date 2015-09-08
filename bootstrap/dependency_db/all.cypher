begin
create (_221025:`FileNode` {`nID`:1, `name`:"pom.xml", `path`:"ariane.community.installer/tools/", `type`:"pom", `version`:"0.1.0"})
create (_221026:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.installer.tools", `groupId`:"net.echinopsii.ariane.community.installer", `nID`:2, `name`:"tools", `order`:1, `version`:"0.1.0"})
create (_221027:`FileNode` {`nID`:3, `name`:"pom.xml", `path`:"ariane.community.installer/", `type`:"pom", `version`:"0.1.0"})
create (_221028:`FileNode` {`nID`:4, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.1.0"})
create (_221029:`Module` {`git_repos`:"net.echinopsii.ariane.community.installer.git", `nID`:5, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.1.0"})
create (_221030:`FileNode` {`nID`:6, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_221031:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:7, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_221032:`FileNode` {`nID`:8, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_221033:`FileNode` {`nID`:9, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_221034:`FileNode` {`nID`:10, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_221035:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.idm.git", `nID`:11, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_221036:`FileNode` {`nID`:12, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.0"})
create (_221037:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:13, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_221038:`FileNode` {`nID`:14, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.0"})
create (_221039:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:15, `name`:"idmwat", `order`:2, `version`:"0.5.0"})
create (_221040:`FileNode` {`nID`:16, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.0"})
create (_221041:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:17, `name`:"wab", `order`:3, `version`:"0.5.0"})
create (_221042:`FileNode` {`nID`:18, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.0"})
create (_221043:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:19, `name`:"wat", `order`:4, `version`:"0.5.0"})
create (_221044:`FileNode` {`nID`:20, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.0"})
create (_221045:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:21, `name`:"wresources", `order`:5, `version`:"0.5.0"})
create (_221046:`FileNode` {`nID`:22, `name`:"ariane.community.core.portal-0.5.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_221047:`FileNode` {`nID`:23, `name`:"net.echinopsii.ariane.community.core.portal_0.5.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_221048:`FileNode` {`nID`:24, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.0"})
create (_221049:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.portal.git", `nID`:25, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.0"})
create (_221050:`FileNode` {`nID`:26, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.0"})
create (_221051:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:27, `name`:"api", `order`:1, `version`:"0.5.0"})
create (_221052:`FileNode` {`nID`:28, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.0"})
create (_221053:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:29, `name`:"blueprints", `order`:2, `version`:"0.5.0"})
create (_221054:`FileNode` {`nID`:30, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.0"})
create (_221056:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:31, `name`:"dsl", `order`:3, `version`:"0.5.0"})
create (_221057:`FileNode` {`nID`:32, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.0"})
create (_221058:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:33, `name`:"rim", `order`:4, `version`:"0.5.0"})
create (_221059:`FileNode` {`nID`:34, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.0"})
create (_221060:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:35, `name`:"ds", `order`:5, `version`:"0.5.0"})
create (_221061:`FileNode` {`nID`:36, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.0"})
create (_221062:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:37, `name`:"taitale", `order`:6, `version`:"0.5.0"})
create (_221063:`FileNode` {`nID`:38, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.0"})
create (_221064:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:39, `name`:"wat", `order`:7, `version`:"0.5.0"})
create (_221065:`FileNode` {`nID`:40, `name`:"ariane.community.core.mapping-0.5.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_221066:`FileNode` {`nID`:41, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_221067:`FileNode` {`nID`:42, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.0"})
create (_221068:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.mapping.git", `nID`:43, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.0"})
create (_221069:`FileNode` {`nID`:44, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.0"})
create (_221070:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:45, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_221071:`FileNode` {`nID`:46, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.0"})
create (_221072:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:47, `name`:"wat", `order`:2, `version`:"0.5.0"})
create (_221073:`FileNode` {`nID`:48, `name`:"ariane.community.core.directory-0.5.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_221074:`FileNode` {`nID`:49, `name`:"net.echinopsii.ariane.community.core.directory_0.5.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_221075:`FileNode` {`nID`:50, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.0"})
create (_221076:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.directory.git", `nID`:51, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.0"})
create (_221077:`FileNode` {`nID`:52, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.0"})
create (_221078:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:53, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_221079:`FileNode` {`nID`:54, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.0"})
create (_221080:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:55, `name`:"wat", `order`:2, `version`:"0.5.0"})
create (_221081:`FileNode` {`nID`:56, `name`:"ariane.community.core.injector-0.5.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_221082:`FileNode` {`nID`:57, `name`:"net.echinopsii.ariane.community.core.injector_0.5.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_221083:`FileNode` {`nID`:58, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.0"})
create (_221084:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.injector.git", `nID`:59, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.0"})
create (_221085:`Module` {`git_repos`:"net.echinopsii.ariane.community.environment.git", `nID`:60, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.0"})
create (_221086:`FileNode` {`nID`:61, `name`:"ariane.community.distrib-0.5.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.0"})
create (_221087:`FileNode` {`nID`:62, `name`:"pom-ariane.community.distrib-0.5.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.0"})
create (_221088:`FileNode` {`nID`:63, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.0"})
create (_221089:`FileNode` {`nID`:64, `name`:"ariane.community.plugins-distrib-0.5.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.0"})
create (_221090:`FileNode` {`nID`:65, `name`:"ariane.community.git.repos-0.5.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.0"})
create (_221091:`Distribution` {`editable`:"false", `nID`:66, `name`:"community", `version`:"0.5.0"})
create (_221093:`FileNode` {`nID`:67, `name`:"pom.xml", `path`:"ariane.community.installer/tools/", `type`:"pom", `version`:"0.1.0"})
create (_221094:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.installer.tools", `groupId`:"net.echinopsii.ariane.community.installer", `nID`:68, `name`:"tools", `order`:1, `version`:"0.1.0"})
create (_221095:`FileNode` {`nID`:69, `name`:"pom.xml", `path`:"ariane.community.installer/", `type`:"pom", `version`:"0.1.0"})
create (_221096:`FileNode` {`nID`:70, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.1.0"})
create (_221097:`Module` {`git_repos`:"net.echinopsii.ariane.community.installer.git", `nID`:71, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.1.0"})
create (_221098:`FileNode` {`nID`:72, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_221099:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:73, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_221100:`FileNode` {`nID`:74, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_221101:`FileNode` {`nID`:75, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_221102:`FileNode` {`nID`:76, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_221103:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.idm.git", `nID`:77, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_221104:`FileNode` {`nID`:78, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_221105:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:79, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_221106:`FileNode` {`nID`:80, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_221107:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:81, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_221108:`FileNode` {`nID`:82, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_221109:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:83, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_221110:`FileNode` {`nID`:84, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_221111:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:85, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_221112:`FileNode` {`nID`:86, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_221113:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:87, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_221114:`FileNode` {`nID`:88, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_221115:`FileNode` {`nID`:89, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_221116:`FileNode` {`nID`:90, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_221117:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.portal.git", `nID`:91, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_221118:`FileNode` {`nID`:92, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.1"})
create (_221119:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:93, `name`:"api", `order`:1, `version`:"0.5.1"})
create (_221120:`FileNode` {`nID`:94, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.1"})
create (_221121:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:95, `name`:"blueprints", `order`:2, `version`:"0.5.1"})
create (_221122:`FileNode` {`nID`:96, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.1"})
create (_221123:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:97, `name`:"dsl", `order`:3, `version`:"0.5.1"})
create (_221124:`FileNode` {`nID`:98, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.1"})
create (_221125:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:99, `name`:"rim", `order`:4, `version`:"0.5.1"})
create (_221126:`FileNode` {`nID`:100, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.1"})
create (_221127:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:101, `name`:"ds", `order`:5, `version`:"0.5.1"})
create (_221128:`FileNode` {`nID`:102, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.1"})
create (_221129:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:103, `name`:"taitale", `order`:6, `version`:"0.5.1"})
create (_221130:`FileNode` {`nID`:104, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.1"})
create (_221131:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:105, `name`:"wat", `order`:7, `version`:"0.5.1"})
create (_221132:`FileNode` {`nID`:106, `name`:"ariane.community.core.mapping-0.5.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_221133:`FileNode` {`nID`:107, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_221134:`FileNode` {`nID`:108, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.1"})
create (_221135:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.mapping.git", `nID`:109, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.1"})
create (_221136:`FileNode` {`nID`:110, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_221137:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:111, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_221138:`FileNode` {`nID`:112, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_221139:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:113, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_221140:`FileNode` {`nID`:114, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_221141:`FileNode` {`nID`:115, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_221142:`FileNode` {`nID`:116, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_221143:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.directory.git", `nID`:117, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_221144:`FileNode` {`nID`:118, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.1"})
create (_221145:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:119, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_221146:`FileNode` {`nID`:120, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.1"})
create (_221147:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:121, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_221148:`FileNode` {`nID`:122, `name`:"ariane.community.core.injector-0.5.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_221149:`FileNode` {`nID`:123, `name`:"net.echinopsii.ariane.community.core.injector_0.5.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_221150:`FileNode` {`nID`:124, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.1"})
create (_221151:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.injector.git", `nID`:125, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.1"})
create (_221152:`Module` {`git_repos`:"net.echinopsii.ariane.community.environment.git", `nID`:126, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.1"})
create (_221153:`FileNode` {`nID`:127, `name`:"ariane.community.distrib-0.5.1.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.1"})
create (_221154:`FileNode` {`nID`:128, `name`:"pom-ariane.community.distrib-0.5.1.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.1"})
create (_221155:`FileNode` {`nID`:129, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.1"})
create (_221156:`FileNode` {`nID`:130, `name`:"ariane.community.plugins-distrib-0.5.1.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.1"})
create (_221157:`FileNode` {`nID`:131, `name`:"ariane.community.git.repos-0.5.1.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.1"})
create (_221158:`Distribution` {`editable`:"false", `nID`:132, `name`:"community", `version`:"0.5.1"})
create (_221160:`FileNode` {`nID`:133, `name`:"pom.xml", `path`:"ariane.community.installer/tools/", `type`:"pom", `version`:"0.1.0"})
create (_221161:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.installer.tools", `groupId`:"net.echinopsii.ariane.community.installer", `nID`:134, `name`:"tools", `order`:1, `version`:"0.1.0"})
create (_221162:`FileNode` {`nID`:135, `name`:"pom.xml", `path`:"ariane.community.installer/", `type`:"pom", `version`:"0.1.0"})
create (_221163:`FileNode` {`nID`:136, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.1.0"})
create (_221164:`Module` {`git_repos`:"net.echinopsii.ariane.community.installer.git", `nID`:137, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.1.0"})
create (_221165:`FileNode` {`nID`:138, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_221166:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:139, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_221167:`FileNode` {`nID`:140, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_221168:`FileNode` {`nID`:141, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_221169:`FileNode` {`nID`:142, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_221170:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.idm.git", `nID`:143, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_221171:`FileNode` {`nID`:144, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_221172:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:145, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_221173:`FileNode` {`nID`:146, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_221174:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:147, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_221175:`FileNode` {`nID`:148, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_221176:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:149, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_221177:`FileNode` {`nID`:150, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_221178:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:151, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_221179:`FileNode` {`nID`:152, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_221180:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:153, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_221181:`FileNode` {`nID`:154, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_221182:`FileNode` {`nID`:155, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_221183:`FileNode` {`nID`:156, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_221184:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.portal.git", `nID`:157, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_221185:`FileNode` {`nID`:158, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.1"})
create (_221186:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:159, `name`:"api", `order`:1, `version`:"0.5.1"})
create (_221187:`FileNode` {`nID`:160, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.1"})
create (_221188:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:161, `name`:"blueprints", `order`:2, `version`:"0.5.1"})
create (_221189:`FileNode` {`nID`:162, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.1"})
create (_221190:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:163, `name`:"dsl", `order`:3, `version`:"0.5.1"})
create (_221191:`FileNode` {`nID`:164, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.1"})
create (_221192:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:165, `name`:"rim", `order`:4, `version`:"0.5.1"})
create (_221193:`FileNode` {`nID`:166, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.1"})
create (_221194:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:167, `name`:"ds", `order`:5, `version`:"0.5.1"})
create (_221195:`FileNode` {`nID`:168, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.1"})
create (_221196:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:169, `name`:"taitale", `order`:6, `version`:"0.5.1"})
create (_221197:`FileNode` {`nID`:170, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.1"})
create (_221198:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:171, `name`:"wat", `order`:7, `version`:"0.5.1"})
create (_221199:`FileNode` {`nID`:172, `name`:"ariane.community.core.mapping-0.5.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_221200:`FileNode` {`nID`:173, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_221201:`FileNode` {`nID`:174, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.1"})
create (_221202:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.mapping.git", `nID`:175, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.1"})
create (_221203:`FileNode` {`nID`:176, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_221204:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:177, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_221205:`FileNode` {`nID`:178, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_221206:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:179, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_221207:`FileNode` {`nID`:180, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_221208:`FileNode` {`nID`:181, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_221209:`FileNode` {`nID`:182, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_221210:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.directory.git", `nID`:183, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_221211:`FileNode` {`nID`:184, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.2"})
create (_221212:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:185, `name`:"base", `order`:1, `version`:"0.5.2"})
create (_221213:`FileNode` {`nID`:186, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.2"})
create (_221214:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:187, `name`:"wat", `order`:2, `version`:"0.5.2"})
create (_221215:`FileNode` {`nID`:188, `name`:"ariane.community.core.injector-0.5.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_221216:`FileNode` {`nID`:189, `name`:"net.echinopsii.ariane.community.core.injector_0.5.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_221217:`FileNode` {`nID`:190, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.2"})
create (_221218:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.injector.git", `nID`:191, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.2"})
create (_221219:`Module` {`git_repos`:"net.echinopsii.ariane.community.environment.git", `nID`:192, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.2"})
create (_221220:`FileNode` {`nID`:193, `name`:"ariane.community.distrib-0.5.2.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.2"})
create (_221221:`FileNode` {`nID`:194, `name`:"pom-ariane.community.distrib-0.5.2.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.2"})
create (_221222:`FileNode` {`nID`:195, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.2"})
create (_221223:`FileNode` {`nID`:196, `name`:"ariane.community.plugins-distrib-0.5.2.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.2"})
create (_221224:`FileNode` {`nID`:197, `name`:"ariane.community.git.repos-0.5.2.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.2"})
create (_221225:`Distribution` {`editable`:"false", `nID`:198, `name`:"community", `version`:"0.5.2"})
create (_221227:`FileNode` {`nID`:199, `name`:"pom.xml", `path`:"ariane.community.installer/tools/", `type`:"pom", `version`:"0.1.0"})
create (_221228:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.installer.tools", `groupId`:"net.echinopsii.ariane.community.installer", `nID`:200, `name`:"tools", `order`:1, `version`:"0.1.0"})
create (_221229:`FileNode` {`nID`:201, `name`:"pom.xml", `path`:"ariane.community.installer/", `type`:"pom", `version`:"0.1.0"})
create (_221230:`FileNode` {`nID`:202, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.1.0"})
create (_221231:`Module` {`git_repos`:"net.echinopsii.ariane.community.installer.git", `nID`:203, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.1.0"})
create (_221232:`FileNode` {`nID`:204, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_221233:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:205, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_221234:`FileNode` {`nID`:206, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_221235:`FileNode` {`nID`:207, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_221236:`FileNode` {`nID`:208, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_221237:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.idm.git", `nID`:209, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_221238:`FileNode` {`nID`:210, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_221239:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:211, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_221240:`FileNode` {`nID`:212, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_221241:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:213, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_221242:`FileNode` {`nID`:214, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_221243:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:215, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_221244:`FileNode` {`nID`:216, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_221245:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:217, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_221246:`FileNode` {`nID`:218, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_221247:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:219, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_221248:`FileNode` {`nID`:220, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_221249:`FileNode` {`nID`:221, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_221250:`FileNode` {`nID`:222, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_221251:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.portal.git", `nID`:223, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_221252:`FileNode` {`nID`:224, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.2"})
create (_221253:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:225, `name`:"api", `order`:1, `version`:"0.5.2"})
create (_221254:`FileNode` {`nID`:226, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.2"})
create (_221255:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:227, `name`:"blueprints", `order`:2, `version`:"0.5.2"})
create (_221256:`FileNode` {`nID`:228, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.2"})
create (_221257:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:229, `name`:"dsl", `order`:3, `version`:"0.5.2"})
create (_221258:`FileNode` {`nID`:230, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.2"})
create (_221259:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:231, `name`:"rim", `order`:4, `version`:"0.5.2"})
create (_221260:`FileNode` {`nID`:232, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.2"})
create (_221261:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:233, `name`:"ds", `order`:5, `version`:"0.5.2"})
create (_221262:`FileNode` {`nID`:234, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.2"})
create (_221263:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:235, `name`:"taitale", `order`:6, `version`:"0.5.2"})
create (_221264:`FileNode` {`nID`:236, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.2"})
create (_221265:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:237, `name`:"wat", `order`:7, `version`:"0.5.2"})
create (_221266:`FileNode` {`nID`:238, `name`:"ariane.community.core.mapping-0.5.2.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_221267:`FileNode` {`nID`:239, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.2.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_221268:`FileNode` {`nID`:240, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.2"})
create (_221269:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.mapping.git", `nID`:241, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.2"})
create (_221270:`FileNode` {`nID`:242, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_221271:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:243, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_221272:`FileNode` {`nID`:244, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_221273:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:245, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_221274:`FileNode` {`nID`:246, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_221275:`FileNode` {`nID`:247, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_221276:`FileNode` {`nID`:248, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_221277:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.directory.git", `nID`:249, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_221278:`FileNode` {`nID`:250, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.2"})
create (_221279:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:251, `name`:"base", `order`:1, `version`:"0.5.2"})
create (_221280:`FileNode` {`nID`:252, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.2"})
create (_221281:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:253, `name`:"wat", `order`:2, `version`:"0.5.2"})
create (_221282:`FileNode` {`nID`:254, `name`:"ariane.community.core.injector-0.5.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_221283:`FileNode` {`nID`:255, `name`:"net.echinopsii.ariane.community.core.injector_0.5.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_221284:`FileNode` {`nID`:256, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.2"})
create (_221285:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.injector.git", `nID`:257, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.2"})
create (_221286:`Module` {`git_repos`:"net.echinopsii.ariane.community.environment.git", `nID`:258, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.2"})
create (_221287:`FileNode` {`nID`:259, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.1.0"})
create (_221288:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:260, `name`:"directory", `order`:1, `version`:"0.1.0"})
create (_221289:`FileNode` {`nID`:261, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.1.0"})
create (_221290:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:262, `name`:"jsonparser", `order`:2, `version`:"0.1.0"})
create (_221291:`FileNode` {`nID`:263, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.1.0"})
create (_221292:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:264, `name`:"injector", `order`:3, `version`:"0.1.0"})
create (_221293:`FileNode` {`nID`:265, `name`:"ariane.community.plugin.rabbitmq-0.1.0.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_221294:`FileNode` {`nID`:266, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.1.0.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.1.0"})
create (_221295:`FileNode` {`nID`:267, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_221296:`FileNode` {`nID`:268, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.1.0"})
create (_221297:`Plugin` {`nID`:269, `name`:"rabbitmq", `version`:"0.1.0"})
create (_221298:`FileNode` {`nID`:270, `name`:"ariane.community.distrib-0.5.3.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.3"})
create (_221299:`FileNode` {`nID`:271, `name`:"pom-ariane.community.distrib-0.5.3.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.3"})
create (_221300:`FileNode` {`nID`:272, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.3"})
create (_221301:`FileNode` {`nID`:273, `name`:"ariane.community.plugins-distrib-0.5.3.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.3"})
create (_221302:`FileNode` {`nID`:274, `name`:"ariane.community.git.repos-0.5.3.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.3"})
create (_221303:`Distribution` {`editable`:"false", `nID`:275, `name`:"community", `version`:"0.5.3"})
create (_221305:`FileNode` {`nID`:276, `name`:"pom.xml", `path`:"ariane.community.installer/tools/", `type`:"pom", `version`:"0.1.0"})
create (_221306:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.installer.tools", `groupId`:"net.echinopsii.ariane.community.installer", `nID`:277, `name`:"tools", `order`:1, `version`:"0.1.0"})
create (_221307:`FileNode` {`nID`:278, `name`:"pom.xml", `path`:"ariane.community.installer/", `type`:"pom", `version`:"0.1.0"})
create (_221308:`FileNode` {`nID`:279, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.1.0"})
create (_221309:`Module` {`git_repos`:"net.echinopsii.ariane.community.installer.git", `nID`:280, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.1.0"})
create (_221310:`FileNode` {`nID`:281, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_221311:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:282, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_221312:`FileNode` {`nID`:283, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_221313:`FileNode` {`nID`:284, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_221314:`FileNode` {`nID`:285, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_221315:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.idm.git", `nID`:286, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_221316:`FileNode` {`nID`:287, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.0"})
create (_221317:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:288, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_221318:`FileNode` {`nID`:289, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.0"})
create (_221319:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:290, `name`:"wat", `order`:2, `version`:"0.6.0"})
create (_221320:`FileNode` {`nID`:291, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.0"})
create (_221321:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:292, `name`:"idmwat", `order`:3, `version`:"0.6.0"})
create (_221322:`FileNode` {`nID`:293, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.0"})
create (_221323:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:294, `name`:"wab", `order`:4, `version`:"0.6.0"})
create (_221324:`FileNode` {`nID`:295, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.0"})
create (_221325:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:296, `name`:"wresources", `order`:5, `version`:"0.6.0"})
create (_221326:`FileNode` {`nID`:297, `name`:"ariane.community.core.portal-0.6.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_221327:`FileNode` {`nID`:298, `name`:"net.echinopsii.ariane.community.core.portal_0.6.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_221328:`FileNode` {`nID`:299, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.0"})
create (_221329:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.portal.git", `nID`:300, `name`:"portal", `order`:3, `type`:"core", `version`:"0.6.0"})
create (_221330:`FileNode` {`nID`:301, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.0"})
create (_221331:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:302, `name`:"api", `order`:1, `version`:"0.6.0"})
create (_221332:`FileNode` {`nID`:303, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.0"})
create (_221333:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:304, `name`:"blueprints", `order`:2, `version`:"0.6.0"})
create (_221334:`FileNode` {`nID`:305, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.0"})
create (_221335:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:306, `name`:"rim", `order`:3, `version`:"0.6.0"})
create (_221336:`FileNode` {`nID`:307, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.0"})
create (_221337:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:308, `name`:"dsl", `order`:4, `version`:"0.6.0"})
create (_221338:`FileNode` {`nID`:309, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.0"})
create (_221339:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:310, `name`:"ds", `order`:5, `version`:"0.6.0"})
create (_221340:`FileNode` {`nID`:311, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.0"})
create (_221341:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:312, `name`:"wat", `order`:6, `version`:"0.6.0"})
create (_221342:`FileNode` {`nID`:313, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.0"})
create (_221343:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:314, `name`:"taitale", `order`:7, `version`:"0.6.0"})
create (_221344:`FileNode` {`nID`:315, `name`:"ariane.community.core.mapping-0.6.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_221345:`FileNode` {`nID`:316, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_221346:`FileNode` {`nID`:317, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.0"})
create (_221347:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.mapping.git", `nID`:318, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.6.0"})
create (_221348:`FileNode` {`nID`:319, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.0"})
create (_221349:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:320, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_221350:`FileNode` {`nID`:321, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.0"})
create (_221351:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:322, `name`:"wat", `order`:2, `version`:"0.6.0"})
create (_221352:`FileNode` {`nID`:323, `name`:"ariane.community.core.directory-0.6.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_221353:`FileNode` {`nID`:324, `name`:"net.echinopsii.ariane.community.core.directory_0.6.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_221354:`FileNode` {`nID`:325, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.0"})
create (_221355:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.directory.git", `nID`:326, `name`:"directory", `order`:5, `type`:"core", `version`:"0.6.0"})
create (_221356:`FileNode` {`nID`:327, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.0"})
create (_221357:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:328, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_221358:`FileNode` {`nID`:329, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.0"})
create (_221359:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:330, `name`:"messaging", `order`:2, `version`:"0.6.0"})
create (_221360:`FileNode` {`nID`:331, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.0"})
create (_221361:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:332, `name`:"wat", `order`:3, `version`:"0.6.0"})
create (_221362:`FileNode` {`nID`:333, `name`:"ariane.community.core.injector-0.6.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_221363:`FileNode` {`nID`:334, `name`:"net.echinopsii.ariane.community.core.injector_0.6.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_221364:`FileNode` {`nID`:335, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.0"})
create (_221365:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.injector.git", `nID`:336, `name`:"injector", `order`:6, `type`:"core", `version`:"0.6.0"})
create (_221366:`Module` {`git_repos`:"net.echinopsii.ariane.community.environment.git", `nID`:337, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.6.0"})
create (_221367:`FileNode` {`nID`:338, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.0"})
create (_221368:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:339, `name`:"directory", `order`:1, `version`:"0.2.0"})
create (_221369:`FileNode` {`nID`:340, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.0"})
create (_221370:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:341, `name`:"jsonparser", `order`:2, `version`:"0.2.0"})
create (_221371:`FileNode` {`nID`:342, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.0"})
create (_221372:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:343, `name`:"injector", `order`:3, `version`:"0.2.0"})
create (_221373:`FileNode` {`nID`:344, `name`:"ariane.community.plugin.rabbitmq-0.2.0.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.0"})
create (_221374:`FileNode` {`nID`:345, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.0.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.0"})
create (_221375:`FileNode` {`nID`:346, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.0"})
create (_221376:`FileNode` {`nID`:347, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.0"})
create (_221377:`Plugin` {`nID`:348, `name`:"rabbitmq", `version`:"0.2.0"})
create (_221378:`FileNode` {`nID`:349, `name`:"ariane.community.distrib-0.6.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.0"})
create (_221379:`FileNode` {`nID`:350, `name`:"pom-ariane.community.distrib-0.6.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.0"})
create (_221380:`FileNode` {`nID`:351, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.0"})
create (_221381:`FileNode` {`nID`:352, `name`:"ariane.community.plugins-distrib-0.6.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.0"})
create (_221382:`FileNode` {`nID`:353, `name`:"ariane.community.git.repos-0.6.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.0"})
create (_221383:`Distribution` {`editable`:"false", `nID`:354, `name`:"community", `version`:"0.6.0"})
create (_221385:`FileNode` {`nID`:355, `name`:"pom.xml", `path`:"ariane.community.installer/tools/", `type`:"pom", `version`:"0.1.0"})
create (_221386:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.installer.tools", `groupId`:"net.echinopsii.ariane.community.installer", `nID`:356, `name`:"tools", `order`:1, `version`:"0.1.0"})
create (_221387:`FileNode` {`nID`:357, `name`:"pom.xml", `path`:"ariane.community.installer/", `type`:"pom", `version`:"0.1.0"})
create (_221388:`FileNode` {`nID`:358, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.1.0"})
create (_221389:`Module` {`git_repos`:"net.echinopsii.ariane.community.installer.git", `nID`:359, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.1.0"})
create (_221390:`FileNode` {`nID`:360, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_221391:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:361, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_221392:`FileNode` {`nID`:362, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_221393:`FileNode` {`nID`:363, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_221394:`FileNode` {`nID`:364, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_221395:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.idm.git", `nID`:365, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_221396:`FileNode` {`nID`:366, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.1"})
create (_221397:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:367, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_221398:`FileNode` {`nID`:368, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.1"})
create (_221399:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:369, `name`:"wat", `order`:2, `version`:"0.6.1"})
create (_221400:`FileNode` {`nID`:370, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.1"})
create (_221401:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:371, `name`:"idmwat", `order`:3, `version`:"0.6.1"})
create (_221402:`FileNode` {`nID`:372, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.1"})
create (_221403:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:373, `name`:"wab", `order`:4, `version`:"0.6.1"})
create (_221404:`FileNode` {`nID`:374, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.1"})
create (_221405:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:375, `name`:"wresources", `order`:5, `version`:"0.6.1"})
create (_221406:`FileNode` {`nID`:376, `name`:"ariane.community.core.portal-0.6.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_221407:`FileNode` {`nID`:377, `name`:"net.echinopsii.ariane.community.core.portal_0.6.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_221408:`FileNode` {`nID`:378, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.1"})
create (_221409:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.portal.git", `nID`:379, `name`:"portal", `order`:3, `type`:"core", `version`:"0.6.1"})
create (_221410:`FileNode` {`nID`:380, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.1"})
create (_221411:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:381, `name`:"api", `order`:1, `version`:"0.6.1"})
create (_221412:`FileNode` {`nID`:382, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.1"})
create (_221413:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:383, `name`:"blueprints", `order`:2, `version`:"0.6.1"})
create (_221414:`FileNode` {`nID`:384, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.1"})
create (_221415:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:385, `name`:"rim", `order`:3, `version`:"0.6.1"})
create (_221416:`FileNode` {`nID`:386, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.1"})
create (_221417:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:387, `name`:"dsl", `order`:4, `version`:"0.6.1"})
create (_221418:`FileNode` {`nID`:388, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.1"})
create (_221419:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:389, `name`:"ds", `order`:5, `version`:"0.6.1"})
create (_221420:`FileNode` {`nID`:390, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.1"})
create (_221421:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:391, `name`:"wat", `order`:6, `version`:"0.6.1"})
create (_221422:`FileNode` {`nID`:392, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.1"})
create (_221423:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:393, `name`:"taitale", `order`:7, `version`:"0.6.1"})
create (_221424:`FileNode` {`nID`:394, `name`:"ariane.community.core.mapping-0.6.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_221425:`FileNode` {`nID`:395, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_221426:`FileNode` {`nID`:396, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.1"})
create (_221427:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.mapping.git", `nID`:397, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.6.1"})
create (_221428:`FileNode` {`nID`:398, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.1"})
create (_221429:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:399, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_221430:`FileNode` {`nID`:400, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.1"})
create (_221431:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:401, `name`:"wat", `order`:2, `version`:"0.6.1"})
create (_221432:`FileNode` {`nID`:402, `name`:"ariane.community.core.directory-0.6.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_221433:`FileNode` {`nID`:403, `name`:"net.echinopsii.ariane.community.core.directory_0.6.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_221434:`FileNode` {`nID`:404, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.1"})
create (_221435:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.directory.git", `nID`:405, `name`:"directory", `order`:5, `type`:"core", `version`:"0.6.1"})
create (_221436:`FileNode` {`nID`:406, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.1"})
create (_221437:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:407, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_221438:`FileNode` {`nID`:408, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.1"})
create (_221439:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:409, `name`:"messaging", `order`:2, `version`:"0.6.1"})
create (_221440:`FileNode` {`nID`:410, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.1"})
create (_221441:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:411, `name`:"wat", `order`:3, `version`:"0.6.1"})
create (_221442:`FileNode` {`nID`:412, `name`:"ariane.community.core.injector-0.6.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_221443:`FileNode` {`nID`:413, `name`:"net.echinopsii.ariane.community.core.injector_0.6.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_221444:`FileNode` {`nID`:414, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.1"})
create (_221445:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.injector.git", `nID`:415, `name`:"injector", `order`:6, `type`:"core", `version`:"0.6.1"})
create (_221446:`Module` {`git_repos`:"net.echinopsii.ariane.community.environment.git", `nID`:416, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.6.1"})
create (_221447:`FileNode` {`nID`:417, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.1"})
create (_221448:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:418, `name`:"directory", `order`:1, `version`:"0.2.1"})
create (_221449:`FileNode` {`nID`:419, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.1"})
create (_221450:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:420, `name`:"jsonparser", `order`:2, `version`:"0.2.1"})
create (_221451:`FileNode` {`nID`:421, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.1"})
create (_221452:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:422, `name`:"injector", `order`:3, `version`:"0.2.1"})
create (_221453:`FileNode` {`nID`:423, `name`:"ariane.community.plugin.rabbitmq-0.2.1.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.1"})
create (_221454:`FileNode` {`nID`:424, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.1.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.1"})
create (_221455:`FileNode` {`nID`:425, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.1"})
create (_221456:`FileNode` {`nID`:426, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.1"})
create (_221457:`Plugin` {`nID`:427, `name`:"rabbitmq", `version`:"0.2.1"})
create (_221458:`FileNode` {`nID`:428, `name`:"ariane.community.distrib-0.6.1.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.1"})
create (_221459:`FileNode` {`nID`:429, `name`:"pom-ariane.community.distrib-0.6.1.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.1"})
create (_221460:`FileNode` {`nID`:430, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.1"})
create (_221461:`FileNode` {`nID`:431, `name`:"ariane.community.plugins-distrib-0.6.1.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.1"})
create (_221462:`FileNode` {`nID`:432, `name`:"ariane.community.git.repos-0.6.1.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.1"})
create (_221463:`Distribution` {`editable`:"false", `nID`:433, `name`:"community", `version`:"0.6.1"})
create (_221465:`FileNode` {`nID`:434, `name`:"pom.xml", `path`:"ariane.community.installer/tools/", `type`:"pom", `version`:"0.1.0"})
create (_221466:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.installer.tools", `groupId`:"net.echinopsii.ariane.community.installer", `nID`:435, `name`:"tools", `order`:1, `version`:"0.1.0"})
create (_221467:`FileNode` {`nID`:436, `name`:"pom.xml", `path`:"ariane.community.installer/", `type`:"pom", `version`:"0.1.0"})
create (_221468:`FileNode` {`nID`:437, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.1.0"})
create (_221469:`Module` {`git_repos`:"net.echinopsii.ariane.community.installer.git", `nID`:438, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.1.0"})
create (_221470:`FileNode` {`nID`:439, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_221471:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:440, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_221472:`FileNode` {`nID`:441, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_221473:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:442, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_221474:`FileNode` {`nID`:443, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_221475:`FileNode` {`nID`:444, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_221476:`FileNode` {`nID`:445, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_221477:`Module` {`git_repos`:"net.echinopsii.ariane.community.messaging.git", `nID`:446, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_221478:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.portal.git", `nID`:447, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.2"})
create (_221479:`FileNode` {`nID`:448, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.1"})
create (_221480:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:449, `name`:"base", `order`:1, `version`:"0.4.1"})
create (_221481:`FileNode` {`nID`:450, `name`:"ariane.community.core.idm-0.4.1.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.1"})
create (_221482:`FileNode` {`nID`:451, `name`:"net.echinopsii.ariane.community.core.idm_0.4.1.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.1"})
create (_221483:`FileNode` {`nID`:452, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.1"})
create (_221484:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.idm.git", `nID`:453, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.1"})
create (_221485:`FileNode` {`nID`:454, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.2"})
create (_221486:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:455, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_221487:`FileNode` {`nID`:456, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.2"})
create (_221488:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:457, `name`:"wat", `order`:2, `version`:"0.6.2"})
create (_221489:`FileNode` {`nID`:458, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.2"})
create (_221490:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:459, `name`:"idmwat", `order`:3, `version`:"0.6.2"})
create (_221491:`FileNode` {`nID`:460, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.2"})
create (_221492:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:461, `name`:"wab", `order`:4, `version`:"0.6.2"})
create (_221493:`FileNode` {`nID`:462, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.2"})
create (_221494:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:463, `name`:"wresources", `order`:5, `version`:"0.6.2"})
create (_221495:`FileNode` {`nID`:464, `name`:"ariane.community.core.portal-0.6.2.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_221496:`FileNode` {`nID`:465, `name`:"net.echinopsii.ariane.community.core.portal_0.6.2.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_221497:`FileNode` {`nID`:466, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.2"})
create (_221498:`FileNode` {`nID`:467, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.2"})
create (_221499:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:468, `name`:"api", `order`:1, `version`:"0.6.2"})
create (_221500:`FileNode` {`nID`:469, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.2"})
create (_221501:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:470, `name`:"blueprints", `order`:2, `version`:"0.6.2"})
create (_221502:`FileNode` {`nID`:471, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.2"})
create (_221503:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:472, `name`:"rim", `order`:3, `version`:"0.6.2"})
create (_221504:`FileNode` {`nID`:473, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.2"})
create (_221505:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:474, `name`:"dsl", `order`:4, `version`:"0.6.2"})
create (_221506:`FileNode` {`nID`:475, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.2"})
create (_221507:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:476, `name`:"ds", `order`:5, `version`:"0.6.2"})
create (_221508:`FileNode` {`nID`:477, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.2"})
create (_221509:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:478, `name`:"wat", `order`:6, `version`:"0.6.2"})
create (_221510:`FileNode` {`nID`:479, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.2"})
create (_221511:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:480, `name`:"taitale", `order`:7, `version`:"0.6.2"})
create (_221512:`FileNode` {`nID`:481, `name`:"ariane.community.core.mapping-0.6.2.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_221513:`FileNode` {`nID`:482, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.2.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_221514:`FileNode` {`nID`:483, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.2"})
create (_221515:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.mapping.git", `nID`:484, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.2"})
create (_221516:`FileNode` {`nID`:485, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.2"})
create (_221517:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:486, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_221518:`FileNode` {`nID`:487, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.2"})
create (_221519:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:488, `name`:"wat", `order`:2, `version`:"0.6.2"})
create (_221520:`FileNode` {`nID`:489, `name`:"ariane.community.core.directory-0.6.2.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_221521:`FileNode` {`nID`:490, `name`:"net.echinopsii.ariane.community.core.directory_0.6.2.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_221522:`FileNode` {`nID`:491, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.2"})
create (_221523:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.directory.git", `nID`:492, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.2"})
create (_221524:`FileNode` {`nID`:493, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.2"})
create (_221525:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:494, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_221526:`FileNode` {`nID`:495, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.2"})
create (_221527:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:496, `name`:"messaging", `order`:2, `version`:"0.6.2"})
create (_221528:`FileNode` {`nID`:497, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.2"})
create (_221529:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:498, `name`:"wat", `order`:3, `version`:"0.6.2"})
create (_221530:`FileNode` {`nID`:499, `name`:"ariane.community.core.injector-0.6.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_221531:`FileNode` {`nID`:500, `name`:"net.echinopsii.ariane.community.core.injector_0.6.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_221532:`FileNode` {`nID`:501, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.2"})
create (_221533:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.injector.git", `nID`:502, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.2"})
create (_221534:`Module` {`git_repos`:"net.echinopsii.ariane.community.environment.git", `nID`:503, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.2"})
create (_221535:`FileNode` {`nID`:504, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.2"})
create (_221536:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:505, `name`:"directory", `order`:1, `version`:"0.2.2"})
create (_221537:`FileNode` {`nID`:506, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.2"})
create (_221538:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:507, `name`:"jsonparser", `order`:2, `version`:"0.2.2"})
create (_221539:`FileNode` {`nID`:508, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.2"})
create (_221540:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:509, `name`:"injector", `order`:3, `version`:"0.2.2"})
create (_221541:`FileNode` {`nID`:510, `name`:"ariane.community.plugin.rabbitmq-0.2.2.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.2"})
create (_221542:`FileNode` {`nID`:511, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.2.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.2"})
create (_221543:`FileNode` {`nID`:512, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.2"})
create (_221544:`FileNode` {`nID`:513, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.2"})
create (_221545:`Plugin` {`nID`:514, `name`:"rabbitmq", `version`:"0.2.2"})
create (_221546:`FileNode` {`nID`:515, `name`:"ariane.community.distrib-0.6.2.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.2"})
create (_221547:`FileNode` {`nID`:516, `name`:"pom-ariane.community.distrib-0.6.2.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.2"})
create (_221548:`FileNode` {`nID`:517, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.2"})
create (_221549:`FileNode` {`nID`:518, `name`:"ariane.community.plugins-distrib-0.6.2.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.2"})
create (_221550:`FileNode` {`nID`:519, `name`:"ariane.community.git.repos-0.6.2.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.2"})
create (_221551:`Distribution` {`editable`:"false", `nID`:520, `name`:"community", `version`:"0.6.2"})
create (_221553:`FileNode` {`nID`:521, `name`:"pom.xml", `path`:"ariane.community.installer/tools/", `type`:"pom", `version`:"0.1.0"})
create (_221554:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.installer.tools", `groupId`:"net.echinopsii.ariane.community.installer", `nID`:522, `name`:"tools", `order`:1, `version`:"0.1.0"})
create (_221555:`FileNode` {`nID`:523, `name`:"pom.xml", `path`:"ariane.community.installer/", `type`:"pom", `version`:"0.1.0"})
create (_221556:`FileNode` {`nID`:524, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.1.0"})
create (_221557:`Module` {`git_repos`:"net.echinopsii.ariane.community.installer.git", `nID`:525, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.1.0"})
create (_221558:`FileNode` {`nID`:526, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_221559:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:527, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_221560:`FileNode` {`nID`:528, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_221561:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:529, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_221562:`FileNode` {`nID`:530, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_221563:`FileNode` {`nID`:531, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_221564:`FileNode` {`nID`:532, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_221565:`Module` {`git_repos`:"net.echinopsii.ariane.community.messaging.git", `nID`:533, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_221566:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.portal.git", `nID`:534, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.3"})
create (_221567:`FileNode` {`nID`:535, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2"})
create (_221568:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:536, `name`:"base", `order`:1, `version`:"0.4.2"})
create (_221569:`FileNode` {`nID`:537, `name`:"ariane.community.core.idm-0.4.2.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2"})
create (_221570:`FileNode` {`nID`:538, `name`:"net.echinopsii.ariane.community.core.idm_0.4.2.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2"})
create (_221571:`FileNode` {`nID`:539, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2"})
create (_221572:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.idm.git", `nID`:540, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2"})
create (_221573:`FileNode` {`nID`:541, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.3"})
create (_221574:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:542, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_221575:`FileNode` {`nID`:543, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.3"})
create (_221576:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:544, `name`:"wat", `order`:2, `version`:"0.6.3"})
create (_221577:`FileNode` {`nID`:545, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.3"})
create (_221578:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:546, `name`:"idmwat", `order`:3, `version`:"0.6.3"})
create (_221579:`FileNode` {`nID`:547, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.3"})
create (_221580:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:548, `name`:"wab", `order`:4, `version`:"0.6.3"})
create (_221581:`FileNode` {`nID`:549, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.3"})
create (_221582:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:550, `name`:"wresources", `order`:5, `version`:"0.6.3"})
create (_221583:`FileNode` {`nID`:551, `name`:"ariane.community.core.portal-0.6.3.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_221584:`FileNode` {`nID`:552, `name`:"net.echinopsii.ariane.community.core.portal_0.6.3.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_221585:`FileNode` {`nID`:553, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.3"})
create (_221586:`FileNode` {`nID`:554, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.3"})
create (_221587:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:555, `name`:"api", `order`:1, `version`:"0.6.3"})
create (_221588:`FileNode` {`nID`:556, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.3"})
create (_221589:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:557, `name`:"blueprints", `order`:2, `version`:"0.6.3"})
create (_221590:`FileNode` {`nID`:558, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.3"})
create (_221591:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:559, `name`:"rim", `order`:3, `version`:"0.6.3"})
create (_221592:`FileNode` {`nID`:560, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.3"})
create (_221593:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:561, `name`:"dsl", `order`:4, `version`:"0.6.3"})
create (_221594:`FileNode` {`nID`:562, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.3"})
create (_221595:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:563, `name`:"ds", `order`:5, `version`:"0.6.3"})
create (_221596:`FileNode` {`nID`:564, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.3"})
create (_221597:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:565, `name`:"wat", `order`:6, `version`:"0.6.3"})
create (_221598:`FileNode` {`nID`:566, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.3"})
create (_221599:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:567, `name`:"taitale", `order`:7, `version`:"0.6.3"})
create (_221600:`FileNode` {`nID`:568, `name`:"ariane.community.core.mapping-0.6.3.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_221601:`FileNode` {`nID`:569, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.3.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_221602:`FileNode` {`nID`:570, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.3"})
create (_221603:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.mapping.git", `nID`:571, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.3"})
create (_221604:`FileNode` {`nID`:572, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.3"})
create (_221605:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:573, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_221606:`FileNode` {`nID`:574, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.3"})
create (_221607:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:575, `name`:"wat", `order`:2, `version`:"0.6.3"})
create (_221608:`FileNode` {`nID`:576, `name`:"ariane.community.core.directory-0.6.3.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_221609:`FileNode` {`nID`:577, `name`:"net.echinopsii.ariane.community.core.directory_0.6.3.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_221610:`FileNode` {`nID`:578, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.3"})
create (_221611:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.directory.git", `nID`:579, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.3"})
create (_221612:`FileNode` {`nID`:580, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.3"})
create (_221613:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:581, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_221614:`FileNode` {`nID`:582, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.3"})
create (_221615:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:583, `name`:"messaging", `order`:2, `version`:"0.6.3"})
create (_221616:`FileNode` {`nID`:584, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.3"})
create (_221617:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:585, `name`:"wat", `order`:3, `version`:"0.6.3"})
create (_221618:`FileNode` {`nID`:586, `name`:"ariane.community.core.injector-0.6.3.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_221619:`FileNode` {`nID`:587, `name`:"net.echinopsii.ariane.community.core.injector_0.6.3.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_221620:`FileNode` {`nID`:588, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.3"})
create (_221621:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.injector.git", `nID`:589, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.3"})
create (_221622:`Module` {`git_repos`:"net.echinopsii.ariane.community.environment.git", `nID`:590, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.3"})
create (_221623:`FileNode` {`nID`:591, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.3"})
create (_221624:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:592, `name`:"directory", `order`:1, `version`:"0.2.3"})
create (_221625:`FileNode` {`nID`:593, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.3"})
create (_221626:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:594, `name`:"jsonparser", `order`:2, `version`:"0.2.3"})
create (_221627:`FileNode` {`nID`:595, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.3"})
create (_221628:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:596, `name`:"injector", `order`:3, `version`:"0.2.3"})
create (_221629:`FileNode` {`nID`:597, `name`:"ariane.community.plugin.rabbitmq-0.2.3.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.3"})
create (_221630:`FileNode` {`nID`:598, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.3.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.3"})
create (_221631:`FileNode` {`nID`:599, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.3"})
create (_221632:`FileNode` {`nID`:600, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.3"})
create (_221633:`Plugin` {`nID`:601, `name`:"rabbitmq", `version`:"0.2.3"})
create (_221634:`FileNode` {`nID`:602, `name`:"ariane.community.distrib-0.6.3.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.3"})
create (_221635:`FileNode` {`nID`:603, `name`:"pom-ariane.community.distrib-0.6.3.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.3"})
create (_221636:`FileNode` {`nID`:604, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.3"})
create (_221637:`FileNode` {`nID`:605, `name`:"ariane.community.plugins-distrib-0.6.3.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.3"})
create (_221638:`FileNode` {`nID`:606, `name`:"ariane.community.git.repos-0.6.3.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.3"})
create (_221639:`Distribution` {`editable`:"false", `nID`:607, `name`:"community", `version`:"0.6.3"})
create (_221641:`FileNode` {`nID`:608, `name`:"pom.xml", `path`:"ariane.community.installer/tools/", `type`:"pom", `version`:"0.1.0"})
create (_221642:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.installer.tools", `groupId`:"net.echinopsii.ariane.community.installer", `nID`:609, `name`:"tools", `order`:1, `version`:"0.1.0"})
create (_221643:`FileNode` {`nID`:610, `name`:"pom.xml", `path`:"ariane.community.installer/", `type`:"pom", `version`:"0.1.0"})
create (_221644:`FileNode` {`nID`:611, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.1.0"})
create (_221645:`Module` {`git_repos`:"net.echinopsii.ariane.community.installer.git", `nID`:612, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.1.0"})
create (_221646:`FileNode` {`nID`:613, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_221647:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:614, `name`:"api", `order`:1, `version`:"0.1.1-SNAPSHOT"})
create (_221648:`FileNode` {`nID`:615, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_221649:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:616, `name`:"rabbitmq", `order`:2, `version`:"0.1.1-SNAPSHOT"})
create (_221650:`FileNode` {`nID`:617, `name`:"ariane.community.messaging-master.SNAPSHOT.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.1-SNAPSHOT"})
create (_221651:`FileNode` {`nID`:618, `name`:"net.echinopsii.ariane.community.messaging_master.SNAPSHOT.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.1-SNAPSHOT"})
create (_221652:`FileNode` {`nID`:619, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_221653:`Module` {`git_repos`:"net.echinopsii.ariane.community.messaging.git", `nID`:620, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.1-SNAPSHOT"})
create (_221654:`FileNode` {`nID`:621, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_221655:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:622, `name`:"base", `order`:1, `version`:"0.4.2-SNAPSHOT"})
create (_221656:`FileNode` {`nID`:623, `name`:"ariane.community.core.idm-master.SNAPSHOT.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2-SNAPSHOT"})
create (_221657:`FileNode` {`nID`:624, `name`:"net.echinopsii.ariane.community.core.idm_master.SNAPSHOT.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2-SNAPSHOT"})
create (_221658:`FileNode` {`nID`:625, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_221659:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.idm.git", `nID`:626, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2-SNAPSHOT"})
create (_221660:`FileNode` {`nID`:627, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_221661:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:628, `name`:"base", `order`:1, `version`:"0.6.4-SNAPSHOT"})
create (_221662:`FileNode` {`nID`:629, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_221663:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:630, `name`:"wat", `order`:2, `version`:"0.6.4-SNAPSHOT"})
create (_221664:`FileNode` {`nID`:631, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_221665:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:632, `name`:"idmwat", `order`:3, `version`:"0.6.4-SNAPSHOT"})
create (_221666:`FileNode` {`nID`:633, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_221667:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:634, `name`:"wab", `order`:4, `version`:"0.6.4-SNAPSHOT"})
create (_221668:`FileNode` {`nID`:635, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_221669:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:636, `name`:"wresources", `order`:5, `version`:"0.6.4-SNAPSHOT"})
create (_221670:`FileNode` {`nID`:637, `name`:"ariane.community.core.portal-master.SNAPSHOT.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.4-SNAPSHOT"})
create (_221671:`FileNode` {`nID`:638, `name`:"net.echinopsii.ariane.community.core.portal_master.SNAPSHOT.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.4-SNAPSHOT"})
create (_221672:`FileNode` {`nID`:639, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_221673:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.portal.git", `nID`:640, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.4-SNAPSHOT"})
create (_221674:`FileNode` {`nID`:641, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_221675:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:642, `name`:"api", `order`:1, `version`:"0.6.4-SNAPSHOT"})
create (_221676:`FileNode` {`nID`:643, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_221677:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:644, `name`:"blueprints", `order`:2, `version`:"0.6.4-SNAPSHOT"})
create (_221678:`FileNode` {`nID`:645, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_221679:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:646, `name`:"rim", `order`:3, `version`:"0.6.4-SNAPSHOT"})
create (_221680:`FileNode` {`nID`:647, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_221681:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:648, `name`:"dsl", `order`:4, `version`:"0.6.4-SNAPSHOT"})
create (_221682:`FileNode` {`nID`:649, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_221683:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:650, `name`:"ds", `order`:5, `version`:"0.6.4-SNAPSHOT"})
create (_221684:`FileNode` {`nID`:651, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_221685:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:652, `name`:"taitale", `order`:6, `version`:"0.6.4-SNAPSHOT"})
create (_221686:`FileNode` {`nID`:653, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_221687:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:654, `name`:"wat", `order`:7, `version`:"0.6.4-SNAPSHOT"})
create (_221688:`FileNode` {`nID`:655, `name`:"ariane.community.core.mapping-master.SNAPSHOT.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.4-SNAPSHOT"})
create (_221689:`FileNode` {`nID`:656, `name`:"net.echinopsii.ariane.community.core.mapping_master.SNAPSHOT.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.4-SNAPSHOT"})
create (_221690:`FileNode` {`nID`:657, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_221691:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.mapping.git", `nID`:658, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.4-SNAPSHOT"})
create (_221692:`FileNode` {`nID`:659, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_221693:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:660, `name`:"base", `order`:1, `version`:"0.6.4-SNAPSHOT"})
create (_221694:`FileNode` {`nID`:661, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_221695:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:662, `name`:"wat", `order`:2, `version`:"0.6.4-SNAPSHOT"})
create (_221696:`FileNode` {`nID`:663, `name`:"ariane.community.core.directory-master.SNAPSHOT.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.4-SNAPSHOT"})
create (_221697:`FileNode` {`nID`:664, `name`:"net.echinopsii.ariane.community.core.directory_master.SNAPSHOT.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.4-SNAPSHOT"})
create (_221698:`FileNode` {`nID`:665, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_221699:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.directory.git", `nID`:666, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.4-SNAPSHOT"})
create (_221700:`FileNode` {`nID`:667, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_221701:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:668, `name`:"base", `order`:1, `version`:"0.6.4-SNAPSHOT"})
create (_221702:`FileNode` {`nID`:669, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_221703:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:670, `name`:"messaging", `order`:2, `version`:"0.6.4-SNAPSHOT"})
create (_221704:`FileNode` {`nID`:671, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_221705:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:672, `name`:"wat", `order`:3, `version`:"0.6.4-SNAPSHOT"})
create (_221706:`FileNode` {`nID`:673, `name`:"ariane.community.core.injector-master.SNAPSHOT.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.4-SNAPSHOT"})
create (_221707:`FileNode` {`nID`:674, `name`:"net.echinopsii.ariane.community.core.injector_master.SNAPSHOT.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.4-SNAPSHOT"})
create (_221708:`FileNode` {`nID`:675, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_221709:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.injector.git", `nID`:676, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.4-SNAPSHOT"})
create (_221710:`Module` {`git_repos`:"net.echinopsii.ariane.community.environment.git", `nID`:677, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.4-SNAPSHOT"})
create (_221711:`FileNode` {`nID`:678, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_221712:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:679, `name`:"directory", `order`:1, `version`:"0.2.4-SNAPSHOT"})
create (_221713:`FileNode` {`nID`:680, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_221714:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:681, `name`:"jsonparser", `order`:2, `version`:"0.2.4-SNAPSHOT"})
create (_221715:`FileNode` {`nID`:682, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_221716:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:683, `name`:"injector", `order`:3, `version`:"0.2.4-SNAPSHOT"})
create (_221717:`FileNode` {`nID`:684, `name`:"ariane.community.plugin.rabbitmq-master.SNAPSHOT.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.4-SNAPSHOT"})
create (_221718:`FileNode` {`nID`:685, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_master.SNAPSHOT.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.4-SNAPSHOT"})
create (_221719:`FileNode` {`nID`:686, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_221720:`FileNode` {`nID`:687, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.4-SNAPSHOT"})
create (_221721:`Plugin` {`nID`:688, `name`:"rabbitmq", `version`:"0.2.4-SNAPSHOT"})
create (_221722:`FileNode` {`nID`:689, `name`:"ariane.community.distrib-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.4-SNAPSHOT"})
create (_221723:`FileNode` {`nID`:690, `name`:"pom-ariane.community.distrib-master.SNAPSHOT.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.4-SNAPSHOT"})
create (_221724:`FileNode` {`nID`:691, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.4-SNAPSHOT"})
create (_221725:`FileNode` {`nID`:692, `name`:"ariane.community.plugins-distrib-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.4-SNAPSHOT"})
create (_221726:`FileNode` {`nID`:693, `name`:"ariane.community.git.repos-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.4-SNAPSHOT"})
create (_221727:`Distribution` {`editable`:"false", `nID`:694, `name`:"community", `version`:"0.6.4-SNAPSHOT"})
create _221026-[:`CONTAINS`]->_221025
create _221029-[:`COMPOSED OF`]->_221026
create _221029-[:`DEPENDS ON`]->_221091
create _221029-[:`CONTAINS`]->_221028
create _221029-[:`CONTAINS`]->_221027
create _221031-[:`CONTAINS`]->_221030
create _221035-[:`COMPOSED OF`]->_221031
create _221035-[:`DEPENDS ON`]->_221091
create _221035-[:`CONTAINS`]->_221034
create _221035-[:`CONTAINS`]->_221033
create _221035-[:`CONTAINS`]->_221032
create _221037-[:`CONTAINS`]->_221036
create _221039-[:`CONTAINS`]->_221038
create _221041-[:`CONTAINS`]->_221040
create _221043-[:`CONTAINS`]->_221042
create _221045-[:`CONTAINS`]->_221044
create _221049-[:`COMPOSED OF`]->_221045
create _221049-[:`COMPOSED OF`]->_221043
create _221049-[:`COMPOSED OF`]->_221041
create _221049-[:`COMPOSED OF`]->_221039
create _221049-[:`COMPOSED OF`]->_221037
create _221049-[:`DEPENDS ON`]->_221091
create _221049-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_221035
create _221049-[:`CONTAINS`]->_221048
create _221049-[:`CONTAINS`]->_221047
create _221049-[:`CONTAINS`]->_221046
create _221051-[:`CONTAINS`]->_221050
create _221053-[:`CONTAINS`]->_221052
create _221056-[:`CONTAINS`]->_221054
create _221058-[:`CONTAINS`]->_221057
create _221060-[:`COMPOSED OF`]->_221058
create _221060-[:`COMPOSED OF`]->_221056
create _221060-[:`COMPOSED OF`]->_221053
create _221060-[:`COMPOSED OF`]->_221051
create _221060-[:`CONTAINS`]->_221059
create _221062-[:`CONTAINS`]->_221061
create _221064-[:`CONTAINS`]->_221063
create _221068-[:`COMPOSED OF`]->_221064
create _221068-[:`COMPOSED OF`]->_221062
create _221068-[:`COMPOSED OF`]->_221060
create _221068-[:`DEPENDS ON`]->_221091
create _221068-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_221035
create _221068-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_221049
create _221068-[:`CONTAINS`]->_221067
create _221068-[:`CONTAINS`]->_221066
create _221068-[:`CONTAINS`]->_221065
create _221070-[:`CONTAINS`]->_221069
create _221072-[:`CONTAINS`]->_221071
create _221076-[:`COMPOSED OF`]->_221072
create _221076-[:`COMPOSED OF`]->_221070
create _221076-[:`DEPENDS ON`]->_221091
create _221076-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_221049
create _221076-[:`CONTAINS`]->_221075
create _221076-[:`CONTAINS`]->_221074
create _221076-[:`CONTAINS`]->_221073
create _221078-[:`CONTAINS`]->_221077
create _221080-[:`CONTAINS`]->_221079
create _221084-[:`COMPOSED OF`]->_221080
create _221084-[:`COMPOSED OF`]->_221078
create _221084-[:`DEPENDS ON`]->_221091
create _221084-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_221049
create _221084-[:`CONTAINS`]->_221083
create _221084-[:`CONTAINS`]->_221082
create _221084-[:`CONTAINS`]->_221081
create _221085-[:`DEPENDS ON`]->_221091
create _221091-[:`CONTAINS`]->_221090
create _221091-[:`CONTAINS`]->_221089
create _221091-[:`CONTAINS`]->_221088
create _221091-[:`CONTAINS`]->_221087
create _221091-[:`CONTAINS`]->_221086
create _221094-[:`CONTAINS`]->_221093
create _221097-[:`COMPOSED OF`]->_221094
create _221097-[:`DEPENDS ON`]->_221158
create _221097-[:`CONTAINS`]->_221096
create _221097-[:`CONTAINS`]->_221095
create _221099-[:`CONTAINS`]->_221098
create _221103-[:`COMPOSED OF`]->_221099
create _221103-[:`DEPENDS ON`]->_221158
create _221103-[:`CONTAINS`]->_221102
create _221103-[:`CONTAINS`]->_221101
create _221103-[:`CONTAINS`]->_221100
create _221105-[:`CONTAINS`]->_221104
create _221107-[:`CONTAINS`]->_221106
create _221109-[:`CONTAINS`]->_221108
create _221111-[:`CONTAINS`]->_221110
create _221113-[:`CONTAINS`]->_221112
create _221117-[:`COMPOSED OF`]->_221113
create _221117-[:`COMPOSED OF`]->_221111
create _221117-[:`COMPOSED OF`]->_221109
create _221117-[:`COMPOSED OF`]->_221107
create _221117-[:`COMPOSED OF`]->_221105
create _221117-[:`DEPENDS ON`]->_221158
create _221117-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_221103
create _221117-[:`CONTAINS`]->_221116
create _221117-[:`CONTAINS`]->_221115
create _221117-[:`CONTAINS`]->_221114
create _221119-[:`CONTAINS`]->_221118
create _221121-[:`CONTAINS`]->_221120
create _221123-[:`CONTAINS`]->_221122
create _221125-[:`CONTAINS`]->_221124
create _221127-[:`COMPOSED OF`]->_221125
create _221127-[:`COMPOSED OF`]->_221123
create _221127-[:`COMPOSED OF`]->_221121
create _221127-[:`COMPOSED OF`]->_221119
create _221127-[:`CONTAINS`]->_221126
create _221129-[:`CONTAINS`]->_221128
create _221131-[:`CONTAINS`]->_221130
create _221135-[:`COMPOSED OF`]->_221131
create _221135-[:`COMPOSED OF`]->_221129
create _221135-[:`COMPOSED OF`]->_221127
create _221135-[:`DEPENDS ON`]->_221158
create _221135-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_221103
create _221135-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_221117
create _221135-[:`CONTAINS`]->_221134
create _221135-[:`CONTAINS`]->_221133
create _221135-[:`CONTAINS`]->_221132
create _221137-[:`CONTAINS`]->_221136
create _221139-[:`CONTAINS`]->_221138
create _221143-[:`COMPOSED OF`]->_221139
create _221143-[:`COMPOSED OF`]->_221137
create _221143-[:`DEPENDS ON`]->_221158
create _221143-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_221117
create _221143-[:`CONTAINS`]->_221142
create _221143-[:`CONTAINS`]->_221141
create _221143-[:`CONTAINS`]->_221140
create _221145-[:`CONTAINS`]->_221144
create _221147-[:`CONTAINS`]->_221146
create _221151-[:`COMPOSED OF`]->_221147
create _221151-[:`COMPOSED OF`]->_221145
create _221151-[:`DEPENDS ON`]->_221158
create _221151-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_221117
create _221151-[:`CONTAINS`]->_221150
create _221151-[:`CONTAINS`]->_221149
create _221151-[:`CONTAINS`]->_221148
create _221152-[:`DEPENDS ON`]->_221158
create _221158-[:`CONTAINS`]->_221157
create _221158-[:`CONTAINS`]->_221156
create _221158-[:`CONTAINS`]->_221155
create _221158-[:`CONTAINS`]->_221154
create _221158-[:`CONTAINS`]->_221153
create _221161-[:`CONTAINS`]->_221160
create _221164-[:`COMPOSED OF`]->_221161
create _221164-[:`DEPENDS ON`]->_221225
create _221164-[:`CONTAINS`]->_221163
create _221164-[:`CONTAINS`]->_221162
create _221166-[:`CONTAINS`]->_221165
create _221170-[:`COMPOSED OF`]->_221166
create _221170-[:`DEPENDS ON`]->_221225
create _221170-[:`CONTAINS`]->_221169
create _221170-[:`CONTAINS`]->_221168
create _221170-[:`CONTAINS`]->_221167
create _221172-[:`CONTAINS`]->_221171
create _221174-[:`CONTAINS`]->_221173
create _221176-[:`CONTAINS`]->_221175
create _221178-[:`CONTAINS`]->_221177
create _221180-[:`CONTAINS`]->_221179
create _221184-[:`COMPOSED OF`]->_221180
create _221184-[:`COMPOSED OF`]->_221178
create _221184-[:`COMPOSED OF`]->_221176
create _221184-[:`COMPOSED OF`]->_221174
create _221184-[:`COMPOSED OF`]->_221172
create _221184-[:`DEPENDS ON`]->_221225
create _221184-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_221170
create _221184-[:`CONTAINS`]->_221183
create _221184-[:`CONTAINS`]->_221182
create _221184-[:`CONTAINS`]->_221181
create _221186-[:`CONTAINS`]->_221185
create _221188-[:`CONTAINS`]->_221187
create _221190-[:`CONTAINS`]->_221189
create _221192-[:`CONTAINS`]->_221191
create _221194-[:`COMPOSED OF`]->_221192
create _221194-[:`COMPOSED OF`]->_221190
create _221194-[:`COMPOSED OF`]->_221188
create _221194-[:`COMPOSED OF`]->_221186
create _221194-[:`CONTAINS`]->_221193
create _221196-[:`CONTAINS`]->_221195
create _221198-[:`CONTAINS`]->_221197
create _221202-[:`COMPOSED OF`]->_221198
create _221202-[:`COMPOSED OF`]->_221196
create _221202-[:`COMPOSED OF`]->_221194
create _221202-[:`DEPENDS ON`]->_221225
create _221202-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_221170
create _221202-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_221184
create _221202-[:`CONTAINS`]->_221201
create _221202-[:`CONTAINS`]->_221200
create _221202-[:`CONTAINS`]->_221199
create _221204-[:`CONTAINS`]->_221203
create _221206-[:`CONTAINS`]->_221205
create _221210-[:`COMPOSED OF`]->_221206
create _221210-[:`COMPOSED OF`]->_221204
create _221210-[:`DEPENDS ON`]->_221225
create _221210-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_221184
create _221210-[:`CONTAINS`]->_221209
create _221210-[:`CONTAINS`]->_221208
create _221210-[:`CONTAINS`]->_221207
create _221212-[:`CONTAINS`]->_221211
create _221214-[:`CONTAINS`]->_221213
create _221218-[:`COMPOSED OF`]->_221214
create _221218-[:`COMPOSED OF`]->_221212
create _221218-[:`DEPENDS ON`]->_221225
create _221218-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_221184
create _221218-[:`CONTAINS`]->_221217
create _221218-[:`CONTAINS`]->_221216
create _221218-[:`CONTAINS`]->_221215
create _221219-[:`DEPENDS ON`]->_221225
create _221225-[:`CONTAINS`]->_221224
create _221225-[:`CONTAINS`]->_221223
create _221225-[:`CONTAINS`]->_221222
create _221225-[:`CONTAINS`]->_221221
create _221225-[:`CONTAINS`]->_221220
create _221228-[:`CONTAINS`]->_221227
create _221231-[:`COMPOSED OF`]->_221228
create _221231-[:`DEPENDS ON`]->_221303
create _221231-[:`CONTAINS`]->_221230
create _221231-[:`CONTAINS`]->_221229
create _221233-[:`CONTAINS`]->_221232
create _221237-[:`COMPOSED OF`]->_221233
create _221237-[:`DEPENDS ON`]->_221303
create _221237-[:`CONTAINS`]->_221236
create _221237-[:`CONTAINS`]->_221235
create _221237-[:`CONTAINS`]->_221234
create _221239-[:`CONTAINS`]->_221238
create _221241-[:`CONTAINS`]->_221240
create _221243-[:`CONTAINS`]->_221242
create _221245-[:`CONTAINS`]->_221244
create _221247-[:`CONTAINS`]->_221246
create _221251-[:`COMPOSED OF`]->_221247
create _221251-[:`COMPOSED OF`]->_221245
create _221251-[:`COMPOSED OF`]->_221243
create _221251-[:`COMPOSED OF`]->_221241
create _221251-[:`COMPOSED OF`]->_221239
create _221251-[:`DEPENDS ON`]->_221303
create _221251-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_221237
create _221251-[:`CONTAINS`]->_221250
create _221251-[:`CONTAINS`]->_221249
create _221251-[:`CONTAINS`]->_221248
create _221253-[:`CONTAINS`]->_221252
create _221255-[:`CONTAINS`]->_221254
create _221257-[:`CONTAINS`]->_221256
create _221259-[:`CONTAINS`]->_221258
create _221261-[:`COMPOSED OF`]->_221259
create _221261-[:`COMPOSED OF`]->_221257
create _221261-[:`COMPOSED OF`]->_221255
create _221261-[:`COMPOSED OF`]->_221253
create _221261-[:`CONTAINS`]->_221260
create _221263-[:`CONTAINS`]->_221262
create _221265-[:`CONTAINS`]->_221264
create _221269-[:`COMPOSED OF`]->_221265
create _221269-[:`COMPOSED OF`]->_221263
create _221269-[:`COMPOSED OF`]->_221261
create _221269-[:`DEPENDS ON`]->_221303
create _221269-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_221237
create _221269-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_221251
create _221269-[:`CONTAINS`]->_221268
create _221269-[:`CONTAINS`]->_221267
create _221269-[:`CONTAINS`]->_221266
create _221271-[:`CONTAINS`]->_221270
create _221273-[:`CONTAINS`]->_221272
create _221277-[:`COMPOSED OF`]->_221273
create _221277-[:`COMPOSED OF`]->_221271
create _221277-[:`DEPENDS ON`]->_221303
create _221277-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_221251
create _221277-[:`CONTAINS`]->_221276
create _221277-[:`CONTAINS`]->_221275
create _221277-[:`CONTAINS`]->_221274
create _221279-[:`CONTAINS`]->_221278
create _221281-[:`CONTAINS`]->_221280
create _221285-[:`COMPOSED OF`]->_221281
create _221285-[:`COMPOSED OF`]->_221279
create _221285-[:`DEPENDS ON`]->_221303
create _221285-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_221251
create _221285-[:`CONTAINS`]->_221284
create _221285-[:`CONTAINS`]->_221283
create _221285-[:`CONTAINS`]->_221282
create _221286-[:`DEPENDS ON`]->_221303
create _221288-[:`CONTAINS`]->_221287
create _221290-[:`CONTAINS`]->_221289
create _221292-[:`CONTAINS`]->_221291
create _221297-[:`COMPOSED OF`]->_221292
create _221297-[:`COMPOSED OF`]->_221290
create _221297-[:`COMPOSED OF`]->_221288
create _221297-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_221285
create _221297-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_221251
create _221297-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_221277
create _221297-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_221269
create _221297-[:`COMPATIBLE WITH`]->_221303
create _221297-[:`CONTAINS`]->_221296
create _221297-[:`CONTAINS`]->_221295
create _221297-[:`CONTAINS`]->_221294
create _221297-[:`CONTAINS`]->_221293
create _221303-[:`CONTAINS`]->_221302
create _221303-[:`CONTAINS`]->_221301
create _221303-[:`CONTAINS`]->_221300
create _221303-[:`CONTAINS`]->_221299
create _221303-[:`CONTAINS`]->_221298
create _221306-[:`CONTAINS`]->_221305
create _221309-[:`COMPOSED OF`]->_221306
create _221309-[:`DEPENDS ON`]->_221383
create _221309-[:`CONTAINS`]->_221308
create _221309-[:`CONTAINS`]->_221307
create _221311-[:`CONTAINS`]->_221310
create _221315-[:`COMPOSED OF`]->_221311
create _221315-[:`DEPENDS ON`]->_221383
create _221315-[:`CONTAINS`]->_221314
create _221315-[:`CONTAINS`]->_221313
create _221315-[:`CONTAINS`]->_221312
create _221317-[:`CONTAINS`]->_221316
create _221319-[:`CONTAINS`]->_221318
create _221321-[:`CONTAINS`]->_221320
create _221323-[:`CONTAINS`]->_221322
create _221325-[:`CONTAINS`]->_221324
create _221329-[:`COMPOSED OF`]->_221325
create _221329-[:`COMPOSED OF`]->_221323
create _221329-[:`COMPOSED OF`]->_221321
create _221329-[:`COMPOSED OF`]->_221319
create _221329-[:`COMPOSED OF`]->_221317
create _221329-[:`DEPENDS ON`]->_221383
create _221329-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_221315
create _221329-[:`CONTAINS`]->_221328
create _221329-[:`CONTAINS`]->_221327
create _221329-[:`CONTAINS`]->_221326
create _221331-[:`CONTAINS`]->_221330
create _221333-[:`CONTAINS`]->_221332
create _221335-[:`CONTAINS`]->_221334
create _221337-[:`CONTAINS`]->_221336
create _221339-[:`COMPOSED OF`]->_221337
create _221339-[:`COMPOSED OF`]->_221335
create _221339-[:`COMPOSED OF`]->_221333
create _221339-[:`COMPOSED OF`]->_221331
create _221339-[:`CONTAINS`]->_221338
create _221341-[:`CONTAINS`]->_221340
create _221343-[:`CONTAINS`]->_221342
create _221347-[:`COMPOSED OF`]->_221343
create _221347-[:`COMPOSED OF`]->_221341
create _221347-[:`COMPOSED OF`]->_221339
create _221347-[:`DEPENDS ON`]->_221383
create _221347-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_221315
create _221347-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221329
create _221347-[:`CONTAINS`]->_221346
create _221347-[:`CONTAINS`]->_221345
create _221347-[:`CONTAINS`]->_221344
create _221349-[:`CONTAINS`]->_221348
create _221351-[:`CONTAINS`]->_221350
create _221355-[:`COMPOSED OF`]->_221351
create _221355-[:`COMPOSED OF`]->_221349
create _221355-[:`DEPENDS ON`]->_221383
create _221355-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221329
create _221355-[:`CONTAINS`]->_221354
create _221355-[:`CONTAINS`]->_221353
create _221355-[:`CONTAINS`]->_221352
create _221357-[:`CONTAINS`]->_221356
create _221359-[:`CONTAINS`]->_221358
create _221361-[:`CONTAINS`]->_221360
create _221365-[:`COMPOSED OF`]->_221361
create _221365-[:`COMPOSED OF`]->_221359
create _221365-[:`COMPOSED OF`]->_221357
create _221365-[:`DEPENDS ON`]->_221383
create _221365-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221329
create _221365-[:`CONTAINS`]->_221364
create _221365-[:`CONTAINS`]->_221363
create _221365-[:`CONTAINS`]->_221362
create _221366-[:`DEPENDS ON`]->_221383
create _221368-[:`CONTAINS`]->_221367
create _221370-[:`CONTAINS`]->_221369
create _221372-[:`CONTAINS`]->_221371
create _221377-[:`COMPOSED OF`]->_221372
create _221377-[:`COMPOSED OF`]->_221370
create _221377-[:`COMPOSED OF`]->_221368
create _221377-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221365
create _221377-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221329
create _221377-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221355
create _221377-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221347
create _221377-[:`COMPATIBLE WITH` {`version_max`:"0.2.1", `version_min`:"0.2.0"}]->_221383
create _221377-[:`CONTAINS`]->_221376
create _221377-[:`CONTAINS`]->_221375
create _221377-[:`CONTAINS`]->_221374
create _221377-[:`CONTAINS`]->_221373
create _221383-[:`CONTAINS`]->_221382
create _221383-[:`CONTAINS`]->_221381
create _221383-[:`CONTAINS`]->_221380
create _221383-[:`CONTAINS`]->_221379
create _221383-[:`CONTAINS`]->_221378
create _221386-[:`CONTAINS`]->_221385
create _221389-[:`COMPOSED OF`]->_221386
create _221389-[:`DEPENDS ON`]->_221463
create _221389-[:`CONTAINS`]->_221388
create _221389-[:`CONTAINS`]->_221387
create _221391-[:`CONTAINS`]->_221390
create _221395-[:`COMPOSED OF`]->_221391
create _221395-[:`DEPENDS ON`]->_221463
create _221395-[:`CONTAINS`]->_221394
create _221395-[:`CONTAINS`]->_221393
create _221395-[:`CONTAINS`]->_221392
create _221397-[:`CONTAINS`]->_221396
create _221399-[:`CONTAINS`]->_221398
create _221401-[:`CONTAINS`]->_221400
create _221403-[:`CONTAINS`]->_221402
create _221405-[:`CONTAINS`]->_221404
create _221409-[:`COMPOSED OF`]->_221405
create _221409-[:`COMPOSED OF`]->_221403
create _221409-[:`COMPOSED OF`]->_221401
create _221409-[:`COMPOSED OF`]->_221399
create _221409-[:`COMPOSED OF`]->_221397
create _221409-[:`DEPENDS ON`]->_221463
create _221409-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_221395
create _221409-[:`CONTAINS`]->_221408
create _221409-[:`CONTAINS`]->_221407
create _221409-[:`CONTAINS`]->_221406
create _221411-[:`CONTAINS`]->_221410
create _221413-[:`CONTAINS`]->_221412
create _221415-[:`CONTAINS`]->_221414
create _221417-[:`CONTAINS`]->_221416
create _221419-[:`COMPOSED OF`]->_221417
create _221419-[:`COMPOSED OF`]->_221415
create _221419-[:`COMPOSED OF`]->_221413
create _221419-[:`COMPOSED OF`]->_221411
create _221419-[:`CONTAINS`]->_221418
create _221421-[:`CONTAINS`]->_221420
create _221423-[:`CONTAINS`]->_221422
create _221427-[:`COMPOSED OF`]->_221423
create _221427-[:`COMPOSED OF`]->_221421
create _221427-[:`COMPOSED OF`]->_221419
create _221427-[:`DEPENDS ON`]->_221463
create _221427-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_221395
create _221427-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221409
create _221427-[:`CONTAINS`]->_221426
create _221427-[:`CONTAINS`]->_221425
create _221427-[:`CONTAINS`]->_221424
create _221429-[:`CONTAINS`]->_221428
create _221431-[:`CONTAINS`]->_221430
create _221435-[:`COMPOSED OF`]->_221431
create _221435-[:`COMPOSED OF`]->_221429
create _221435-[:`DEPENDS ON`]->_221463
create _221435-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221409
create _221435-[:`CONTAINS`]->_221434
create _221435-[:`CONTAINS`]->_221433
create _221435-[:`CONTAINS`]->_221432
create _221437-[:`CONTAINS`]->_221436
create _221439-[:`CONTAINS`]->_221438
create _221441-[:`CONTAINS`]->_221440
create _221445-[:`COMPOSED OF`]->_221441
create _221445-[:`COMPOSED OF`]->_221439
create _221445-[:`COMPOSED OF`]->_221437
create _221445-[:`DEPENDS ON`]->_221463
create _221445-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221409
create _221445-[:`CONTAINS`]->_221444
create _221445-[:`CONTAINS`]->_221443
create _221445-[:`CONTAINS`]->_221442
create _221446-[:`DEPENDS ON`]->_221463
create _221448-[:`CONTAINS`]->_221447
create _221450-[:`CONTAINS`]->_221449
create _221452-[:`CONTAINS`]->_221451
create _221457-[:`COMPOSED OF`]->_221452
create _221457-[:`COMPOSED OF`]->_221450
create _221457-[:`COMPOSED OF`]->_221448
create _221457-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221445
create _221457-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221409
create _221457-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221435
create _221457-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221427
create _221457-[:`COMPATIBLE WITH`]->_221463
create _221457-[:`CONTAINS`]->_221456
create _221457-[:`CONTAINS`]->_221455
create _221457-[:`CONTAINS`]->_221454
create _221457-[:`CONTAINS`]->_221453
create _221463-[:`CONTAINS`]->_221462
create _221463-[:`CONTAINS`]->_221461
create _221463-[:`CONTAINS`]->_221460
create _221463-[:`CONTAINS`]->_221459
create _221463-[:`CONTAINS`]->_221458
create _221466-[:`CONTAINS`]->_221465
create _221469-[:`COMPOSED OF`]->_221466
create _221469-[:`DEPENDS ON`]->_221551
create _221469-[:`CONTAINS`]->_221468
create _221469-[:`CONTAINS`]->_221467
create _221471-[:`CONTAINS`]->_221470
create _221473-[:`CONTAINS`]->_221472
create _221477-[:`COMPOSED OF`]->_221473
create _221477-[:`COMPOSED OF`]->_221471
create _221477-[:`DEPENDS ON`]->_221551
create _221477-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221478
create _221477-[:`CONTAINS`]->_221476
create _221477-[:`CONTAINS`]->_221475
create _221477-[:`CONTAINS`]->_221474
create _221478-[:`COMPOSED OF`]->_221494
create _221478-[:`COMPOSED OF`]->_221492
create _221478-[:`COMPOSED OF`]->_221490
create _221478-[:`COMPOSED OF`]->_221488
create _221478-[:`COMPOSED OF`]->_221486
create _221478-[:`DEPENDS ON`]->_221551
create _221478-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_221484
create _221478-[:`CONTAINS`]->_221497
create _221478-[:`CONTAINS`]->_221496
create _221478-[:`CONTAINS`]->_221495
create _221480-[:`CONTAINS`]->_221479
create _221484-[:`COMPOSED OF`]->_221480
create _221484-[:`DEPENDS ON`]->_221551
create _221484-[:`CONTAINS`]->_221483
create _221484-[:`CONTAINS`]->_221482
create _221484-[:`CONTAINS`]->_221481
create _221486-[:`CONTAINS`]->_221485
create _221488-[:`CONTAINS`]->_221487
create _221490-[:`CONTAINS`]->_221489
create _221492-[:`CONTAINS`]->_221491
create _221494-[:`CONTAINS`]->_221493
create _221499-[:`CONTAINS`]->_221498
create _221501-[:`CONTAINS`]->_221500
create _221503-[:`CONTAINS`]->_221502
create _221505-[:`CONTAINS`]->_221504
create _221507-[:`COMPOSED OF`]->_221505
create _221507-[:`COMPOSED OF`]->_221503
create _221507-[:`COMPOSED OF`]->_221501
create _221507-[:`COMPOSED OF`]->_221499
create _221507-[:`CONTAINS`]->_221506
create _221509-[:`CONTAINS`]->_221508
create _221511-[:`CONTAINS`]->_221510
create _221515-[:`COMPOSED OF`]->_221511
create _221515-[:`COMPOSED OF`]->_221509
create _221515-[:`COMPOSED OF`]->_221507
create _221515-[:`DEPENDS ON`]->_221551
create _221515-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_221484
create _221515-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221478
create _221515-[:`CONTAINS`]->_221514
create _221515-[:`CONTAINS`]->_221513
create _221515-[:`CONTAINS`]->_221512
create _221517-[:`CONTAINS`]->_221516
create _221519-[:`CONTAINS`]->_221518
create _221523-[:`COMPOSED OF`]->_221519
create _221523-[:`COMPOSED OF`]->_221517
create _221523-[:`DEPENDS ON`]->_221551
create _221523-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221478
create _221523-[:`CONTAINS`]->_221522
create _221523-[:`CONTAINS`]->_221521
create _221523-[:`CONTAINS`]->_221520
create _221525-[:`CONTAINS`]->_221524
create _221527-[:`CONTAINS`]->_221526
create _221529-[:`CONTAINS`]->_221528
create _221533-[:`COMPOSED OF`]->_221529
create _221533-[:`COMPOSED OF`]->_221527
create _221533-[:`COMPOSED OF`]->_221525
create _221533-[:`DEPENDS ON`]->_221551
create _221533-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_221477
create _221533-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221478
create _221533-[:`CONTAINS`]->_221532
create _221533-[:`CONTAINS`]->_221531
create _221533-[:`CONTAINS`]->_221530
create _221534-[:`DEPENDS ON`]->_221551
create _221536-[:`CONTAINS`]->_221535
create _221538-[:`CONTAINS`]->_221537
create _221540-[:`CONTAINS`]->_221539
create _221545-[:`COMPOSED OF`]->_221540
create _221545-[:`COMPOSED OF`]->_221538
create _221545-[:`COMPOSED OF`]->_221536
create _221545-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221533
create _221545-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221478
create _221545-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221523
create _221545-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221515
create _221545-[:`COMPATIBLE WITH`]->_221551
create _221545-[:`CONTAINS`]->_221544
create _221545-[:`CONTAINS`]->_221543
create _221545-[:`CONTAINS`]->_221542
create _221545-[:`CONTAINS`]->_221541
create _221551-[:`CONTAINS`]->_221550
create _221551-[:`CONTAINS`]->_221549
create _221551-[:`CONTAINS`]->_221548
create _221551-[:`CONTAINS`]->_221547
create _221551-[:`CONTAINS`]->_221546
create _221554-[:`CONTAINS`]->_221553
create _221557-[:`COMPOSED OF`]->_221554
create _221557-[:`DEPENDS ON`]->_221639
create _221557-[:`CONTAINS`]->_221556
create _221557-[:`CONTAINS`]->_221555
create _221559-[:`CONTAINS`]->_221558
create _221561-[:`CONTAINS`]->_221560
create _221565-[:`COMPOSED OF`]->_221561
create _221565-[:`COMPOSED OF`]->_221559
create _221565-[:`DEPENDS ON`]->_221639
create _221565-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221566
create _221565-[:`CONTAINS`]->_221564
create _221565-[:`CONTAINS`]->_221563
create _221565-[:`CONTAINS`]->_221562
create _221566-[:`COMPOSED OF`]->_221582
create _221566-[:`COMPOSED OF`]->_221580
create _221566-[:`COMPOSED OF`]->_221578
create _221566-[:`COMPOSED OF`]->_221576
create _221566-[:`COMPOSED OF`]->_221574
create _221566-[:`DEPENDS ON`]->_221639
create _221566-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_221572
create _221566-[:`CONTAINS`]->_221585
create _221566-[:`CONTAINS`]->_221584
create _221566-[:`CONTAINS`]->_221583
create _221568-[:`CONTAINS`]->_221567
create _221572-[:`COMPOSED OF`]->_221568
create _221572-[:`DEPENDS ON`]->_221639
create _221572-[:`CONTAINS`]->_221571
create _221572-[:`CONTAINS`]->_221570
create _221572-[:`CONTAINS`]->_221569
create _221574-[:`CONTAINS`]->_221573
create _221576-[:`CONTAINS`]->_221575
create _221578-[:`CONTAINS`]->_221577
create _221580-[:`CONTAINS`]->_221579
create _221582-[:`CONTAINS`]->_221581
create _221587-[:`CONTAINS`]->_221586
create _221589-[:`CONTAINS`]->_221588
create _221591-[:`CONTAINS`]->_221590
create _221593-[:`CONTAINS`]->_221592
create _221595-[:`COMPOSED OF`]->_221593
create _221595-[:`COMPOSED OF`]->_221591
create _221595-[:`COMPOSED OF`]->_221589
create _221595-[:`COMPOSED OF`]->_221587
create _221595-[:`CONTAINS`]->_221594
create _221597-[:`CONTAINS`]->_221596
create _221599-[:`CONTAINS`]->_221598
create _221603-[:`COMPOSED OF`]->_221599
create _221603-[:`COMPOSED OF`]->_221597
create _221603-[:`COMPOSED OF`]->_221595
create _221603-[:`DEPENDS ON`]->_221639
create _221603-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_221572
create _221603-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221566
create _221603-[:`CONTAINS`]->_221602
create _221603-[:`CONTAINS`]->_221601
create _221603-[:`CONTAINS`]->_221600
create _221605-[:`CONTAINS`]->_221604
create _221607-[:`CONTAINS`]->_221606
create _221611-[:`COMPOSED OF`]->_221607
create _221611-[:`COMPOSED OF`]->_221605
create _221611-[:`DEPENDS ON`]->_221639
create _221611-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221566
create _221611-[:`CONTAINS`]->_221610
create _221611-[:`CONTAINS`]->_221609
create _221611-[:`CONTAINS`]->_221608
create _221613-[:`CONTAINS`]->_221612
create _221615-[:`CONTAINS`]->_221614
create _221617-[:`CONTAINS`]->_221616
create _221621-[:`COMPOSED OF`]->_221617
create _221621-[:`COMPOSED OF`]->_221615
create _221621-[:`COMPOSED OF`]->_221613
create _221621-[:`DEPENDS ON`]->_221639
create _221621-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_221565
create _221621-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221566
create _221621-[:`CONTAINS`]->_221620
create _221621-[:`CONTAINS`]->_221619
create _221621-[:`CONTAINS`]->_221618
create _221622-[:`DEPENDS ON`]->_221639
create _221624-[:`CONTAINS`]->_221623
create _221626-[:`CONTAINS`]->_221625
create _221628-[:`CONTAINS`]->_221627
create _221633-[:`COMPOSED OF`]->_221628
create _221633-[:`COMPOSED OF`]->_221626
create _221633-[:`COMPOSED OF`]->_221624
create _221633-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221621
create _221633-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221566
create _221633-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221611
create _221633-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221603
create _221633-[:`COMPATIBLE WITH`]->_221639
create _221633-[:`CONTAINS`]->_221632
create _221633-[:`CONTAINS`]->_221631
create _221633-[:`CONTAINS`]->_221630
create _221633-[:`CONTAINS`]->_221629
create _221639-[:`CONTAINS`]->_221638
create _221639-[:`CONTAINS`]->_221637
create _221639-[:`CONTAINS`]->_221636
create _221639-[:`CONTAINS`]->_221635
create _221639-[:`CONTAINS`]->_221634
create _221642-[:`CONTAINS`]->_221641
create _221645-[:`COMPOSED OF`]->_221642
create _221645-[:`DEPENDS ON`]->_221727
create _221645-[:`CONTAINS`]->_221644
create _221645-[:`CONTAINS`]->_221643
create _221647-[:`CONTAINS`]->_221646
create _221649-[:`CONTAINS`]->_221648
create _221653-[:`COMPOSED OF`]->_221649
create _221653-[:`COMPOSED OF`]->_221647
create _221653-[:`DEPENDS ON`]->_221727
create _221653-[:`CONTAINS`]->_221652
create _221653-[:`CONTAINS`]->_221651
create _221653-[:`CONTAINS`]->_221650
create _221655-[:`CONTAINS`]->_221654
create _221659-[:`COMPOSED OF`]->_221655
create _221659-[:`DEPENDS ON`]->_221727
create _221659-[:`CONTAINS`]->_221658
create _221659-[:`CONTAINS`]->_221657
create _221659-[:`CONTAINS`]->_221656
create _221661-[:`CONTAINS`]->_221660
create _221663-[:`CONTAINS`]->_221662
create _221665-[:`CONTAINS`]->_221664
create _221667-[:`CONTAINS`]->_221666
create _221669-[:`CONTAINS`]->_221668
create _221673-[:`COMPOSED OF`]->_221669
create _221673-[:`COMPOSED OF`]->_221667
create _221673-[:`COMPOSED OF`]->_221665
create _221673-[:`COMPOSED OF`]->_221663
create _221673-[:`COMPOSED OF`]->_221661
create _221673-[:`DEPENDS ON`]->_221727
create _221673-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_221659
create _221673-[:`CONTAINS`]->_221672
create _221673-[:`CONTAINS`]->_221671
create _221673-[:`CONTAINS`]->_221670
create _221675-[:`CONTAINS`]->_221674
create _221677-[:`CONTAINS`]->_221676
create _221679-[:`CONTAINS`]->_221678
create _221681-[:`CONTAINS`]->_221680
create _221683-[:`COMPOSED OF`]->_221681
create _221683-[:`COMPOSED OF`]->_221679
create _221683-[:`COMPOSED OF`]->_221677
create _221683-[:`COMPOSED OF`]->_221675
create _221683-[:`CONTAINS`]->_221682
create _221685-[:`CONTAINS`]->_221684
create _221687-[:`CONTAINS`]->_221686
create _221691-[:`COMPOSED OF`]->_221687
create _221691-[:`COMPOSED OF`]->_221685
create _221691-[:`COMPOSED OF`]->_221683
create _221691-[:`DEPENDS ON`]->_221727
create _221691-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_221659
create _221691-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221673
create _221691-[:`CONTAINS`]->_221690
create _221691-[:`CONTAINS`]->_221689
create _221691-[:`CONTAINS`]->_221688
create _221693-[:`CONTAINS`]->_221692
create _221695-[:`CONTAINS`]->_221694
create _221699-[:`COMPOSED OF`]->_221695
create _221699-[:`COMPOSED OF`]->_221693
create _221699-[:`DEPENDS ON`]->_221727
create _221699-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221673
create _221699-[:`CONTAINS`]->_221698
create _221699-[:`CONTAINS`]->_221697
create _221699-[:`CONTAINS`]->_221696
create _221701-[:`CONTAINS`]->_221700
create _221703-[:`CONTAINS`]->_221702
create _221705-[:`CONTAINS`]->_221704
create _221709-[:`COMPOSED OF`]->_221705
create _221709-[:`COMPOSED OF`]->_221703
create _221709-[:`COMPOSED OF`]->_221701
create _221709-[:`DEPENDS ON`]->_221727
create _221709-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_221653
create _221709-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221673
create _221709-[:`CONTAINS`]->_221708
create _221709-[:`CONTAINS`]->_221707
create _221709-[:`CONTAINS`]->_221706
create _221710-[:`DEPENDS ON`]->_221727
create _221712-[:`CONTAINS`]->_221711
create _221714-[:`CONTAINS`]->_221713
create _221716-[:`CONTAINS`]->_221715
create _221721-[:`COMPOSED OF`]->_221716
create _221721-[:`COMPOSED OF`]->_221714
create _221721-[:`COMPOSED OF`]->_221712
create _221721-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221709
create _221721-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221673
create _221721-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221699
create _221721-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_221691
create _221721-[:`COMPATIBLE WITH`]->_221727
create _221721-[:`CONTAINS`]->_221720
create _221721-[:`CONTAINS`]->_221719
create _221721-[:`CONTAINS`]->_221718
create _221721-[:`CONTAINS`]->_221717
create _221727-[:`CONTAINS`]->_221726
create _221727-[:`CONTAINS`]->_221725
create _221727-[:`CONTAINS`]->_221724
create _221727-[:`CONTAINS`]->_221723
create _221727-[:`CONTAINS`]->_221722
;
commit
