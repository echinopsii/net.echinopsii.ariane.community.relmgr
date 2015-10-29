begin
create (_43183:`FileNode` {`nID`:1, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.0"})
create (_43184:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:2, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.0"})
create (_43185:`FileNode` {`nID`:3, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_43186:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:4, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_43187:`FileNode` {`nID`:5, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_43188:`FileNode` {`nID`:6, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_43189:`FileNode` {`nID`:7, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_43190:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:8, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_43191:`FileNode` {`nID`:9, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.0"})
create (_43192:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:10, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_43193:`FileNode` {`nID`:11, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.0"})
create (_43194:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:12, `name`:"idmwat", `order`:2, `version`:"0.5.0"})
create (_43195:`FileNode` {`nID`:13, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.0"})
create (_43196:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:14, `name`:"wab", `order`:3, `version`:"0.5.0"})
create (_43197:`FileNode` {`nID`:15, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.0"})
create (_43198:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:16, `name`:"wat", `order`:4, `version`:"0.5.0"})
create (_43199:`FileNode` {`nID`:17, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.0"})
create (_43200:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:18, `name`:"wresources", `order`:5, `version`:"0.5.0"})
create (_43201:`FileNode` {`nID`:19, `name`:"ariane.community.core.portal-0.5.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_43202:`FileNode` {`nID`:20, `name`:"net.echinopsii.ariane.community.core.portal_0.5.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_43203:`FileNode` {`nID`:21, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.0"})
create (_43204:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:22, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.0"})
create (_43205:`FileNode` {`nID`:23, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.0"})
create (_43206:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:24, `name`:"api", `order`:1, `version`:"0.5.0"})
create (_43207:`FileNode` {`nID`:25, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.0"})
create (_43208:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:26, `name`:"blueprints", `order`:2, `version`:"0.5.0"})
create (_43209:`FileNode` {`nID`:27, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.0"})
create (_43210:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:28, `name`:"dsl", `order`:3, `version`:"0.5.0"})
create (_43211:`FileNode` {`nID`:29, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.0"})
create (_43212:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:30, `name`:"rim", `order`:4, `version`:"0.5.0"})
create (_43213:`FileNode` {`nID`:31, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.0"})
create (_43214:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:32, `name`:"ds", `order`:5, `version`:"0.5.0"})
create (_43215:`FileNode` {`nID`:33, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.0"})
create (_43216:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:34, `name`:"taitale", `order`:6, `version`:"0.5.0"})
create (_43217:`FileNode` {`nID`:35, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.0"})
create (_43218:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:36, `name`:"wat", `order`:7, `version`:"0.5.0"})
create (_43219:`FileNode` {`nID`:37, `name`:"ariane.community.core.mapping-0.5.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_43220:`FileNode` {`nID`:38, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_43221:`FileNode` {`nID`:39, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.0"})
create (_43222:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:40, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.0"})
create (_43223:`FileNode` {`nID`:41, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.0"})
create (_43224:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:42, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_43225:`FileNode` {`nID`:43, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.0"})
create (_43226:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:44, `name`:"wat", `order`:2, `version`:"0.5.0"})
create (_43227:`FileNode` {`nID`:45, `name`:"ariane.community.core.directory-0.5.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_43228:`FileNode` {`nID`:46, `name`:"net.echinopsii.ariane.community.core.directory_0.5.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_43229:`FileNode` {`nID`:47, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.0"})
create (_43230:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:48, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.0"})
create (_43231:`FileNode` {`nID`:49, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.0"})
create (_43232:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:50, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_43233:`FileNode` {`nID`:51, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.0"})
create (_43234:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:52, `name`:"wat", `order`:2, `version`:"0.5.0"})
create (_43235:`FileNode` {`nID`:53, `name`:"ariane.community.core.injector-0.5.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_43236:`FileNode` {`nID`:54, `name`:"net.echinopsii.ariane.community.core.injector_0.5.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_43237:`FileNode` {`nID`:55, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.0"})
create (_43238:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:56, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.0"})
create (_43239:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:57, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.0"})
create (_43240:`FileNode` {`nID`:58, `name`:"ariane.community.distrib-0.5.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.0"})
create (_43241:`FileNode` {`nID`:59, `name`:"pom-ariane.community.distrib-0.5.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.0"})
create (_43242:`FileNode` {`nID`:60, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.0"})
create (_43243:`FileNode` {`nID`:61, `name`:"ariane.community.plugins-distrib-0.5.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.0"})
create (_43244:`FileNode` {`nID`:62, `name`:"ariane.community.git.repos-0.5.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.0"})
create (_43245:`Distribution` {`editable`:"false", `nID`:63, `name`:"community", `version`:"0.5.0"})
create (_43246:`FileNode` {`nID`:64, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.1"})
create (_43247:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:65, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.1"})
create (_43248:`FileNode` {`nID`:66, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_43249:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:67, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_43250:`FileNode` {`nID`:68, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_43251:`FileNode` {`nID`:69, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_43252:`FileNode` {`nID`:70, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_43253:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:71, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_43254:`FileNode` {`nID`:72, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_43255:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:73, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_43256:`FileNode` {`nID`:74, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_43257:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:75, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_43258:`FileNode` {`nID`:76, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_43259:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:77, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_43260:`FileNode` {`nID`:78, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_43261:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:79, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_43262:`FileNode` {`nID`:80, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_43263:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:81, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_43264:`FileNode` {`nID`:82, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_43265:`FileNode` {`nID`:83, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_43266:`FileNode` {`nID`:84, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_43267:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:85, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_43268:`FileNode` {`nID`:86, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.1"})
create (_43269:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:87, `name`:"api", `order`:1, `version`:"0.5.1"})
create (_43270:`FileNode` {`nID`:88, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.1"})
create (_43271:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:89, `name`:"blueprints", `order`:2, `version`:"0.5.1"})
create (_43272:`FileNode` {`nID`:90, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.1"})
create (_43273:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:91, `name`:"dsl", `order`:3, `version`:"0.5.1"})
create (_43274:`FileNode` {`nID`:92, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.1"})
create (_43275:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:93, `name`:"rim", `order`:4, `version`:"0.5.1"})
create (_43276:`FileNode` {`nID`:94, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.1"})
create (_43277:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:95, `name`:"ds", `order`:5, `version`:"0.5.1"})
create (_43278:`FileNode` {`nID`:96, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.1"})
create (_43279:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:97, `name`:"taitale", `order`:6, `version`:"0.5.1"})
create (_43280:`FileNode` {`nID`:98, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.1"})
create (_43281:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:99, `name`:"wat", `order`:7, `version`:"0.5.1"})
create (_43282:`FileNode` {`nID`:100, `name`:"ariane.community.core.mapping-0.5.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_43283:`FileNode` {`nID`:101, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_43284:`FileNode` {`nID`:102, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.1"})
create (_43285:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:103, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.1"})
create (_43286:`FileNode` {`nID`:104, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_43287:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:105, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_43288:`FileNode` {`nID`:106, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_43289:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:107, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_43290:`FileNode` {`nID`:108, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_43291:`FileNode` {`nID`:109, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_43292:`FileNode` {`nID`:110, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_43293:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:111, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_43294:`FileNode` {`nID`:112, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.1"})
create (_43295:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:113, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_43296:`FileNode` {`nID`:114, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.1"})
create (_43297:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:115, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_43298:`FileNode` {`nID`:116, `name`:"ariane.community.core.injector-0.5.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_43299:`FileNode` {`nID`:117, `name`:"net.echinopsii.ariane.community.core.injector_0.5.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_43300:`FileNode` {`nID`:118, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.1"})
create (_43301:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:119, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.1"})
create (_43302:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:120, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.1"})
create (_43303:`FileNode` {`nID`:121, `name`:"ariane.community.distrib-0.5.1.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.1"})
create (_43304:`FileNode` {`nID`:122, `name`:"pom-ariane.community.distrib-0.5.1.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.1"})
create (_43305:`FileNode` {`nID`:123, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.1"})
create (_43306:`FileNode` {`nID`:124, `name`:"ariane.community.plugins-distrib-0.5.1.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.1"})
create (_43307:`FileNode` {`nID`:125, `name`:"ariane.community.git.repos-0.5.1.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.1"})
create (_43308:`Distribution` {`editable`:"false", `nID`:126, `name`:"community", `version`:"0.5.1"})
create (_43309:`FileNode` {`nID`:127, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.2"})
create (_43310:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:128, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.2"})
create (_43311:`FileNode` {`nID`:129, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_43312:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:130, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_43313:`FileNode` {`nID`:131, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_43314:`FileNode` {`nID`:132, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_43315:`FileNode` {`nID`:133, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_43316:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:134, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_43317:`FileNode` {`nID`:135, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_43318:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:136, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_43319:`FileNode` {`nID`:137, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_43320:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:138, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_43321:`FileNode` {`nID`:139, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_43322:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:140, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_43323:`FileNode` {`nID`:141, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_43324:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:142, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_43325:`FileNode` {`nID`:143, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_43326:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:144, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_43327:`FileNode` {`nID`:145, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_43328:`FileNode` {`nID`:146, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_43329:`FileNode` {`nID`:147, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_43330:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:148, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_43331:`FileNode` {`nID`:149, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.1"})
create (_43332:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:150, `name`:"api", `order`:1, `version`:"0.5.1"})
create (_43333:`FileNode` {`nID`:151, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.1"})
create (_43334:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:152, `name`:"blueprints", `order`:2, `version`:"0.5.1"})
create (_43335:`FileNode` {`nID`:153, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.1"})
create (_43336:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:154, `name`:"dsl", `order`:3, `version`:"0.5.1"})
create (_43337:`FileNode` {`nID`:155, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.1"})
create (_43338:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:156, `name`:"rim", `order`:4, `version`:"0.5.1"})
create (_43339:`FileNode` {`nID`:157, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.1"})
create (_43340:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:158, `name`:"ds", `order`:5, `version`:"0.5.1"})
create (_43341:`FileNode` {`nID`:159, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.1"})
create (_43342:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:160, `name`:"taitale", `order`:6, `version`:"0.5.1"})
create (_43343:`FileNode` {`nID`:161, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.1"})
create (_43344:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:162, `name`:"wat", `order`:7, `version`:"0.5.1"})
create (_43345:`FileNode` {`nID`:163, `name`:"ariane.community.core.mapping-0.5.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_43346:`FileNode` {`nID`:164, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_43347:`FileNode` {`nID`:165, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.1"})
create (_43348:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:166, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.1"})
create (_43349:`FileNode` {`nID`:167, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_43350:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:168, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_43351:`FileNode` {`nID`:169, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_43352:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:170, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_43353:`FileNode` {`nID`:171, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_43354:`FileNode` {`nID`:172, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_43355:`FileNode` {`nID`:173, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_43356:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:174, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_43357:`FileNode` {`nID`:175, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.2"})
create (_43358:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:176, `name`:"base", `order`:1, `version`:"0.5.2"})
create (_43359:`FileNode` {`nID`:177, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.2"})
create (_43360:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:178, `name`:"wat", `order`:2, `version`:"0.5.2"})
create (_43361:`FileNode` {`nID`:179, `name`:"ariane.community.core.injector-0.5.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_43362:`FileNode` {`nID`:180, `name`:"net.echinopsii.ariane.community.core.injector_0.5.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_43363:`FileNode` {`nID`:181, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.2"})
create (_43364:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:182, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.2"})
create (_43365:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:183, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.2"})
create (_43366:`FileNode` {`nID`:184, `name`:"ariane.community.distrib-0.5.2.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.2"})
create (_43367:`FileNode` {`nID`:185, `name`:"pom-ariane.community.distrib-0.5.2.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.2"})
create (_43368:`FileNode` {`nID`:186, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.2"})
create (_43369:`FileNode` {`nID`:187, `name`:"ariane.community.plugins-distrib-0.5.2.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.2"})
create (_43370:`FileNode` {`nID`:188, `name`:"ariane.community.git.repos-0.5.2.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.2"})
create (_43371:`Distribution` {`editable`:"false", `nID`:189, `name`:"community", `version`:"0.5.2"})
create (_43372:`FileNode` {`nID`:190, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.3"})
create (_43373:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:191, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.3"})
create (_43374:`FileNode` {`nID`:192, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_43375:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:193, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_43376:`FileNode` {`nID`:194, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_43377:`FileNode` {`nID`:195, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_43378:`FileNode` {`nID`:196, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_43379:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:197, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_43380:`FileNode` {`nID`:198, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_43381:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:199, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_43382:`FileNode` {`nID`:200, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_43383:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:201, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_43384:`FileNode` {`nID`:202, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_43385:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:203, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_43386:`FileNode` {`nID`:204, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_43387:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:205, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_43388:`FileNode` {`nID`:206, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_43389:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:207, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_43390:`FileNode` {`nID`:208, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_43391:`FileNode` {`nID`:209, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_43392:`FileNode` {`nID`:210, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_43393:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:211, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_43394:`FileNode` {`nID`:212, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.2"})
create (_43395:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:213, `name`:"api", `order`:1, `version`:"0.5.2"})
create (_43396:`FileNode` {`nID`:214, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.2"})
create (_43397:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:215, `name`:"blueprints", `order`:2, `version`:"0.5.2"})
create (_43398:`FileNode` {`nID`:216, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.2"})
create (_43399:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:217, `name`:"dsl", `order`:3, `version`:"0.5.2"})
create (_43400:`FileNode` {`nID`:218, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.2"})
create (_43401:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:219, `name`:"rim", `order`:4, `version`:"0.5.2"})
create (_43402:`FileNode` {`nID`:220, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.2"})
create (_43403:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:221, `name`:"ds", `order`:5, `version`:"0.5.2"})
create (_43404:`FileNode` {`nID`:222, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.2"})
create (_43405:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:223, `name`:"taitale", `order`:6, `version`:"0.5.2"})
create (_43406:`FileNode` {`nID`:224, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.2"})
create (_43407:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:225, `name`:"wat", `order`:7, `version`:"0.5.2"})
create (_43408:`FileNode` {`nID`:226, `name`:"ariane.community.core.mapping-0.5.2.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_43409:`FileNode` {`nID`:227, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.2.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_43410:`FileNode` {`nID`:228, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.2"})
create (_43411:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:229, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.2"})
create (_43412:`FileNode` {`nID`:230, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_43413:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:231, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_43414:`FileNode` {`nID`:232, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_43415:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:233, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_43416:`FileNode` {`nID`:234, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_43417:`FileNode` {`nID`:235, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_43418:`FileNode` {`nID`:236, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_43419:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:237, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_43420:`FileNode` {`nID`:238, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.2"})
create (_43421:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:239, `name`:"base", `order`:1, `version`:"0.5.2"})
create (_43422:`FileNode` {`nID`:240, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.2"})
create (_43423:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:241, `name`:"wat", `order`:2, `version`:"0.5.2"})
create (_43424:`FileNode` {`nID`:242, `name`:"ariane.community.core.injector-0.5.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_43425:`FileNode` {`nID`:243, `name`:"net.echinopsii.ariane.community.core.injector_0.5.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_43426:`FileNode` {`nID`:244, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.2"})
create (_43427:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:245, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.2"})
create (_43428:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:246, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.2"})
create (_43429:`FileNode` {`nID`:247, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.1.0"})
create (_43430:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:248, `name`:"directory", `order`:1, `version`:"0.1.0"})
create (_43431:`FileNode` {`nID`:249, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.1.0"})
create (_43432:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:250, `name`:"jsonparser", `order`:2, `version`:"0.1.0"})
create (_43433:`FileNode` {`nID`:251, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.1.0"})
create (_43434:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:252, `name`:"injector", `order`:3, `version`:"0.1.0"})
create (_43435:`FileNode` {`nID`:253, `name`:"ariane.community.plugin.rabbitmq-0.1.0.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_43436:`FileNode` {`nID`:254, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.1.0.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.1.0"})
create (_43437:`FileNode` {`nID`:255, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_43438:`FileNode` {`nID`:256, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.1.0"})
create (_43439:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:257, `name`:"rabbitmq", `version`:"0.1.0"})
create (_43440:`FileNode` {`nID`:258, `name`:"ariane.community.distrib-0.5.3.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.3"})
create (_43441:`FileNode` {`nID`:259, `name`:"pom-ariane.community.distrib-0.5.3.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.3"})
create (_43442:`FileNode` {`nID`:260, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.3"})
create (_43443:`FileNode` {`nID`:261, `name`:"ariane.community.plugins-distrib-0.5.3.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.3"})
create (_43444:`FileNode` {`nID`:262, `name`:"ariane.community.git.repos-0.5.3.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.3"})
create (_43445:`Distribution` {`editable`:"false", `nID`:263, `name`:"community", `version`:"0.5.3"})
create (_43446:`FileNode` {`nID`:264, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.0"})
create (_43447:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:265, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.0"})
create (_43448:`FileNode` {`nID`:266, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_43449:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:267, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_43450:`FileNode` {`nID`:268, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_43451:`FileNode` {`nID`:269, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_43452:`FileNode` {`nID`:270, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_43453:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:271, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_43454:`FileNode` {`nID`:272, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.0"})
create (_43455:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:273, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_43456:`FileNode` {`nID`:274, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.0"})
create (_43457:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:275, `name`:"wat", `order`:2, `version`:"0.6.0"})
create (_43458:`FileNode` {`nID`:276, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.0"})
create (_43459:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:277, `name`:"idmwat", `order`:3, `version`:"0.6.0"})
create (_43460:`FileNode` {`nID`:278, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.0"})
create (_43461:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:279, `name`:"wab", `order`:4, `version`:"0.6.0"})
create (_43462:`FileNode` {`nID`:280, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.0"})
create (_43463:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:281, `name`:"wresources", `order`:5, `version`:"0.6.0"})
create (_43464:`FileNode` {`nID`:282, `name`:"ariane.community.core.portal-0.6.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_43465:`FileNode` {`nID`:283, `name`:"net.echinopsii.ariane.community.core.portal_0.6.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_43466:`FileNode` {`nID`:284, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.0"})
create (_43467:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:285, `name`:"portal", `order`:3, `type`:"core", `version`:"0.6.0"})
create (_43468:`FileNode` {`nID`:286, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.0"})
create (_43469:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:287, `name`:"api", `order`:1, `version`:"0.6.0"})
create (_43470:`FileNode` {`nID`:288, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.0"})
create (_43471:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:289, `name`:"blueprints", `order`:2, `version`:"0.6.0"})
create (_43472:`FileNode` {`nID`:290, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.0"})
create (_43473:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:291, `name`:"rim", `order`:3, `version`:"0.6.0"})
create (_43474:`FileNode` {`nID`:292, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.0"})
create (_43475:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:293, `name`:"dsl", `order`:4, `version`:"0.6.0"})
create (_43476:`FileNode` {`nID`:294, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.0"})
create (_43477:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:295, `name`:"ds", `order`:5, `version`:"0.6.0"})
create (_43478:`FileNode` {`nID`:296, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.0"})
create (_43479:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:297, `name`:"wat", `order`:6, `version`:"0.6.0"})
create (_43480:`FileNode` {`nID`:298, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.0"})
create (_43481:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:299, `name`:"taitale", `order`:7, `version`:"0.6.0"})
create (_43482:`FileNode` {`nID`:300, `name`:"ariane.community.core.mapping-0.6.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_43483:`FileNode` {`nID`:301, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_43484:`FileNode` {`nID`:302, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.0"})
create (_43485:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:303, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.6.0"})
create (_43486:`FileNode` {`nID`:304, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.0"})
create (_43487:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:305, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_43488:`FileNode` {`nID`:306, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.0"})
create (_43489:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:307, `name`:"wat", `order`:2, `version`:"0.6.0"})
create (_43490:`FileNode` {`nID`:308, `name`:"ariane.community.core.directory-0.6.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_43491:`FileNode` {`nID`:309, `name`:"net.echinopsii.ariane.community.core.directory_0.6.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_43492:`FileNode` {`nID`:310, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.0"})
create (_43493:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:311, `name`:"directory", `order`:5, `type`:"core", `version`:"0.6.0"})
create (_43494:`FileNode` {`nID`:312, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.0"})
create (_43495:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:313, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_43496:`FileNode` {`nID`:314, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.0"})
create (_43497:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:315, `name`:"messaging", `order`:2, `version`:"0.6.0"})
create (_43498:`FileNode` {`nID`:316, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.0"})
create (_43499:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:317, `name`:"wat", `order`:3, `version`:"0.6.0"})
create (_43500:`FileNode` {`nID`:318, `name`:"ariane.community.core.injector-0.6.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_43501:`FileNode` {`nID`:319, `name`:"net.echinopsii.ariane.community.core.injector_0.6.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_43502:`FileNode` {`nID`:320, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.0"})
create (_43503:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:321, `name`:"injector", `order`:6, `type`:"core", `version`:"0.6.0"})
create (_43504:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:322, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.6.0"})
create (_43505:`FileNode` {`nID`:323, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.0"})
create (_43506:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:324, `name`:"directory", `order`:1, `version`:"0.2.0"})
create (_43507:`FileNode` {`nID`:325, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.0"})
create (_43508:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:326, `name`:"jsonparser", `order`:2, `version`:"0.2.0"})
create (_43509:`FileNode` {`nID`:327, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.0"})
create (_43510:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:328, `name`:"injector", `order`:3, `version`:"0.2.0"})
create (_43511:`FileNode` {`nID`:329, `name`:"ariane.community.plugin.rabbitmq-0.2.0.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.0"})
create (_43512:`FileNode` {`nID`:330, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.0.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.0"})
create (_43513:`FileNode` {`nID`:331, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.0"})
create (_43514:`FileNode` {`nID`:332, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.0"})
create (_43515:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:333, `name`:"rabbitmq", `version`:"0.2.0"})
create (_43516:`FileNode` {`nID`:334, `name`:"ariane.community.distrib-0.6.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.0"})
create (_43517:`FileNode` {`nID`:335, `name`:"pom-ariane.community.distrib-0.6.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.0"})
create (_43518:`FileNode` {`nID`:336, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.0"})
create (_43519:`FileNode` {`nID`:337, `name`:"ariane.community.plugins-distrib-0.6.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.0"})
create (_43520:`FileNode` {`nID`:338, `name`:"ariane.community.git.repos-0.6.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.0"})
create (_43521:`Distribution` {`editable`:"false", `nID`:339, `name`:"community", `version`:"0.6.0"})
create (_43522:`FileNode` {`nID`:340, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.1"})
create (_43523:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:341, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.1"})
create (_43524:`FileNode` {`nID`:342, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_43525:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:343, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_43526:`FileNode` {`nID`:344, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_43527:`FileNode` {`nID`:345, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_43528:`FileNode` {`nID`:346, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_43529:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:347, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_43530:`FileNode` {`nID`:348, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.1"})
create (_43531:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:349, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_43532:`FileNode` {`nID`:350, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.1"})
create (_43533:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:351, `name`:"wat", `order`:2, `version`:"0.6.1"})
create (_43534:`FileNode` {`nID`:352, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.1"})
create (_43535:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:353, `name`:"idmwat", `order`:3, `version`:"0.6.1"})
create (_43536:`FileNode` {`nID`:354, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.1"})
create (_43537:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:355, `name`:"wab", `order`:4, `version`:"0.6.1"})
create (_43538:`FileNode` {`nID`:356, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.1"})
create (_43539:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:357, `name`:"wresources", `order`:5, `version`:"0.6.1"})
create (_43540:`FileNode` {`nID`:358, `name`:"ariane.community.core.portal-0.6.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_43541:`FileNode` {`nID`:359, `name`:"net.echinopsii.ariane.community.core.portal_0.6.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_43542:`FileNode` {`nID`:360, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.1"})
create (_43543:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:361, `name`:"portal", `order`:3, `type`:"core", `version`:"0.6.1"})
create (_43544:`FileNode` {`nID`:362, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.1"})
create (_43545:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:363, `name`:"api", `order`:1, `version`:"0.6.1"})
create (_43546:`FileNode` {`nID`:364, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.1"})
create (_43547:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:365, `name`:"blueprints", `order`:2, `version`:"0.6.1"})
create (_43548:`FileNode` {`nID`:366, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.1"})
create (_43549:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:367, `name`:"rim", `order`:3, `version`:"0.6.1"})
create (_43550:`FileNode` {`nID`:368, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.1"})
create (_43551:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:369, `name`:"dsl", `order`:4, `version`:"0.6.1"})
create (_43552:`FileNode` {`nID`:370, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.1"})
create (_43553:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:371, `name`:"ds", `order`:5, `version`:"0.6.1"})
create (_43554:`FileNode` {`nID`:372, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.1"})
create (_43555:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:373, `name`:"wat", `order`:6, `version`:"0.6.1"})
create (_43556:`FileNode` {`nID`:374, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.1"})
create (_43557:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:375, `name`:"taitale", `order`:7, `version`:"0.6.1"})
create (_43558:`FileNode` {`nID`:376, `name`:"ariane.community.core.mapping-0.6.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_43559:`FileNode` {`nID`:377, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_43560:`FileNode` {`nID`:378, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.1"})
create (_43561:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:379, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.6.1"})
create (_43562:`FileNode` {`nID`:380, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.1"})
create (_43563:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:381, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_43564:`FileNode` {`nID`:382, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.1"})
create (_43565:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:383, `name`:"wat", `order`:2, `version`:"0.6.1"})
create (_43566:`FileNode` {`nID`:384, `name`:"ariane.community.core.directory-0.6.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_43567:`FileNode` {`nID`:385, `name`:"net.echinopsii.ariane.community.core.directory_0.6.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_43568:`FileNode` {`nID`:386, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.1"})
create (_43569:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:387, `name`:"directory", `order`:5, `type`:"core", `version`:"0.6.1"})
create (_43570:`FileNode` {`nID`:388, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.1"})
create (_43571:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:389, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_43572:`FileNode` {`nID`:390, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.1"})
create (_43573:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:391, `name`:"messaging", `order`:2, `version`:"0.6.1"})
create (_43574:`FileNode` {`nID`:392, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.1"})
create (_43575:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:393, `name`:"wat", `order`:3, `version`:"0.6.1"})
create (_43576:`FileNode` {`nID`:394, `name`:"ariane.community.core.injector-0.6.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_43577:`FileNode` {`nID`:395, `name`:"net.echinopsii.ariane.community.core.injector_0.6.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_43578:`FileNode` {`nID`:396, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.1"})
create (_43579:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:397, `name`:"injector", `order`:6, `type`:"core", `version`:"0.6.1"})
create (_43580:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:398, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.6.1"})
create (_43581:`FileNode` {`nID`:399, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.1"})
create (_43582:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:400, `name`:"directory", `order`:1, `version`:"0.2.1"})
create (_43583:`FileNode` {`nID`:401, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.1"})
create (_43584:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:402, `name`:"jsonparser", `order`:2, `version`:"0.2.1"})
create (_43585:`FileNode` {`nID`:403, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.1"})
create (_43586:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:404, `name`:"injector", `order`:3, `version`:"0.2.1"})
create (_43587:`FileNode` {`nID`:405, `name`:"ariane.community.plugin.rabbitmq-0.2.1.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.1"})
create (_43588:`FileNode` {`nID`:406, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.1.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.1"})
create (_43589:`FileNode` {`nID`:407, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.1"})
create (_43590:`FileNode` {`nID`:408, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.1"})
create (_43591:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:409, `name`:"rabbitmq", `version`:"0.2.1"})
create (_43592:`FileNode` {`nID`:410, `name`:"ariane.community.distrib-0.6.1.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.1"})
create (_43593:`FileNode` {`nID`:411, `name`:"pom-ariane.community.distrib-0.6.1.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.1"})
create (_43594:`FileNode` {`nID`:412, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.1"})
create (_43595:`FileNode` {`nID`:413, `name`:"ariane.community.plugins-distrib-0.6.1.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.1"})
create (_43596:`FileNode` {`nID`:414, `name`:"ariane.community.git.repos-0.6.1.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.1"})
create (_43597:`Distribution` {`editable`:"false", `nID`:415, `name`:"community", `version`:"0.6.1"})
create (_43598:`FileNode` {`nID`:416, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.2"})
create (_43599:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:417, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.2"})
create (_43600:`FileNode` {`nID`:418, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_43601:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:419, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_43602:`FileNode` {`nID`:420, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_43603:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:421, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_43604:`FileNode` {`nID`:422, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_43605:`FileNode` {`nID`:423, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_43606:`FileNode` {`nID`:424, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_43607:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:425, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_43608:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:426, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.2"})
create (_43609:`FileNode` {`nID`:427, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.1"})
create (_43610:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:428, `name`:"base", `order`:1, `version`:"0.4.1"})
create (_43611:`FileNode` {`nID`:429, `name`:"ariane.community.core.idm-0.4.1.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.1"})
create (_43612:`FileNode` {`nID`:430, `name`:"net.echinopsii.ariane.community.core.idm_0.4.1.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.1"})
create (_43613:`FileNode` {`nID`:431, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.1"})
create (_43614:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:432, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.1"})
create (_43615:`FileNode` {`nID`:433, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.2"})
create (_43616:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:434, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_43617:`FileNode` {`nID`:435, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.2"})
create (_43618:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:436, `name`:"wat", `order`:2, `version`:"0.6.2"})
create (_43619:`FileNode` {`nID`:437, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.2"})
create (_43620:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:438, `name`:"idmwat", `order`:3, `version`:"0.6.2"})
create (_43621:`FileNode` {`nID`:439, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.2"})
create (_43622:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:440, `name`:"wab", `order`:4, `version`:"0.6.2"})
create (_43623:`FileNode` {`nID`:441, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.2"})
create (_43624:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:442, `name`:"wresources", `order`:5, `version`:"0.6.2"})
create (_43625:`FileNode` {`nID`:443, `name`:"ariane.community.core.portal-0.6.2.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_43626:`FileNode` {`nID`:444, `name`:"net.echinopsii.ariane.community.core.portal_0.6.2.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_43627:`FileNode` {`nID`:445, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.2"})
create (_43628:`FileNode` {`nID`:446, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.2"})
create (_43629:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:447, `name`:"api", `order`:1, `version`:"0.6.2"})
create (_43630:`FileNode` {`nID`:448, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.2"})
create (_43631:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:449, `name`:"blueprints", `order`:2, `version`:"0.6.2"})
create (_43632:`FileNode` {`nID`:450, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.2"})
create (_43633:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:451, `name`:"rim", `order`:3, `version`:"0.6.2"})
create (_43634:`FileNode` {`nID`:452, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.2"})
create (_43635:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:453, `name`:"dsl", `order`:4, `version`:"0.6.2"})
create (_43636:`FileNode` {`nID`:454, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.2"})
create (_43637:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:455, `name`:"ds", `order`:5, `version`:"0.6.2"})
create (_43638:`FileNode` {`nID`:456, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.2"})
create (_43639:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:457, `name`:"wat", `order`:6, `version`:"0.6.2"})
create (_43640:`FileNode` {`nID`:458, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.2"})
create (_43641:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:459, `name`:"taitale", `order`:7, `version`:"0.6.2"})
create (_43642:`FileNode` {`nID`:460, `name`:"ariane.community.core.mapping-0.6.2.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_43643:`FileNode` {`nID`:461, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.2.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_43644:`FileNode` {`nID`:462, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.2"})
create (_43645:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:463, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.2"})
create (_43646:`FileNode` {`nID`:464, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.2"})
create (_43647:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:465, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_43648:`FileNode` {`nID`:466, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.2"})
create (_43649:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:467, `name`:"wat", `order`:2, `version`:"0.6.2"})
create (_43650:`FileNode` {`nID`:468, `name`:"ariane.community.core.directory-0.6.2.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_43651:`FileNode` {`nID`:469, `name`:"net.echinopsii.ariane.community.core.directory_0.6.2.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_43652:`FileNode` {`nID`:470, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.2"})
create (_43653:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:471, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.2"})
create (_43654:`FileNode` {`nID`:472, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.2"})
create (_43655:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:473, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_43656:`FileNode` {`nID`:474, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.2"})
create (_43657:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:475, `name`:"messaging", `order`:2, `version`:"0.6.2"})
create (_43658:`FileNode` {`nID`:476, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.2"})
create (_43659:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:477, `name`:"wat", `order`:3, `version`:"0.6.2"})
create (_43660:`FileNode` {`nID`:478, `name`:"ariane.community.core.injector-0.6.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_43661:`FileNode` {`nID`:479, `name`:"net.echinopsii.ariane.community.core.injector_0.6.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_43662:`FileNode` {`nID`:480, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.2"})
create (_43663:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:481, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.2"})
create (_43664:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:482, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.2"})
create (_43665:`FileNode` {`nID`:483, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.2"})
create (_43666:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:484, `name`:"directory", `order`:1, `version`:"0.2.2"})
create (_43667:`FileNode` {`nID`:485, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.2"})
create (_43668:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:486, `name`:"jsonparser", `order`:2, `version`:"0.2.2"})
create (_43669:`FileNode` {`nID`:487, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.2"})
create (_43670:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:488, `name`:"injector", `order`:3, `version`:"0.2.2"})
create (_43671:`FileNode` {`nID`:489, `name`:"ariane.community.plugin.rabbitmq-0.2.2.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.2"})
create (_43672:`FileNode` {`nID`:490, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.2.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.2"})
create (_43673:`FileNode` {`nID`:491, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.2"})
create (_43674:`FileNode` {`nID`:492, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.2"})
create (_43675:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:493, `name`:"rabbitmq", `version`:"0.2.2"})
create (_43676:`FileNode` {`nID`:494, `name`:"ariane.community.distrib-0.6.2.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.2"})
create (_43677:`FileNode` {`nID`:495, `name`:"pom-ariane.community.distrib-0.6.2.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.2"})
create (_43678:`FileNode` {`nID`:496, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.2"})
create (_43679:`FileNode` {`nID`:497, `name`:"ariane.community.plugins-distrib-0.6.2.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.2"})
create (_43680:`FileNode` {`nID`:498, `name`:"ariane.community.git.repos-0.6.2.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.2"})
create (_43681:`Distribution` {`editable`:"false", `nID`:499, `name`:"community", `version`:"0.6.2"})
create (_43682:`FileNode` {`nID`:500, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.3"})
create (_43683:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:501, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.3"})
create (_43684:`FileNode` {`nID`:502, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_43685:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:503, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_43686:`FileNode` {`nID`:504, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_43687:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:505, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_43688:`FileNode` {`nID`:506, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_43689:`FileNode` {`nID`:507, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_43690:`FileNode` {`nID`:508, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_43691:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:509, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_43692:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:510, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.3"})
create (_43693:`FileNode` {`nID`:511, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2"})
create (_43694:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:512, `name`:"base", `order`:1, `version`:"0.4.2"})
create (_43695:`FileNode` {`nID`:513, `name`:"ariane.community.core.idm-0.4.2.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2"})
create (_43696:`FileNode` {`nID`:514, `name`:"net.echinopsii.ariane.community.core.idm_0.4.2.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2"})
create (_43697:`FileNode` {`nID`:515, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2"})
create (_43698:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:516, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2"})
create (_43699:`FileNode` {`nID`:517, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.3"})
create (_43700:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:518, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_43701:`FileNode` {`nID`:519, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.3"})
create (_43702:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:520, `name`:"wat", `order`:2, `version`:"0.6.3"})
create (_43703:`FileNode` {`nID`:521, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.3"})
create (_43704:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:522, `name`:"idmwat", `order`:3, `version`:"0.6.3"})
create (_43705:`FileNode` {`nID`:523, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.3"})
create (_43706:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:524, `name`:"wab", `order`:4, `version`:"0.6.3"})
create (_43707:`FileNode` {`nID`:525, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.3"})
create (_43708:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:526, `name`:"wresources", `order`:5, `version`:"0.6.3"})
create (_43709:`FileNode` {`nID`:527, `name`:"ariane.community.core.portal-0.6.3.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_43710:`FileNode` {`nID`:528, `name`:"net.echinopsii.ariane.community.core.portal_0.6.3.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_43711:`FileNode` {`nID`:529, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.3"})
create (_43712:`FileNode` {`nID`:530, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.3"})
create (_43713:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:531, `name`:"api", `order`:1, `version`:"0.6.3"})
create (_43714:`FileNode` {`nID`:532, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.3"})
create (_43715:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:533, `name`:"blueprints", `order`:2, `version`:"0.6.3"})
create (_43716:`FileNode` {`nID`:534, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.3"})
create (_43717:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:535, `name`:"rim", `order`:3, `version`:"0.6.3"})
create (_43718:`FileNode` {`nID`:536, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.3"})
create (_43719:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:537, `name`:"dsl", `order`:4, `version`:"0.6.3"})
create (_43720:`FileNode` {`nID`:538, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.3"})
create (_43721:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:539, `name`:"ds", `order`:5, `version`:"0.6.3"})
create (_43722:`FileNode` {`nID`:540, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.3"})
create (_43723:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:541, `name`:"wat", `order`:6, `version`:"0.6.3"})
create (_43724:`FileNode` {`nID`:542, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.3"})
create (_43725:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:543, `name`:"taitale", `order`:7, `version`:"0.6.3"})
create (_43726:`FileNode` {`nID`:544, `name`:"ariane.community.core.mapping-0.6.3.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_43727:`FileNode` {`nID`:545, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.3.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_43728:`FileNode` {`nID`:546, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.3"})
create (_43729:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:547, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.3"})
create (_43730:`FileNode` {`nID`:548, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.3"})
create (_43731:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:549, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_43732:`FileNode` {`nID`:550, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.3"})
create (_43733:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:551, `name`:"wat", `order`:2, `version`:"0.6.3"})
create (_43734:`FileNode` {`nID`:552, `name`:"ariane.community.core.directory-0.6.3.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_43735:`FileNode` {`nID`:553, `name`:"net.echinopsii.ariane.community.core.directory_0.6.3.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_43736:`FileNode` {`nID`:554, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.3"})
create (_43737:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:555, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.3"})
create (_43738:`FileNode` {`nID`:556, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.3"})
create (_43739:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:557, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_43740:`FileNode` {`nID`:558, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.3"})
create (_43741:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:559, `name`:"messaging", `order`:2, `version`:"0.6.3"})
create (_43742:`FileNode` {`nID`:560, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.3"})
create (_43743:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:561, `name`:"wat", `order`:3, `version`:"0.6.3"})
create (_43744:`FileNode` {`nID`:562, `name`:"ariane.community.core.injector-0.6.3.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_43745:`FileNode` {`nID`:563, `name`:"net.echinopsii.ariane.community.core.injector_0.6.3.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_43746:`FileNode` {`nID`:564, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.3"})
create (_43747:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:565, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.3"})
create (_43748:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:566, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.3"})
create (_43749:`FileNode` {`nID`:567, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.3"})
create (_43750:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:568, `name`:"directory", `order`:1, `version`:"0.2.3"})
create (_43751:`FileNode` {`nID`:569, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.3"})
create (_43752:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:570, `name`:"jsonparser", `order`:2, `version`:"0.2.3"})
create (_43753:`FileNode` {`nID`:571, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.3"})
create (_43754:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:572, `name`:"injector", `order`:3, `version`:"0.2.3"})
create (_43755:`FileNode` {`nID`:573, `name`:"ariane.community.plugin.rabbitmq-0.2.3.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.3"})
create (_43756:`FileNode` {`nID`:574, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.3.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.3"})
create (_43757:`FileNode` {`nID`:575, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.3"})
create (_43758:`FileNode` {`nID`:576, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.3"})
create (_43759:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:577, `name`:"rabbitmq", `version`:"0.2.3"})
create (_43760:`FileNode` {`nID`:578, `name`:"ariane.community.distrib-0.6.3.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.3"})
create (_43761:`FileNode` {`nID`:579, `name`:"pom-ariane.community.distrib-0.6.3.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.3"})
create (_43762:`FileNode` {`nID`:580, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.3"})
create (_43763:`FileNode` {`nID`:581, `name`:"ariane.community.plugins-distrib-0.6.3.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.3"})
create (_43764:`FileNode` {`nID`:582, `name`:"ariane.community.git.repos-0.6.3.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.3"})
create (_43765:`Distribution` {`editable`:"false", `nID`:583, `name`:"community", `version`:"0.6.3"})
create (_43766:`FileNode` {`nID`:668, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43767:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:669, `name`:"wresources", `order`:5, `version`:"0.7.0"})
create (_43768:`FileNode` {`nID`:670, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43769:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:671, `name`:"wab", `order`:4, `version`:"0.7.0"})
create (_43770:`FileNode` {`nID`:672, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43771:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:673, `name`:"idmwat", `order`:3, `version`:"0.7.0"})
create (_43772:`FileNode` {`nID`:674, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43773:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:675, `name`:"wat", `order`:2, `version`:"0.7.0"})
create (_43774:`FileNode` {`nID`:676, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43775:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:677, `name`:"base", `order`:1, `version`:"0.7.0"})
create (_43776:`FileNode` {`nID`:678, `name`:"net.echinopsii.ariane.community.core.portal_0.7.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_43777:`FileNode` {`nID`:679, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.7.0"})
create (_43778:`FileNode` {`nID`:680, `name`:"ariane.community.core.portal-0.7.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_43779:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:681, `name`:"portal", `order`:4, `type`:"core", `version`:"0.7.0"})
create (_43780:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:682, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2"})
create (_43781:`FileNode` {`nID`:683, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_43782:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:684, `name`:"base", `order`:1, `version`:"0.4.2"})
create (_43783:`FileNode` {`nID`:685, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2"})
create (_43784:`FileNode` {`nID`:686, `name`:"net.echinopsii.ariane.community.core.idm_0.4.2.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2"})
create (_43785:`FileNode` {`nID`:687, `name`:"ariane.community.core.idm-0.4.2.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2"})
create (_43786:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:688, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.7.0"})
create (_43787:`FileNode` {`nID`:689, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43788:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:690, `name`:"wat", `order`:3, `version`:"0.7.0"})
create (_43789:`FileNode` {`nID`:691, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43790:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:692, `name`:"base", `order`:1, `version`:"0.7.0"})
create (_43791:`FileNode` {`nID`:693, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43792:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:694, `name`:"messaging", `order`:2, `version`:"0.7.0"})
create (_43793:`FileNode` {`nID`:695, `name`:"ariane.community.core.injector-0.7.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_43794:`FileNode` {`nID`:696, `name`:"net.echinopsii.ariane.community.core.injector_0.7.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_43795:`FileNode` {`nID`:697, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.7.0"})
create (_43796:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:698, `name`:"injector", `order`:7, `type`:"core", `version`:"0.7.0"})
create (_43797:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:699, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_43798:`FileNode` {`nID`:700, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43799:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:701, `name`:"base", `order`:1, `version`:"0.7.0"})
create (_43800:`FileNode` {`nID`:702, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43801:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:703, `name`:"wat", `order`:2, `version`:"0.7.0"})
create (_43802:`FileNode` {`nID`:704, `name`:"net.echinopsii.ariane.community.core.directory_0.7.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_43803:`FileNode` {`nID`:705, `name`:"ariane.community.core.directory-0.7.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_43804:`FileNode` {`nID`:706, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.7.0"})
create (_43805:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:707, `name`:"directory", `order`:6, `type`:"core", `version`:"0.7.0"})
create (_43806:`FileNode` {`nID`:708, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43807:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:709, `name`:"taitale", `order`:6, `version`:"0.7.0"})
create (_43808:`FileNode` {`nID`:710, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43809:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:711, `name`:"wat", `order`:7, `version`:"0.7.0"})
create (_43810:`FileNode` {`nID`:712, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43811:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:713, `name`:"blueprints", `order`:2, `version`:"0.7.0"})
create (_43812:`FileNode` {`nID`:714, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43813:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:715, `name`:"rim", `order`:3, `version`:"0.7.0"})
create (_43814:`FileNode` {`nID`:716, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43815:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:717, `name`:"api", `order`:1, `version`:"0.7.0"})
create (_43816:`FileNode` {`nID`:718, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43817:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:719, `name`:"dsl", `order`:4, `version`:"0.7.0"})
create (_43818:`FileNode` {`nID`:720, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43819:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:721, `name`:"ds", `order`:5, `version`:"0.7.0"})
create (_43820:`FileNode` {`nID`:722, `name`:"ariane.community.core.mapping-0.7.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_43821:`FileNode` {`nID`:723, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.7.0"})
create (_43822:`FileNode` {`nID`:724, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_43823:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:725, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.7.0"})
create (_43824:`FileNode` {`nID`:726, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.7.0"})
create (_43825:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:727, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.7.0"})
create (_43826:`FileNode` {`nID`:728, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_43827:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:729, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_43828:`FileNode` {`nID`:730, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_43829:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:731, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_43830:`FileNode` {`nID`:732, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_43831:`FileNode` {`nID`:733, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_43832:`FileNode` {`nID`:734, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_43833:`FileNode` {`nID`:735, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_43834:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:736, `name`:"injector", `order`:3, `version`:"0.2.4"})
create (_43835:`FileNode` {`nID`:737, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_43836:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:738, `name`:"jsonparser", `order`:2, `version`:"0.2.4"})
create (_43837:`FileNode` {`nID`:739, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_43838:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:740, `name`:"directory", `order`:1, `version`:"0.2.4"})
create (_43839:`FileNode` {`nID`:741, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.4"})
create (_43840:`FileNode` {`nID`:742, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.4"})
create (_43841:`FileNode` {`nID`:743, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.4.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.4"})
create (_43842:`FileNode` {`nID`:744, `name`:"ariane.community.plugin.rabbitmq-0.2.4.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.4"})
create (_43843:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:745, `name`:"rabbitmq", `version`:"0.2.4"})
create (_43844:`FileNode` {`nID`:746, `name`:"ariane.community.distrib-0.7.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.4-SNAPSHOT"})
create (_43845:`FileNode` {`nID`:747, `name`:"ariane.community.git.repos-0.7.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.4-SNAPSHOT"})
create (_43846:`FileNode` {`nID`:748, `name`:"ariane.community.plugins-distrib-0.7.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.4-SNAPSHOT"})
create (_43847:`FileNode` {`nID`:749, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.4-SNAPSHOT"})
create (_43848:`FileNode` {`nID`:750, `name`:"pom-ariane.community.distrib-0.7.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.4-SNAPSHOT"})
create (_43849:`Distribution` {`editable`:"false", `nID`:751, `name`:"community", `version`:"0.7.0"})
create (_43850:`FileNode` {`nID`:752, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_43851:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:753, `name`:"api", `order`:1, `version`:"0.1.1-SNAPSHOT"})
create (_43852:`FileNode` {`nID`:754, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_43853:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:755, `name`:"rabbitmq", `order`:2, `version`:"0.1.1-SNAPSHOT"})
create (_43854:`FileNode` {`nID`:756, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_43855:`FileNode` {`nID`:757, `name`:"ariane.community.messaging-master.SNAPSHOT.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.1-SNAPSHOT"})
create (_43856:`FileNode` {`nID`:758, `name`:"net.echinopsii.ariane.community.messaging_master.SNAPSHOT.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.1-SNAPSHOT"})
create (_43857:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:759, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.1-SNAPSHOT"})
create (_43858:`FileNode` {`nID`:760, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.7.1-SNAPSHOT"})
create (_43859:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:761, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.7.1-SNAPSHOT"})
create (_43860:`FileNode` {`nID`:762, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43861:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:763, `name`:"wat", `order`:7, `version`:"0.7.1-SNAPSHOT"})
create (_43862:`FileNode` {`nID`:764, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43863:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:765, `name`:"taitale", `order`:6, `version`:"0.7.1-SNAPSHOT"})
create (_43864:`FileNode` {`nID`:766, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43865:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:767, `name`:"dsl", `order`:4, `version`:"0.7.1-SNAPSHOT"})
create (_43866:`FileNode` {`nID`:768, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43867:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:769, `name`:"api", `order`:1, `version`:"0.7.1-SNAPSHOT"})
create (_43868:`FileNode` {`nID`:770, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43869:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:771, `name`:"rim", `order`:3, `version`:"0.7.1-SNAPSHOT"})
create (_43870:`FileNode` {`nID`:772, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43871:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:773, `name`:"blueprints", `order`:2, `version`:"0.7.1-SNAPSHOT"})
create (_43872:`FileNode` {`nID`:774, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43873:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:775, `name`:"ds", `order`:5, `version`:"0.7.1-SNAPSHOT"})
create (_43874:`FileNode` {`nID`:776, `name`:"net.echinopsii.ariane.community.core.mapping_master.SNAPSHOT.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1-SNAPSHOT"})
create (_43875:`FileNode` {`nID`:777, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.7.1-SNAPSHOT"})
create (_43876:`FileNode` {`nID`:778, `name`:"ariane.community.core.mapping-master.SNAPSHOT.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1-SNAPSHOT"})
create (_43877:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:779, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.7.1-SNAPSHOT"})
create (_43878:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:780, `name`:"portal", `order`:4, `type`:"core", `version`:"0.7.1-SNAPSHOT"})
create (_43879:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:781, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.3-SNAPSHOT"})
create (_43880:`FileNode` {`nID`:782, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43881:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:783, `name`:"wat", `order`:2, `version`:"0.7.1-SNAPSHOT"})
create (_43882:`FileNode` {`nID`:784, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43883:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:785, `name`:"base", `order`:1, `version`:"0.7.1-SNAPSHOT"})
create (_43884:`FileNode` {`nID`:786, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.7.1-SNAPSHOT"})
create (_43885:`FileNode` {`nID`:787, `name`:"ariane.community.core.directory-master.SNAPSHOT.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1-SNAPSHOT"})
create (_43886:`FileNode` {`nID`:788, `name`:"net.echinopsii.ariane.community.core.directory_master.SNAPSHOT.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1-SNAPSHOT"})
create (_43887:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:789, `name`:"directory", `order`:6, `type`:"core", `version`:"0.7.1-SNAPSHOT"})
create (_43888:`FileNode` {`nID`:790, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43889:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:791, `name`:"messaging", `order`:2, `version`:"0.7.1-SNAPSHOT"})
create (_43890:`FileNode` {`nID`:792, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43891:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:793, `name`:"base", `order`:1, `version`:"0.7.1-SNAPSHOT"})
create (_43892:`FileNode` {`nID`:794, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43893:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:795, `name`:"wat", `order`:3, `version`:"0.7.1-SNAPSHOT"})
create (_43894:`FileNode` {`nID`:796, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.7.1-SNAPSHOT"})
create (_43895:`FileNode` {`nID`:797, `name`:"net.echinopsii.ariane.community.core.injector_master.SNAPSHOT.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1-SNAPSHOT"})
create (_43896:`FileNode` {`nID`:798, `name`:"ariane.community.core.injector-master.SNAPSHOT.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1-SNAPSHOT"})
create (_43897:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:799, `name`:"injector", `order`:7, `type`:"core", `version`:"0.7.1-SNAPSHOT"})
create (_43898:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:800, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.7.1-SNAPSHOT"})
create (_43899:`FileNode` {`nID`:801, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_43900:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:802, `name`:"base", `order`:1, `version`:"0.4.3-SNAPSHOT"})
create (_43901:`FileNode` {`nID`:803, `name`:"ariane.community.core.idm-master.SNAPSHOT.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.3-SNAPSHOT"})
create (_43902:`FileNode` {`nID`:804, `name`:"net.echinopsii.ariane.community.core.idm_master.SNAPSHOT.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.3-SNAPSHOT"})
create (_43903:`FileNode` {`nID`:805, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.3-SNAPSHOT"})
create (_43904:`FileNode` {`nID`:806, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43905:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:807, `name`:"base", `order`:1, `version`:"0.7.1-SNAPSHOT"})
create (_43906:`FileNode` {`nID`:808, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43907:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:809, `name`:"wat", `order`:2, `version`:"0.7.1-SNAPSHOT"})
create (_43908:`FileNode` {`nID`:810, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43909:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:811, `name`:"idmwat", `order`:3, `version`:"0.7.1-SNAPSHOT"})
create (_43910:`FileNode` {`nID`:812, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43911:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:813, `name`:"wab", `order`:4, `version`:"0.7.1-SNAPSHOT"})
create (_43912:`FileNode` {`nID`:814, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_43913:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:815, `name`:"wresources", `order`:5, `version`:"0.7.1-SNAPSHOT"})
create (_43914:`FileNode` {`nID`:816, `name`:"ariane.community.core.portal-master.SNAPSHOT.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1-SNAPSHOT"})
create (_43915:`FileNode` {`nID`:817, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.7.1-SNAPSHOT"})
create (_43916:`FileNode` {`nID`:818, `name`:"net.echinopsii.ariane.community.core.portal_master.SNAPSHOT.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1-SNAPSHOT"})
create (_43917:`FileNode` {`nID`:819, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_43918:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:820, `name`:"directory", `order`:1, `version`:"0.2.5-SNAPSHOT"})
create (_43919:`FileNode` {`nID`:821, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_43920:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:822, `name`:"jsonparser", `order`:2, `version`:"0.2.5-SNAPSHOT"})
create (_43921:`FileNode` {`nID`:823, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_43922:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:824, `name`:"injector", `order`:3, `version`:"0.2.5-SNAPSHOT"})
create (_43923:`FileNode` {`nID`:825, `name`:"ariane.community.plugin.rabbitmq-master.SNAPSHOT.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.5-SNAPSHOT"})
create (_43924:`FileNode` {`nID`:826, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_master.SNAPSHOT.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.5-SNAPSHOT"})
create (_43925:`FileNode` {`nID`:827, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.5-SNAPSHOT"})
create (_43926:`FileNode` {`nID`:828, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.5-SNAPSHOT"})
create (_43927:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:829, `name`:"rabbitmq", `version`:"0.2.5-SNAPSHOT"})
create (_43928:`FileNode` {`nID`:830, `name`:"pom-ariane.community.distrib-master.SNAPSHOT.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.4-SNAPSHOT"})
create (_43929:`FileNode` {`nID`:831, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.4-SNAPSHOT"})
create (_43930:`FileNode` {`nID`:832, `name`:"ariane.community.plugins-distrib-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.4-SNAPSHOT"})
create (_43931:`FileNode` {`nID`:833, `name`:"ariane.community.git.repos-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.4-SNAPSHOT"})
create (_43932:`FileNode` {`nID`:834, `name`:"ariane.community.distrib-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.4-SNAPSHOT"})
create (_43933:`Distribution` {`editable`:"true", `nID`:835, `name`:"community", `version`:"0.7.1-SNAPSHOT"})
create (_43934:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:836, `name`:"procos", `version`:"0.1.0"})
create (_43935:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:837, `name`:"procos", `version`:"0.1.1-b01"})
create (_43946:`FileNode` {`nID`:838, `name`:"net.echinopsii.ariane.community.messaging_0.1.1.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.1.1-SNAPSHOT"})
create (_43947:`FileNode` {`nID`:839, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.4.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1-SNAPSHOT"})
create (_43948:`FileNode` {`nID`:840, `name`:"net.echinopsii.ariane.community.core.injector_0.6.4.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1-SNAPSHOT"})
create (_43949:`FileNode` {`nID`:841, `name`:"net.echinopsii.ariane.community.core.portal_0.6.4.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1-SNAPSHOT"})
create (_43950:`FileNode` {`nID`:842, `name`:"net.echinopsii.ariane.community.core.directory_0.6.4.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1-SNAPSHOT"})
create (_43951:`FileNode` {`nID`:843, `name`:"net.echinopsii.ariane.community.core.idm_0.4.2.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.4.3-SNAPSHOT"})
create _43184-[:`CONTAINS`]->_43183
create _43184-[:`DEPENDS ON`]->_43245
create _43186-[:`CONTAINS`]->_43185
create _43190-[:`COMPOSED OF`]->_43186
create _43190-[:`CONTAINS`]->_43189
create _43190-[:`CONTAINS`]->_43188
create _43190-[:`CONTAINS`]->_43187
create _43190-[:`DEPENDS ON`]->_43245
create _43192-[:`CONTAINS`]->_43191
create _43194-[:`CONTAINS`]->_43193
create _43196-[:`CONTAINS`]->_43195
create _43198-[:`CONTAINS`]->_43197
create _43200-[:`CONTAINS`]->_43199
create _43204-[:`COMPOSED OF`]->_43196
create _43204-[:`COMPOSED OF`]->_43192
create _43204-[:`COMPOSED OF`]->_43194
create _43204-[:`COMPOSED OF`]->_43198
create _43204-[:`COMPOSED OF`]->_43200
create _43204-[:`CONTAINS`]->_43202
create _43204-[:`CONTAINS`]->_43203
create _43204-[:`CONTAINS`]->_43201
create _43204-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_43190
create _43204-[:`DEPENDS ON`]->_43245
create _43206-[:`CONTAINS`]->_43205
create _43208-[:`CONTAINS`]->_43207
create _43210-[:`CONTAINS`]->_43209
create _43212-[:`CONTAINS`]->_43211
create _43214-[:`COMPOSED OF`]->_43208
create _43214-[:`COMPOSED OF`]->_43210
create _43214-[:`COMPOSED OF`]->_43206
create _43214-[:`COMPOSED OF`]->_43212
create _43214-[:`CONTAINS`]->_43213
create _43216-[:`CONTAINS`]->_43215
create _43218-[:`CONTAINS`]->_43217
create _43222-[:`COMPOSED OF`]->_43214
create _43222-[:`COMPOSED OF`]->_43216
create _43222-[:`COMPOSED OF`]->_43218
create _43222-[:`CONTAINS`]->_43221
create _43222-[:`CONTAINS`]->_43219
create _43222-[:`CONTAINS`]->_43220
create _43222-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_43204
create _43222-[:`DEPENDS ON`]->_43245
create _43222-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_43190
create _43224-[:`CONTAINS`]->_43223
create _43226-[:`CONTAINS`]->_43225
create _43230-[:`COMPOSED OF`]->_43224
create _43230-[:`COMPOSED OF`]->_43226
create _43230-[:`CONTAINS`]->_43228
create _43230-[:`CONTAINS`]->_43229
create _43230-[:`CONTAINS`]->_43227
create _43230-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_43204
create _43230-[:`DEPENDS ON`]->_43245
create _43232-[:`CONTAINS`]->_43231
create _43234-[:`CONTAINS`]->_43233
create _43238-[:`COMPOSED OF`]->_43232
create _43238-[:`COMPOSED OF`]->_43234
create _43238-[:`CONTAINS`]->_43236
create _43238-[:`CONTAINS`]->_43235
create _43238-[:`CONTAINS`]->_43237
create _43238-[:`DEPENDS ON`]->_43245
create _43238-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_43204
create _43239-[:`DEPENDS ON`]->_43245
create _43245-[:`CONTAINS`]->_43241
create _43245-[:`CONTAINS`]->_43240
create _43245-[:`CONTAINS`]->_43243
create _43245-[:`CONTAINS`]->_43242
create _43245-[:`CONTAINS`]->_43244
create _43247-[:`CONTAINS`]->_43246
create _43247-[:`DEPENDS ON`]->_43308
create _43249-[:`CONTAINS`]->_43248
create _43253-[:`COMPOSED OF`]->_43249
create _43253-[:`CONTAINS`]->_43251
create _43253-[:`CONTAINS`]->_43252
create _43253-[:`CONTAINS`]->_43250
create _43253-[:`DEPENDS ON`]->_43308
create _43255-[:`CONTAINS`]->_43254
create _43257-[:`CONTAINS`]->_43256
create _43259-[:`CONTAINS`]->_43258
create _43261-[:`CONTAINS`]->_43260
create _43263-[:`CONTAINS`]->_43262
create _43267-[:`COMPOSED OF`]->_43257
create _43267-[:`COMPOSED OF`]->_43259
create _43267-[:`COMPOSED OF`]->_43263
create _43267-[:`COMPOSED OF`]->_43255
create _43267-[:`COMPOSED OF`]->_43261
create _43267-[:`CONTAINS`]->_43265
create _43267-[:`CONTAINS`]->_43264
create _43267-[:`CONTAINS`]->_43266
create _43267-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_43253
create _43267-[:`DEPENDS ON`]->_43308
create _43269-[:`CONTAINS`]->_43268
create _43271-[:`CONTAINS`]->_43270
create _43273-[:`CONTAINS`]->_43272
create _43275-[:`CONTAINS`]->_43274
create _43277-[:`COMPOSED OF`]->_43275
create _43277-[:`COMPOSED OF`]->_43273
create _43277-[:`COMPOSED OF`]->_43271
create _43277-[:`COMPOSED OF`]->_43269
create _43277-[:`CONTAINS`]->_43276
create _43279-[:`CONTAINS`]->_43278
create _43281-[:`CONTAINS`]->_43280
create _43285-[:`COMPOSED OF`]->_43279
create _43285-[:`COMPOSED OF`]->_43277
create _43285-[:`COMPOSED OF`]->_43281
create _43285-[:`CONTAINS`]->_43284
create _43285-[:`CONTAINS`]->_43283
create _43285-[:`CONTAINS`]->_43282
create _43285-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_43267
create _43285-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_43253
create _43285-[:`DEPENDS ON`]->_43308
create _43287-[:`CONTAINS`]->_43286
create _43289-[:`CONTAINS`]->_43288
create _43293-[:`COMPOSED OF`]->_43289
create _43293-[:`COMPOSED OF`]->_43287
create _43293-[:`CONTAINS`]->_43292
create _43293-[:`CONTAINS`]->_43291
create _43293-[:`CONTAINS`]->_43290
create _43293-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_43267
create _43293-[:`DEPENDS ON`]->_43308
create _43295-[:`CONTAINS`]->_43294
create _43297-[:`CONTAINS`]->_43296
create _43301-[:`COMPOSED OF`]->_43295
create _43301-[:`COMPOSED OF`]->_43297
create _43301-[:`CONTAINS`]->_43300
create _43301-[:`CONTAINS`]->_43299
create _43301-[:`CONTAINS`]->_43298
create _43301-[:`DEPENDS ON`]->_43308
create _43301-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_43267
create _43302-[:`DEPENDS ON`]->_43308
create _43308-[:`CONTAINS`]->_43307
create _43308-[:`CONTAINS`]->_43306
create _43308-[:`CONTAINS`]->_43303
create _43308-[:`CONTAINS`]->_43305
create _43308-[:`CONTAINS`]->_43304
create _43310-[:`CONTAINS`]->_43309
create _43310-[:`DEPENDS ON`]->_43371
create _43312-[:`CONTAINS`]->_43311
create _43316-[:`COMPOSED OF`]->_43312
create _43316-[:`CONTAINS`]->_43314
create _43316-[:`CONTAINS`]->_43315
create _43316-[:`CONTAINS`]->_43313
create _43316-[:`DEPENDS ON`]->_43371
create _43318-[:`CONTAINS`]->_43317
create _43320-[:`CONTAINS`]->_43319
create _43322-[:`CONTAINS`]->_43321
create _43324-[:`CONTAINS`]->_43323
create _43326-[:`CONTAINS`]->_43325
create _43330-[:`COMPOSED OF`]->_43318
create _43330-[:`COMPOSED OF`]->_43324
create _43330-[:`COMPOSED OF`]->_43326
create _43330-[:`COMPOSED OF`]->_43320
create _43330-[:`COMPOSED OF`]->_43322
create _43330-[:`CONTAINS`]->_43329
create _43330-[:`CONTAINS`]->_43327
create _43330-[:`CONTAINS`]->_43328
create _43330-[:`DEPENDS ON`]->_43371
create _43330-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_43316
create _43332-[:`CONTAINS`]->_43331
create _43334-[:`CONTAINS`]->_43333
create _43336-[:`CONTAINS`]->_43335
create _43338-[:`CONTAINS`]->_43337
create _43340-[:`COMPOSED OF`]->_43334
create _43340-[:`COMPOSED OF`]->_43336
create _43340-[:`COMPOSED OF`]->_43332
create _43340-[:`COMPOSED OF`]->_43338
create _43340-[:`CONTAINS`]->_43339
create _43342-[:`CONTAINS`]->_43341
create _43344-[:`CONTAINS`]->_43343
create _43348-[:`COMPOSED OF`]->_43342
create _43348-[:`COMPOSED OF`]->_43340
create _43348-[:`COMPOSED OF`]->_43344
create _43348-[:`CONTAINS`]->_43346
create _43348-[:`CONTAINS`]->_43347
create _43348-[:`CONTAINS`]->_43345
create _43348-[:`DEPENDS ON`]->_43371
create _43348-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_43330
create _43348-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_43316
create _43350-[:`CONTAINS`]->_43349
create _43352-[:`CONTAINS`]->_43351
create _43356-[:`COMPOSED OF`]->_43352
create _43356-[:`COMPOSED OF`]->_43350
create _43356-[:`CONTAINS`]->_43354
create _43356-[:`CONTAINS`]->_43355
create _43356-[:`CONTAINS`]->_43353
create _43356-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_43330
create _43356-[:`DEPENDS ON`]->_43371
create _43358-[:`CONTAINS`]->_43357
create _43360-[:`CONTAINS`]->_43359
create _43364-[:`COMPOSED OF`]->_43360
create _43364-[:`COMPOSED OF`]->_43358
create _43364-[:`CONTAINS`]->_43363
create _43364-[:`CONTAINS`]->_43362
create _43364-[:`CONTAINS`]->_43361
create _43364-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_43330
create _43364-[:`DEPENDS ON`]->_43371
create _43365-[:`DEPENDS ON`]->_43371
create _43371-[:`CONTAINS`]->_43367
create _43371-[:`CONTAINS`]->_43366
create _43371-[:`CONTAINS`]->_43369
create _43371-[:`CONTAINS`]->_43368
create _43371-[:`CONTAINS`]->_43370
create _43373-[:`CONTAINS`]->_43372
create _43373-[:`DEPENDS ON`]->_43445
create _43375-[:`CONTAINS`]->_43374
create _43379-[:`COMPOSED OF`]->_43375
create _43379-[:`CONTAINS`]->_43378
create _43379-[:`CONTAINS`]->_43377
create _43379-[:`CONTAINS`]->_43376
create _43379-[:`DEPENDS ON`]->_43445
create _43381-[:`CONTAINS`]->_43380
create _43383-[:`CONTAINS`]->_43382
create _43385-[:`CONTAINS`]->_43384
create _43387-[:`CONTAINS`]->_43386
create _43389-[:`CONTAINS`]->_43388
create _43393-[:`COMPOSED OF`]->_43389
create _43393-[:`COMPOSED OF`]->_43387
create _43393-[:`COMPOSED OF`]->_43381
create _43393-[:`COMPOSED OF`]->_43383
create _43393-[:`COMPOSED OF`]->_43385
create _43393-[:`CONTAINS`]->_43390
create _43393-[:`CONTAINS`]->_43392
create _43393-[:`CONTAINS`]->_43391
create _43393-[:`DEPENDS ON`]->_43445
create _43393-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_43379
create _43395-[:`CONTAINS`]->_43394
create _43397-[:`CONTAINS`]->_43396
create _43399-[:`CONTAINS`]->_43398
create _43401-[:`CONTAINS`]->_43400
create _43403-[:`COMPOSED OF`]->_43395
create _43403-[:`COMPOSED OF`]->_43399
create _43403-[:`COMPOSED OF`]->_43397
create _43403-[:`COMPOSED OF`]->_43401
create _43403-[:`CONTAINS`]->_43402
create _43405-[:`CONTAINS`]->_43404
create _43407-[:`CONTAINS`]->_43406
create _43411-[:`COMPOSED OF`]->_43407
create _43411-[:`COMPOSED OF`]->_43405
create _43411-[:`COMPOSED OF`]->_43403
create _43411-[:`CONTAINS`]->_43409
create _43411-[:`CONTAINS`]->_43408
create _43411-[:`CONTAINS`]->_43410
create _43411-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_43379
create _43411-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_43393
create _43411-[:`DEPENDS ON`]->_43445
create _43413-[:`CONTAINS`]->_43412
create _43415-[:`CONTAINS`]->_43414
create _43419-[:`COMPOSED OF`]->_43415
create _43419-[:`COMPOSED OF`]->_43413
create _43419-[:`CONTAINS`]->_43417
create _43419-[:`CONTAINS`]->_43416
create _43419-[:`CONTAINS`]->_43418
create _43419-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_43393
create _43419-[:`DEPENDS ON`]->_43445
create _43421-[:`CONTAINS`]->_43420
create _43423-[:`CONTAINS`]->_43422
create _43427-[:`COMPOSED OF`]->_43423
create _43427-[:`COMPOSED OF`]->_43421
create _43427-[:`CONTAINS`]->_43424
create _43427-[:`CONTAINS`]->_43426
create _43427-[:`CONTAINS`]->_43425
create _43427-[:`DEPENDS ON`]->_43445
create _43427-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_43393
create _43428-[:`DEPENDS ON`]->_43445
create _43430-[:`CONTAINS`]->_43429
create _43432-[:`CONTAINS`]->_43431
create _43434-[:`CONTAINS`]->_43433
create _43439-[:`COMPOSED OF`]->_43430
create _43439-[:`COMPOSED OF`]->_43432
create _43439-[:`COMPOSED OF`]->_43434
create _43439-[:`CONTAINS`]->_43437
create _43439-[:`CONTAINS`]->_43438
create _43439-[:`CONTAINS`]->_43435
create _43439-[:`CONTAINS`]->_43436
create _43439-[:`COMPATIBLE WITH`]->_43445
create _43439-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_43411
create _43439-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_43419
create _43439-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_43393
create _43439-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_43427
create _43445-[:`CONTAINS`]->_43440
create _43445-[:`CONTAINS`]->_43441
create _43445-[:`CONTAINS`]->_43444
create _43445-[:`CONTAINS`]->_43443
create _43445-[:`CONTAINS`]->_43442
create _43447-[:`CONTAINS`]->_43446
create _43447-[:`DEPENDS ON`]->_43521
create _43449-[:`CONTAINS`]->_43448
create _43453-[:`COMPOSED OF`]->_43449
create _43453-[:`CONTAINS`]->_43452
create _43453-[:`CONTAINS`]->_43450
create _43453-[:`CONTAINS`]->_43451
create _43453-[:`DEPENDS ON`]->_43521
create _43455-[:`CONTAINS`]->_43454
create _43457-[:`CONTAINS`]->_43456
create _43459-[:`CONTAINS`]->_43458
create _43461-[:`CONTAINS`]->_43460
create _43463-[:`CONTAINS`]->_43462
create _43467-[:`COMPOSED OF`]->_43461
create _43467-[:`COMPOSED OF`]->_43459
create _43467-[:`COMPOSED OF`]->_43455
create _43467-[:`COMPOSED OF`]->_43457
create _43467-[:`COMPOSED OF`]->_43463
create _43467-[:`CONTAINS`]->_43466
create _43467-[:`CONTAINS`]->_43464
create _43467-[:`CONTAINS`]->_43465
create _43467-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_43453
create _43467-[:`DEPENDS ON`]->_43521
create _43469-[:`CONTAINS`]->_43468
create _43471-[:`CONTAINS`]->_43470
create _43473-[:`CONTAINS`]->_43472
create _43475-[:`CONTAINS`]->_43474
create _43477-[:`COMPOSED OF`]->_43469
create _43477-[:`COMPOSED OF`]->_43475
create _43477-[:`COMPOSED OF`]->_43471
create _43477-[:`COMPOSED OF`]->_43473
create _43477-[:`CONTAINS`]->_43476
create _43479-[:`CONTAINS`]->_43478
create _43481-[:`CONTAINS`]->_43480
create _43485-[:`COMPOSED OF`]->_43481
create _43485-[:`COMPOSED OF`]->_43479
create _43485-[:`COMPOSED OF`]->_43477
create _43485-[:`CONTAINS`]->_43482
create _43485-[:`CONTAINS`]->_43484
create _43485-[:`CONTAINS`]->_43483
create _43485-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_43453
create _43485-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43467
create _43485-[:`DEPENDS ON`]->_43521
create _43487-[:`CONTAINS`]->_43486
create _43489-[:`CONTAINS`]->_43488
create _43493-[:`COMPOSED OF`]->_43487
create _43493-[:`COMPOSED OF`]->_43489
create _43493-[:`CONTAINS`]->_43492
create _43493-[:`CONTAINS`]->_43491
create _43493-[:`CONTAINS`]->_43490
create _43493-[:`DEPENDS ON`]->_43521
create _43493-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43467
create _43495-[:`CONTAINS`]->_43494
create _43497-[:`CONTAINS`]->_43496
create _43499-[:`CONTAINS`]->_43498
create _43503-[:`COMPOSED OF`]->_43497
create _43503-[:`COMPOSED OF`]->_43495
create _43503-[:`COMPOSED OF`]->_43499
create _43503-[:`CONTAINS`]->_43502
create _43503-[:`CONTAINS`]->_43501
create _43503-[:`CONTAINS`]->_43500
create _43503-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43467
create _43503-[:`DEPENDS ON`]->_43521
create _43504-[:`DEPENDS ON`]->_43521
create _43506-[:`CONTAINS`]->_43505
create _43508-[:`CONTAINS`]->_43507
create _43510-[:`CONTAINS`]->_43509
create _43515-[:`COMPOSED OF`]->_43510
create _43515-[:`COMPOSED OF`]->_43508
create _43515-[:`COMPOSED OF`]->_43506
create _43515-[:`CONTAINS`]->_43512
create _43515-[:`CONTAINS`]->_43514
create _43515-[:`CONTAINS`]->_43511
create _43515-[:`CONTAINS`]->_43513
create _43515-[:`COMPATIBLE WITH` {`version_max`:"0.2.1", `version_min`:"0.2.0"}]->_43521
create _43515-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43485
create _43515-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43493
create _43515-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43503
create _43515-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43467
create _43521-[:`CONTAINS`]->_43517
create _43521-[:`CONTAINS`]->_43516
create _43521-[:`CONTAINS`]->_43520
create _43521-[:`CONTAINS`]->_43519
create _43521-[:`CONTAINS`]->_43518
create _43523-[:`CONTAINS`]->_43522
create _43523-[:`DEPENDS ON`]->_43597
create _43525-[:`CONTAINS`]->_43524
create _43529-[:`COMPOSED OF`]->_43525
create _43529-[:`CONTAINS`]->_43527
create _43529-[:`CONTAINS`]->_43526
create _43529-[:`CONTAINS`]->_43528
create _43529-[:`DEPENDS ON`]->_43597
create _43531-[:`CONTAINS`]->_43530
create _43533-[:`CONTAINS`]->_43532
create _43535-[:`CONTAINS`]->_43534
create _43537-[:`CONTAINS`]->_43536
create _43539-[:`CONTAINS`]->_43538
create _43543-[:`COMPOSED OF`]->_43535
create _43543-[:`COMPOSED OF`]->_43533
create _43543-[:`COMPOSED OF`]->_43539
create _43543-[:`COMPOSED OF`]->_43537
create _43543-[:`COMPOSED OF`]->_43531
create _43543-[:`CONTAINS`]->_43541
create _43543-[:`CONTAINS`]->_43540
create _43543-[:`CONTAINS`]->_43542
create _43543-[:`DEPENDS ON`]->_43597
create _43543-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_43529
create _43545-[:`CONTAINS`]->_43544
create _43547-[:`CONTAINS`]->_43546
create _43549-[:`CONTAINS`]->_43548
create _43551-[:`CONTAINS`]->_43550
create _43553-[:`COMPOSED OF`]->_43549
create _43553-[:`COMPOSED OF`]->_43545
create _43553-[:`COMPOSED OF`]->_43551
create _43553-[:`COMPOSED OF`]->_43547
create _43553-[:`CONTAINS`]->_43552
create _43555-[:`CONTAINS`]->_43554
create _43557-[:`CONTAINS`]->_43556
create _43561-[:`COMPOSED OF`]->_43555
create _43561-[:`COMPOSED OF`]->_43557
create _43561-[:`COMPOSED OF`]->_43553
create _43561-[:`CONTAINS`]->_43559
create _43561-[:`CONTAINS`]->_43560
create _43561-[:`CONTAINS`]->_43558
create _43561-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_43529
create _43561-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43543
create _43561-[:`DEPENDS ON`]->_43597
create _43563-[:`CONTAINS`]->_43562
create _43565-[:`CONTAINS`]->_43564
create _43569-[:`COMPOSED OF`]->_43563
create _43569-[:`COMPOSED OF`]->_43565
create _43569-[:`CONTAINS`]->_43566
create _43569-[:`CONTAINS`]->_43567
create _43569-[:`CONTAINS`]->_43568
create _43569-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43543
create _43569-[:`DEPENDS ON`]->_43597
create _43571-[:`CONTAINS`]->_43570
create _43573-[:`CONTAINS`]->_43572
create _43575-[:`CONTAINS`]->_43574
create _43579-[:`COMPOSED OF`]->_43575
create _43579-[:`COMPOSED OF`]->_43571
create _43579-[:`COMPOSED OF`]->_43573
create _43579-[:`CONTAINS`]->_43578
create _43579-[:`CONTAINS`]->_43576
create _43579-[:`CONTAINS`]->_43577
create _43579-[:`DEPENDS ON`]->_43597
create _43579-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43543
create _43580-[:`DEPENDS ON`]->_43597
create _43582-[:`CONTAINS`]->_43581
create _43584-[:`CONTAINS`]->_43583
create _43586-[:`CONTAINS`]->_43585
create _43591-[:`COMPOSED OF`]->_43582
create _43591-[:`COMPOSED OF`]->_43584
create _43591-[:`COMPOSED OF`]->_43586
create _43591-[:`CONTAINS`]->_43590
create _43591-[:`CONTAINS`]->_43589
create _43591-[:`CONTAINS`]->_43588
create _43591-[:`CONTAINS`]->_43587
create _43591-[:`COMPATIBLE WITH`]->_43597
create _43591-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43543
create _43591-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43579
create _43591-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43561
create _43591-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43569
create _43597-[:`CONTAINS`]->_43596
create _43597-[:`CONTAINS`]->_43593
create _43597-[:`CONTAINS`]->_43592
create _43597-[:`CONTAINS`]->_43595
create _43597-[:`CONTAINS`]->_43594
create _43599-[:`CONTAINS`]->_43598
create _43599-[:`DEPENDS ON`]->_43681
create _43601-[:`CONTAINS`]->_43600
create _43603-[:`CONTAINS`]->_43602
create _43607-[:`COMPOSED OF`]->_43603
create _43607-[:`COMPOSED OF`]->_43601
create _43607-[:`CONTAINS`]->_43606
create _43607-[:`CONTAINS`]->_43605
create _43607-[:`CONTAINS`]->_43604
create _43607-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43608
create _43607-[:`DEPENDS ON`]->_43681
create _43608-[:`COMPOSED OF`]->_43620
create _43608-[:`COMPOSED OF`]->_43616
create _43608-[:`COMPOSED OF`]->_43622
create _43608-[:`COMPOSED OF`]->_43624
create _43608-[:`COMPOSED OF`]->_43618
create _43608-[:`CONTAINS`]->_43626
create _43608-[:`CONTAINS`]->_43625
create _43608-[:`CONTAINS`]->_43627
create _43608-[:`DEPENDS ON`]->_43681
create _43608-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_43614
create _43610-[:`CONTAINS`]->_43609
create _43614-[:`COMPOSED OF`]->_43610
create _43614-[:`CONTAINS`]->_43613
create _43614-[:`CONTAINS`]->_43612
create _43614-[:`CONTAINS`]->_43611
create _43614-[:`DEPENDS ON`]->_43681
create _43616-[:`CONTAINS`]->_43615
create _43618-[:`CONTAINS`]->_43617
create _43620-[:`CONTAINS`]->_43619
create _43622-[:`CONTAINS`]->_43621
create _43624-[:`CONTAINS`]->_43623
create _43629-[:`CONTAINS`]->_43628
create _43631-[:`CONTAINS`]->_43630
create _43633-[:`CONTAINS`]->_43632
create _43635-[:`CONTAINS`]->_43634
create _43637-[:`COMPOSED OF`]->_43631
create _43637-[:`COMPOSED OF`]->_43633
create _43637-[:`COMPOSED OF`]->_43635
create _43637-[:`COMPOSED OF`]->_43629
create _43637-[:`CONTAINS`]->_43636
create _43639-[:`CONTAINS`]->_43638
create _43641-[:`CONTAINS`]->_43640
create _43645-[:`COMPOSED OF`]->_43637
create _43645-[:`COMPOSED OF`]->_43641
create _43645-[:`COMPOSED OF`]->_43639
create _43645-[:`CONTAINS`]->_43644
create _43645-[:`CONTAINS`]->_43643
create _43645-[:`CONTAINS`]->_43642
create _43645-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43608
create _43645-[:`DEPENDS ON`]->_43681
create _43645-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_43614
create _43647-[:`CONTAINS`]->_43646
create _43649-[:`CONTAINS`]->_43648
create _43653-[:`COMPOSED OF`]->_43647
create _43653-[:`COMPOSED OF`]->_43649
create _43653-[:`CONTAINS`]->_43651
create _43653-[:`CONTAINS`]->_43650
create _43653-[:`CONTAINS`]->_43652
create _43653-[:`DEPENDS ON`]->_43681
create _43653-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43608
create _43655-[:`CONTAINS`]->_43654
create _43657-[:`CONTAINS`]->_43656
create _43659-[:`CONTAINS`]->_43658
create _43663-[:`COMPOSED OF`]->_43657
create _43663-[:`COMPOSED OF`]->_43655
create _43663-[:`COMPOSED OF`]->_43659
create _43663-[:`CONTAINS`]->_43660
create _43663-[:`CONTAINS`]->_43662
create _43663-[:`CONTAINS`]->_43661
create _43663-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43608
create _43663-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_43607
create _43663-[:`DEPENDS ON`]->_43681
create _43664-[:`DEPENDS ON`]->_43681
create _43666-[:`CONTAINS`]->_43665
create _43668-[:`CONTAINS`]->_43667
create _43670-[:`CONTAINS`]->_43669
create _43675-[:`COMPOSED OF`]->_43668
create _43675-[:`COMPOSED OF`]->_43670
create _43675-[:`COMPOSED OF`]->_43666
create _43675-[:`CONTAINS`]->_43671
create _43675-[:`CONTAINS`]->_43673
create _43675-[:`CONTAINS`]->_43674
create _43675-[:`CONTAINS`]->_43672
create _43675-[:`COMPATIBLE WITH`]->_43681
create _43675-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43663
create _43675-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43608
create _43675-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43653
create _43675-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43645
create _43681-[:`CONTAINS`]->_43676
create _43681-[:`CONTAINS`]->_43679
create _43681-[:`CONTAINS`]->_43680
create _43681-[:`CONTAINS`]->_43677
create _43681-[:`CONTAINS`]->_43678
create _43683-[:`CONTAINS`]->_43682
create _43683-[:`DEPENDS ON`]->_43765
create _43685-[:`CONTAINS`]->_43684
create _43687-[:`CONTAINS`]->_43686
create _43691-[:`COMPOSED OF`]->_43687
create _43691-[:`COMPOSED OF`]->_43685
create _43691-[:`CONTAINS`]->_43689
create _43691-[:`CONTAINS`]->_43688
create _43691-[:`CONTAINS`]->_43690
create _43691-[:`DEPENDS ON`]->_43765
create _43691-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43692
create _43692-[:`COMPOSED OF`]->_43702
create _43692-[:`COMPOSED OF`]->_43704
create _43692-[:`COMPOSED OF`]->_43706
create _43692-[:`COMPOSED OF`]->_43708
create _43692-[:`COMPOSED OF`]->_43700
create _43692-[:`CONTAINS`]->_43709
create _43692-[:`CONTAINS`]->_43710
create _43692-[:`CONTAINS`]->_43711
create _43692-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_43698
create _43692-[:`DEPENDS ON`]->_43765
create _43694-[:`CONTAINS`]->_43693
create _43698-[:`COMPOSED OF`]->_43694
create _43698-[:`CONTAINS`]->_43695
create _43698-[:`CONTAINS`]->_43696
create _43698-[:`CONTAINS`]->_43697
create _43698-[:`DEPENDS ON`]->_43765
create _43700-[:`CONTAINS`]->_43699
create _43702-[:`CONTAINS`]->_43701
create _43704-[:`CONTAINS`]->_43703
create _43706-[:`CONTAINS`]->_43705
create _43708-[:`CONTAINS`]->_43707
create _43713-[:`CONTAINS`]->_43712
create _43715-[:`CONTAINS`]->_43714
create _43717-[:`CONTAINS`]->_43716
create _43719-[:`CONTAINS`]->_43718
create _43721-[:`COMPOSED OF`]->_43719
create _43721-[:`COMPOSED OF`]->_43717
create _43721-[:`COMPOSED OF`]->_43715
create _43721-[:`COMPOSED OF`]->_43713
create _43721-[:`CONTAINS`]->_43720
create _43723-[:`CONTAINS`]->_43722
create _43725-[:`CONTAINS`]->_43724
create _43729-[:`COMPOSED OF`]->_43721
create _43729-[:`COMPOSED OF`]->_43725
create _43729-[:`COMPOSED OF`]->_43723
create _43729-[:`CONTAINS`]->_43728
create _43729-[:`CONTAINS`]->_43727
create _43729-[:`CONTAINS`]->_43726
create _43729-[:`DEPENDS ON`]->_43765
create _43729-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_43698
create _43729-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43692
create _43731-[:`CONTAINS`]->_43730
create _43733-[:`CONTAINS`]->_43732
create _43737-[:`COMPOSED OF`]->_43733
create _43737-[:`COMPOSED OF`]->_43731
create _43737-[:`CONTAINS`]->_43735
create _43737-[:`CONTAINS`]->_43734
create _43737-[:`CONTAINS`]->_43736
create _43737-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43692
create _43737-[:`DEPENDS ON`]->_43765
create _43739-[:`CONTAINS`]->_43738
create _43741-[:`CONTAINS`]->_43740
create _43743-[:`CONTAINS`]->_43742
create _43747-[:`COMPOSED OF`]->_43741
create _43747-[:`COMPOSED OF`]->_43739
create _43747-[:`COMPOSED OF`]->_43743
create _43747-[:`CONTAINS`]->_43744
create _43747-[:`CONTAINS`]->_43746
create _43747-[:`CONTAINS`]->_43745
create _43747-[:`DEPENDS ON`]->_43765
create _43747-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43692
create _43747-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_43691
create _43748-[:`DEPENDS ON`]->_43765
create _43750-[:`CONTAINS`]->_43749
create _43752-[:`CONTAINS`]->_43751
create _43754-[:`CONTAINS`]->_43753
create _43759-[:`COMPOSED OF`]->_43752
create _43759-[:`COMPOSED OF`]->_43750
create _43759-[:`COMPOSED OF`]->_43754
create _43759-[:`CONTAINS`]->_43757
create _43759-[:`CONTAINS`]->_43756
create _43759-[:`CONTAINS`]->_43755
create _43759-[:`CONTAINS`]->_43758
create _43759-[:`COMPATIBLE WITH`]->_43765
create _43759-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43747
create _43759-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43692
create _43759-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43729
create _43759-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_43737
create _43765-[:`CONTAINS`]->_43763
create _43765-[:`CONTAINS`]->_43762
create _43765-[:`CONTAINS`]->_43764
create _43765-[:`CONTAINS`]->_43761
create _43765-[:`CONTAINS`]->_43760
create _43767-[:`CONTAINS`]->_43766
create _43769-[:`CONTAINS`]->_43768
create _43771-[:`CONTAINS`]->_43770
create _43773-[:`CONTAINS`]->_43772
create _43775-[:`CONTAINS`]->_43774
create _43779-[:`COMPOSED OF`]->_43775
create _43779-[:`COMPOSED OF`]->_43773
create _43779-[:`COMPOSED OF`]->_43771
create _43779-[:`COMPOSED OF`]->_43769
create _43779-[:`COMPOSED OF`]->_43767
create _43779-[:`CONTAINS`]->_43778
create _43779-[:`CONTAINS`]->_43776
create _43779-[:`CONTAINS`]->_43777
create _43779-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_43780
create _43779-[:`DEPENDS ON`]->_43849
create _43780-[:`COMPOSED OF`]->_43782
create _43780-[:`CONTAINS`]->_43785
create _43780-[:`CONTAINS`]->_43783
create _43780-[:`CONTAINS`]->_43784
create _43780-[:`DEPENDS ON`]->_43849
create _43782-[:`CONTAINS`]->_43781
create _43786-[:`DEPENDS ON`]->_43849
create _43788-[:`CONTAINS`]->_43787
create _43790-[:`CONTAINS`]->_43789
create _43792-[:`CONTAINS`]->_43791
create _43796-[:`COMPOSED OF`]->_43788
create _43796-[:`COMPOSED OF`]->_43792
create _43796-[:`COMPOSED OF`]->_43790
create _43796-[:`CONTAINS`]->_43794
create _43796-[:`CONTAINS`]->_43793
create _43796-[:`CONTAINS`]->_43795
create _43796-[:`DEPENDS ON`]->_43849
create _43796-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_43797
create _43796-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_43779
create _43797-[:`COMPOSED OF`]->_43827
create _43797-[:`COMPOSED OF`]->_43829
create _43797-[:`CONTAINS`]->_43831
create _43797-[:`CONTAINS`]->_43830
create _43797-[:`CONTAINS`]->_43832
create _43797-[:`DEPENDS ON`]->_43849
create _43799-[:`CONTAINS`]->_43798
create _43801-[:`CONTAINS`]->_43800
create _43805-[:`COMPOSED OF`]->_43799
create _43805-[:`COMPOSED OF`]->_43801
create _43805-[:`CONTAINS`]->_43802
create _43805-[:`CONTAINS`]->_43803
create _43805-[:`CONTAINS`]->_43804
create _43805-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_43779
create _43805-[:`DEPENDS ON`]->_43849
create _43807-[:`CONTAINS`]->_43806
create _43809-[:`CONTAINS`]->_43808
create _43811-[:`CONTAINS`]->_43810
create _43813-[:`CONTAINS`]->_43812
create _43815-[:`CONTAINS`]->_43814
create _43817-[:`CONTAINS`]->_43816
create _43819-[:`COMPOSED OF`]->_43815
create _43819-[:`COMPOSED OF`]->_43817
create _43819-[:`COMPOSED OF`]->_43811
create _43819-[:`COMPOSED OF`]->_43813
create _43819-[:`CONTAINS`]->_43818
create _43823-[:`COMPOSED OF`]->_43819
create _43823-[:`COMPOSED OF`]->_43807
create _43823-[:`COMPOSED OF`]->_43809
create _43823-[:`CONTAINS`]->_43820
create _43823-[:`CONTAINS`]->_43821
create _43823-[:`CONTAINS`]->_43822
create _43823-[:`DEPENDS ON`]->_43849
create _43823-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_43780
create _43823-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_43779
create _43825-[:`CONTAINS`]->_43824
create _43825-[:`DEPENDS ON`]->_43849
create _43827-[:`CONTAINS`]->_43826
create _43829-[:`CONTAINS`]->_43828
create _43834-[:`CONTAINS`]->_43833
create _43836-[:`CONTAINS`]->_43835
create _43838-[:`CONTAINS`]->_43837
create _43843-[:`COMPOSED OF`]->_43838
create _43843-[:`COMPOSED OF`]->_43836
create _43843-[:`COMPOSED OF`]->_43834
create _43843-[:`CONTAINS`]->_43840
create _43843-[:`CONTAINS`]->_43839
create _43843-[:`CONTAINS`]->_43842
create _43843-[:`CONTAINS`]->_43841
create _43843-[:`COMPATIBLE WITH`]->_43849
create _43843-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_43796
create _43843-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_43823
create _43843-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_43805
create _43843-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_43779
create _43849-[:`CONTAINS`]->_43844
create _43849-[:`CONTAINS`]->_43845
create _43849-[:`CONTAINS`]->_43846
create _43849-[:`CONTAINS`]->_43847
create _43849-[:`CONTAINS`]->_43848
create _43851-[:`CONTAINS`]->_43850
create _43853-[:`CONTAINS`]->_43852
create _43857-[:`COMPOSED OF`]->_43851
create _43857-[:`COMPOSED OF`]->_43853
create _43857-[:`CONTAINS`]->_43854
create _43857-[:`CONTAINS`]->_43855
create _43857-[:`CONTAINS`]->_43856
create _43857-[:`DEPENDS ON`]->_43933
create _43859-[:`CONTAINS`]->_43858
create _43859-[:`DEPENDS ON`]->_43933
create _43861-[:`CONTAINS`]->_43860
create _43863-[:`CONTAINS`]->_43862
create _43865-[:`CONTAINS`]->_43864
create _43867-[:`CONTAINS`]->_43866
create _43869-[:`CONTAINS`]->_43868
create _43871-[:`CONTAINS`]->_43870
create _43873-[:`COMPOSED OF`]->_43867
create _43873-[:`COMPOSED OF`]->_43865
create _43873-[:`COMPOSED OF`]->_43871
create _43873-[:`COMPOSED OF`]->_43869
create _43873-[:`CONTAINS`]->_43872
create _43877-[:`COMPOSED OF`]->_43863
create _43877-[:`COMPOSED OF`]->_43861
create _43877-[:`COMPOSED OF`]->_43873
create _43877-[:`CONTAINS`]->_43874
create _43877-[:`CONTAINS`]->_43876
create _43877-[:`CONTAINS`]->_43875
create _43877-[:`DEPENDS ON`]->_43933
create _43877-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_43878
create _43877-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_43879
create _43878-[:`COMPOSED OF`]->_43907
create _43878-[:`COMPOSED OF`]->_43909
create _43878-[:`COMPOSED OF`]->_43905
create _43878-[:`COMPOSED OF`]->_43911
create _43878-[:`COMPOSED OF`]->_43913
create _43878-[:`CONTAINS`]->_43914
create _43878-[:`CONTAINS`]->_43915
create _43878-[:`CONTAINS`]->_43916
create _43878-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_43879
create _43878-[:`DEPENDS ON`]->_43933
create _43879-[:`COMPOSED OF`]->_43900
create _43879-[:`CONTAINS`]->_43903
create _43879-[:`CONTAINS`]->_43901
create _43879-[:`CONTAINS`]->_43902
create _43879-[:`DEPENDS ON`]->_43933
create _43881-[:`CONTAINS`]->_43880
create _43883-[:`CONTAINS`]->_43882
create _43887-[:`COMPOSED OF`]->_43881
create _43887-[:`COMPOSED OF`]->_43883
create _43887-[:`CONTAINS`]->_43886
create _43887-[:`CONTAINS`]->_43885
create _43887-[:`CONTAINS`]->_43884
create _43887-[:`DEPENDS ON`]->_43933
create _43887-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_43878
create _43889-[:`CONTAINS`]->_43888
create _43891-[:`CONTAINS`]->_43890
create _43893-[:`CONTAINS`]->_43892
create _43897-[:`COMPOSED OF`]->_43893
create _43897-[:`COMPOSED OF`]->_43891
create _43897-[:`COMPOSED OF`]->_43889
create _43897-[:`CONTAINS`]->_43894
create _43897-[:`CONTAINS`]->_43895
create _43897-[:`CONTAINS`]->_43896
create _43897-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_43857
create _43897-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_43878
create _43897-[:`DEPENDS ON`]->_43933
create _43898-[:`CONTAINS`]->_43951
create _43898-[:`CONTAINS`]->_43950
create _43898-[:`CONTAINS`]->_43949
create _43898-[:`CONTAINS`]->_43948
create _43898-[:`CONTAINS`]->_43947
create _43898-[:`CONTAINS`]->_43946
create _43898-[:`DEPENDS ON`]->_43933
create _43900-[:`CONTAINS`]->_43899
create _43905-[:`CONTAINS`]->_43904
create _43907-[:`CONTAINS`]->_43906
create _43909-[:`CONTAINS`]->_43908
create _43911-[:`CONTAINS`]->_43910
create _43913-[:`CONTAINS`]->_43912
create _43918-[:`CONTAINS`]->_43917
create _43920-[:`CONTAINS`]->_43919
create _43922-[:`CONTAINS`]->_43921
create _43927-[:`COMPOSED OF`]->_43918
create _43927-[:`COMPOSED OF`]->_43922
create _43927-[:`COMPOSED OF`]->_43920
create _43927-[:`CONTAINS`]->_43923
create _43927-[:`CONTAINS`]->_43925
create _43927-[:`CONTAINS`]->_43924
create _43927-[:`CONTAINS`]->_43926
create _43927-[:`COMPATIBLE WITH`]->_43933
create _43927-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_43877
create _43927-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_43897
create _43927-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_43878
create _43927-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_43887
create _43933-[:`CONTAINS`]->_43928
create _43933-[:`CONTAINS`]->_43930
create _43933-[:`CONTAINS`]->_43929
create _43933-[:`CONTAINS`]->_43932
create _43933-[:`CONTAINS`]->_43931
create _43934-[:`COMPATIBLE WITH`]->_43849
create _43935-[:`COMPATIBLE WITH`]->_43933
;
commit
