begin
create (_60452:`FileNode` {`nID`:1, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.0"})
create (_60453:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:2, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.0"})
create (_60454:`FileNode` {`nID`:3, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_60455:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:4, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_60456:`FileNode` {`nID`:5, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_60457:`FileNode` {`nID`:6, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_60458:`FileNode` {`nID`:7, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_60459:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:8, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_60460:`FileNode` {`nID`:9, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.0"})
create (_60461:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:10, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_60462:`FileNode` {`nID`:11, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.0"})
create (_60463:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:12, `name`:"idmwat", `order`:2, `version`:"0.5.0"})
create (_60464:`FileNode` {`nID`:13, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.0"})
create (_60465:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:14, `name`:"wab", `order`:3, `version`:"0.5.0"})
create (_60466:`FileNode` {`nID`:15, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.0"})
create (_60467:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:16, `name`:"wat", `order`:4, `version`:"0.5.0"})
create (_60468:`FileNode` {`nID`:17, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.0"})
create (_60469:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:18, `name`:"wresources", `order`:5, `version`:"0.5.0"})
create (_60470:`FileNode` {`nID`:19, `name`:"ariane.community.core.portal-0.5.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_60471:`FileNode` {`nID`:20, `name`:"net.echinopsii.ariane.community.core.portal_0.5.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_60472:`FileNode` {`nID`:21, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.0"})
create (_60473:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:22, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.0"})
create (_60474:`FileNode` {`nID`:23, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.0"})
create (_60475:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:24, `name`:"api", `order`:1, `version`:"0.5.0"})
create (_60476:`FileNode` {`nID`:25, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.0"})
create (_60477:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:26, `name`:"blueprints", `order`:2, `version`:"0.5.0"})
create (_60478:`FileNode` {`nID`:27, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.0"})
create (_60479:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:28, `name`:"dsl", `order`:3, `version`:"0.5.0"})
create (_60480:`FileNode` {`nID`:29, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.0"})
create (_60481:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:30, `name`:"rim", `order`:4, `version`:"0.5.0"})
create (_60482:`FileNode` {`nID`:31, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.0"})
create (_60483:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:32, `name`:"ds", `order`:5, `version`:"0.5.0"})
create (_60484:`FileNode` {`nID`:33, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.0"})
create (_60485:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:34, `name`:"taitale", `order`:6, `version`:"0.5.0"})
create (_60486:`FileNode` {`nID`:35, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.0"})
create (_60487:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:36, `name`:"wat", `order`:7, `version`:"0.5.0"})
create (_60488:`FileNode` {`nID`:37, `name`:"ariane.community.core.mapping-0.5.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_60489:`FileNode` {`nID`:38, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_60490:`FileNode` {`nID`:39, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.0"})
create (_60491:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:40, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.0"})
create (_60492:`FileNode` {`nID`:41, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.0"})
create (_60493:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:42, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_60494:`FileNode` {`nID`:43, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.0"})
create (_60495:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:44, `name`:"wat", `order`:2, `version`:"0.5.0"})
create (_60496:`FileNode` {`nID`:45, `name`:"ariane.community.core.directory-0.5.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_60497:`FileNode` {`nID`:46, `name`:"net.echinopsii.ariane.community.core.directory_0.5.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_60498:`FileNode` {`nID`:47, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.0"})
create (_60499:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:48, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.0"})
create (_60500:`FileNode` {`nID`:49, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.0"})
create (_60501:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:50, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_60502:`FileNode` {`nID`:51, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.0"})
create (_60503:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:52, `name`:"wat", `order`:2, `version`:"0.5.0"})
create (_60504:`FileNode` {`nID`:53, `name`:"ariane.community.core.injector-0.5.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_60505:`FileNode` {`nID`:54, `name`:"net.echinopsii.ariane.community.core.injector_0.5.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_60506:`FileNode` {`nID`:55, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.0"})
create (_60507:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:56, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.0"})
create (_60508:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:57, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.0"})
create (_60509:`FileNode` {`nID`:58, `name`:"ariane.community.distrib-0.5.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.0"})
create (_60510:`FileNode` {`nID`:59, `name`:"pom-ariane.community.distrib-0.5.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.0"})
create (_60511:`FileNode` {`nID`:60, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.0"})
create (_60512:`FileNode` {`nID`:61, `name`:"ariane.community.plugins-distrib-0.5.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.0"})
create (_60513:`FileNode` {`nID`:62, `name`:"ariane.community.git.repos-0.5.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.0"})
create (_60514:`Distribution` {`editable`:"false", `nID`:63, `name`:"community", `version`:"0.5.0"})
create (_60515:`FileNode` {`nID`:64, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.1"})
create (_60516:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:65, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.1"})
create (_60517:`FileNode` {`nID`:66, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_60518:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:67, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_60519:`FileNode` {`nID`:68, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_60520:`FileNode` {`nID`:69, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_60521:`FileNode` {`nID`:70, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_60522:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:71, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_60523:`FileNode` {`nID`:72, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_60524:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:73, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_60525:`FileNode` {`nID`:74, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_60526:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:75, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_60527:`FileNode` {`nID`:76, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_60528:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:77, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_60529:`FileNode` {`nID`:78, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_60530:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:79, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_60531:`FileNode` {`nID`:80, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_60532:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:81, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_60533:`FileNode` {`nID`:82, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_60534:`FileNode` {`nID`:83, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_60535:`FileNode` {`nID`:84, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_60536:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:85, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_60537:`FileNode` {`nID`:86, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.1"})
create (_60538:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:87, `name`:"api", `order`:1, `version`:"0.5.1"})
create (_60539:`FileNode` {`nID`:88, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.1"})
create (_60540:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:89, `name`:"blueprints", `order`:2, `version`:"0.5.1"})
create (_60541:`FileNode` {`nID`:90, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.1"})
create (_60542:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:91, `name`:"dsl", `order`:3, `version`:"0.5.1"})
create (_60543:`FileNode` {`nID`:92, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.1"})
create (_60544:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:93, `name`:"rim", `order`:4, `version`:"0.5.1"})
create (_60545:`FileNode` {`nID`:94, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.1"})
create (_60546:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:95, `name`:"ds", `order`:5, `version`:"0.5.1"})
create (_60547:`FileNode` {`nID`:96, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.1"})
create (_60548:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:97, `name`:"taitale", `order`:6, `version`:"0.5.1"})
create (_60549:`FileNode` {`nID`:98, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.1"})
create (_60550:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:99, `name`:"wat", `order`:7, `version`:"0.5.1"})
create (_60551:`FileNode` {`nID`:100, `name`:"ariane.community.core.mapping-0.5.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_60552:`FileNode` {`nID`:101, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_60553:`FileNode` {`nID`:102, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.1"})
create (_60554:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:103, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.1"})
create (_60555:`FileNode` {`nID`:104, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_60556:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:105, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_60557:`FileNode` {`nID`:106, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_60558:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:107, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_60559:`FileNode` {`nID`:108, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_60560:`FileNode` {`nID`:109, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_60561:`FileNode` {`nID`:110, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_60562:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:111, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_60563:`FileNode` {`nID`:112, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.1"})
create (_60564:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:113, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_60565:`FileNode` {`nID`:114, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.1"})
create (_60566:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:115, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_60567:`FileNode` {`nID`:116, `name`:"ariane.community.core.injector-0.5.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_60568:`FileNode` {`nID`:117, `name`:"net.echinopsii.ariane.community.core.injector_0.5.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_60569:`FileNode` {`nID`:118, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.1"})
create (_60570:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:119, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.1"})
create (_60571:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:120, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.1"})
create (_60572:`FileNode` {`nID`:121, `name`:"ariane.community.distrib-0.5.1.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.1"})
create (_60573:`FileNode` {`nID`:122, `name`:"pom-ariane.community.distrib-0.5.1.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.1"})
create (_60574:`FileNode` {`nID`:123, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.1"})
create (_60575:`FileNode` {`nID`:124, `name`:"ariane.community.plugins-distrib-0.5.1.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.1"})
create (_60576:`FileNode` {`nID`:125, `name`:"ariane.community.git.repos-0.5.1.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.1"})
create (_60577:`Distribution` {`editable`:"false", `nID`:126, `name`:"community", `version`:"0.5.1"})
create (_60578:`FileNode` {`nID`:127, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.2"})
create (_60579:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:128, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.2"})
create (_60580:`FileNode` {`nID`:129, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_60581:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:130, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_60582:`FileNode` {`nID`:131, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_60583:`FileNode` {`nID`:132, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_60584:`FileNode` {`nID`:133, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_60585:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:134, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_60586:`FileNode` {`nID`:135, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_60587:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:136, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_60588:`FileNode` {`nID`:137, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_60589:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:138, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_60590:`FileNode` {`nID`:139, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_60591:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:140, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_60592:`FileNode` {`nID`:141, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_60593:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:142, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_60594:`FileNode` {`nID`:143, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_60595:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:144, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_60596:`FileNode` {`nID`:145, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_60597:`FileNode` {`nID`:146, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_60598:`FileNode` {`nID`:147, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_60599:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:148, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_60600:`FileNode` {`nID`:149, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.1"})
create (_60601:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:150, `name`:"api", `order`:1, `version`:"0.5.1"})
create (_60602:`FileNode` {`nID`:151, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.1"})
create (_60603:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:152, `name`:"blueprints", `order`:2, `version`:"0.5.1"})
create (_60604:`FileNode` {`nID`:153, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.1"})
create (_60605:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:154, `name`:"dsl", `order`:3, `version`:"0.5.1"})
create (_60606:`FileNode` {`nID`:155, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.1"})
create (_60607:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:156, `name`:"rim", `order`:4, `version`:"0.5.1"})
create (_60608:`FileNode` {`nID`:157, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.1"})
create (_60609:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:158, `name`:"ds", `order`:5, `version`:"0.5.1"})
create (_60610:`FileNode` {`nID`:159, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.1"})
create (_60611:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:160, `name`:"taitale", `order`:6, `version`:"0.5.1"})
create (_60612:`FileNode` {`nID`:161, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.1"})
create (_60613:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:162, `name`:"wat", `order`:7, `version`:"0.5.1"})
create (_60614:`FileNode` {`nID`:163, `name`:"ariane.community.core.mapping-0.5.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_60615:`FileNode` {`nID`:164, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_60616:`FileNode` {`nID`:165, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.1"})
create (_60617:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:166, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.1"})
create (_60618:`FileNode` {`nID`:167, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_60619:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:168, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_60620:`FileNode` {`nID`:169, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_60621:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:170, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_60622:`FileNode` {`nID`:171, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_60623:`FileNode` {`nID`:172, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_60624:`FileNode` {`nID`:173, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_60625:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:174, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_60626:`FileNode` {`nID`:175, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.2"})
create (_60627:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:176, `name`:"base", `order`:1, `version`:"0.5.2"})
create (_60628:`FileNode` {`nID`:177, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.2"})
create (_60629:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:178, `name`:"wat", `order`:2, `version`:"0.5.2"})
create (_60630:`FileNode` {`nID`:179, `name`:"ariane.community.core.injector-0.5.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_60631:`FileNode` {`nID`:180, `name`:"net.echinopsii.ariane.community.core.injector_0.5.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_60632:`FileNode` {`nID`:181, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.2"})
create (_60633:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:182, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.2"})
create (_60634:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:183, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.2"})
create (_60635:`FileNode` {`nID`:184, `name`:"ariane.community.distrib-0.5.2.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.2"})
create (_60636:`FileNode` {`nID`:185, `name`:"pom-ariane.community.distrib-0.5.2.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.2"})
create (_60637:`FileNode` {`nID`:186, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.2"})
create (_60638:`FileNode` {`nID`:187, `name`:"ariane.community.plugins-distrib-0.5.2.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.2"})
create (_60639:`FileNode` {`nID`:188, `name`:"ariane.community.git.repos-0.5.2.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.2"})
create (_60640:`Distribution` {`editable`:"false", `nID`:189, `name`:"community", `version`:"0.5.2"})
create (_60641:`FileNode` {`nID`:190, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.3"})
create (_60642:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:191, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.3"})
create (_60643:`FileNode` {`nID`:192, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_60644:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:193, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_60645:`FileNode` {`nID`:194, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_60646:`FileNode` {`nID`:195, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_60647:`FileNode` {`nID`:196, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_60648:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:197, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_60649:`FileNode` {`nID`:198, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_60650:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:199, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_60651:`FileNode` {`nID`:200, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_60652:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:201, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_60653:`FileNode` {`nID`:202, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_60654:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:203, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_60655:`FileNode` {`nID`:204, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_60656:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:205, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_60657:`FileNode` {`nID`:206, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_60658:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:207, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_60659:`FileNode` {`nID`:208, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_60660:`FileNode` {`nID`:209, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_60661:`FileNode` {`nID`:210, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_60662:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:211, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_60663:`FileNode` {`nID`:212, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.2"})
create (_60664:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:213, `name`:"api", `order`:1, `version`:"0.5.2"})
create (_60665:`FileNode` {`nID`:214, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.2"})
create (_60666:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:215, `name`:"blueprints", `order`:2, `version`:"0.5.2"})
create (_60667:`FileNode` {`nID`:216, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.2"})
create (_60668:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:217, `name`:"dsl", `order`:3, `version`:"0.5.2"})
create (_60669:`FileNode` {`nID`:218, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.2"})
create (_60670:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:219, `name`:"rim", `order`:4, `version`:"0.5.2"})
create (_60671:`FileNode` {`nID`:220, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.2"})
create (_60672:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:221, `name`:"ds", `order`:5, `version`:"0.5.2"})
create (_60673:`FileNode` {`nID`:222, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.2"})
create (_60674:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:223, `name`:"taitale", `order`:6, `version`:"0.5.2"})
create (_60675:`FileNode` {`nID`:224, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.2"})
create (_60676:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:225, `name`:"wat", `order`:7, `version`:"0.5.2"})
create (_60677:`FileNode` {`nID`:226, `name`:"ariane.community.core.mapping-0.5.2.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_60678:`FileNode` {`nID`:227, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.2.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_60679:`FileNode` {`nID`:228, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.2"})
create (_60680:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:229, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.2"})
create (_60681:`FileNode` {`nID`:230, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_60682:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:231, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_60683:`FileNode` {`nID`:232, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_60684:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:233, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_60685:`FileNode` {`nID`:234, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_60686:`FileNode` {`nID`:235, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_60687:`FileNode` {`nID`:236, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_60688:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:237, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_60689:`FileNode` {`nID`:238, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.2"})
create (_60690:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:239, `name`:"base", `order`:1, `version`:"0.5.2"})
create (_60691:`FileNode` {`nID`:240, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.2"})
create (_60692:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:241, `name`:"wat", `order`:2, `version`:"0.5.2"})
create (_60693:`FileNode` {`nID`:242, `name`:"ariane.community.core.injector-0.5.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_60694:`FileNode` {`nID`:243, `name`:"net.echinopsii.ariane.community.core.injector_0.5.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_60695:`FileNode` {`nID`:244, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.2"})
create (_60696:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:245, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.2"})
create (_60697:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:246, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.2"})
create (_60698:`FileNode` {`nID`:247, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.1.0"})
create (_60699:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:248, `name`:"directory", `order`:1, `version`:"0.1.0"})
create (_60700:`FileNode` {`nID`:249, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.1.0"})
create (_60701:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:250, `name`:"jsonparser", `order`:2, `version`:"0.1.0"})
create (_60702:`FileNode` {`nID`:251, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.1.0"})
create (_60703:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:252, `name`:"injector", `order`:3, `version`:"0.1.0"})
create (_60704:`FileNode` {`nID`:253, `name`:"ariane.community.plugin.rabbitmq-0.1.0.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_60705:`FileNode` {`nID`:254, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.1.0.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.1.0"})
create (_60706:`FileNode` {`nID`:255, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_60707:`FileNode` {`nID`:256, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.1.0"})
create (_60708:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:257, `name`:"rabbitmq", `version`:"0.1.0"})
create (_60709:`FileNode` {`nID`:258, `name`:"ariane.community.distrib-0.5.3.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.3"})
create (_60710:`FileNode` {`nID`:259, `name`:"pom-ariane.community.distrib-0.5.3.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.3"})
create (_60711:`FileNode` {`nID`:260, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.3"})
create (_60712:`FileNode` {`nID`:261, `name`:"ariane.community.plugins-distrib-0.5.3.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.3"})
create (_60713:`FileNode` {`nID`:262, `name`:"ariane.community.git.repos-0.5.3.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.3"})
create (_60714:`Distribution` {`editable`:"false", `nID`:263, `name`:"community", `version`:"0.5.3"})
create (_60715:`FileNode` {`nID`:264, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.0"})
create (_60716:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:265, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.0"})
create (_60717:`FileNode` {`nID`:266, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_60718:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:267, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_60719:`FileNode` {`nID`:268, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_60720:`FileNode` {`nID`:269, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_60721:`FileNode` {`nID`:270, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_60722:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:271, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_60723:`FileNode` {`nID`:272, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.0"})
create (_60724:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:273, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_60725:`FileNode` {`nID`:274, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.0"})
create (_60726:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:275, `name`:"wat", `order`:2, `version`:"0.6.0"})
create (_60727:`FileNode` {`nID`:276, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.0"})
create (_60728:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:277, `name`:"idmwat", `order`:3, `version`:"0.6.0"})
create (_60729:`FileNode` {`nID`:278, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.0"})
create (_60730:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:279, `name`:"wab", `order`:4, `version`:"0.6.0"})
create (_60731:`FileNode` {`nID`:280, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.0"})
create (_60732:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:281, `name`:"wresources", `order`:5, `version`:"0.6.0"})
create (_60733:`FileNode` {`nID`:282, `name`:"ariane.community.core.portal-0.6.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_60734:`FileNode` {`nID`:283, `name`:"net.echinopsii.ariane.community.core.portal_0.6.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_60735:`FileNode` {`nID`:284, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.0"})
create (_60736:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:285, `name`:"portal", `order`:3, `type`:"core", `version`:"0.6.0"})
create (_60737:`FileNode` {`nID`:286, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.0"})
create (_60738:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:287, `name`:"api", `order`:1, `version`:"0.6.0"})
create (_60739:`FileNode` {`nID`:288, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.0"})
create (_60740:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:289, `name`:"blueprints", `order`:2, `version`:"0.6.0"})
create (_60741:`FileNode` {`nID`:290, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.0"})
create (_60742:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:291, `name`:"rim", `order`:3, `version`:"0.6.0"})
create (_60743:`FileNode` {`nID`:292, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.0"})
create (_60744:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:293, `name`:"dsl", `order`:4, `version`:"0.6.0"})
create (_60745:`FileNode` {`nID`:294, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.0"})
create (_60746:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:295, `name`:"ds", `order`:5, `version`:"0.6.0"})
create (_60747:`FileNode` {`nID`:296, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.0"})
create (_60748:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:297, `name`:"wat", `order`:6, `version`:"0.6.0"})
create (_60749:`FileNode` {`nID`:298, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.0"})
create (_60750:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:299, `name`:"taitale", `order`:7, `version`:"0.6.0"})
create (_60751:`FileNode` {`nID`:300, `name`:"ariane.community.core.mapping-0.6.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_60752:`FileNode` {`nID`:301, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_60753:`FileNode` {`nID`:302, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.0"})
create (_60754:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:303, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.6.0"})
create (_60755:`FileNode` {`nID`:304, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.0"})
create (_60756:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:305, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_60757:`FileNode` {`nID`:306, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.0"})
create (_60758:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:307, `name`:"wat", `order`:2, `version`:"0.6.0"})
create (_60759:`FileNode` {`nID`:308, `name`:"ariane.community.core.directory-0.6.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_60760:`FileNode` {`nID`:309, `name`:"net.echinopsii.ariane.community.core.directory_0.6.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_60761:`FileNode` {`nID`:310, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.0"})
create (_60762:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:311, `name`:"directory", `order`:5, `type`:"core", `version`:"0.6.0"})
create (_60763:`FileNode` {`nID`:312, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.0"})
create (_60764:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:313, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_60765:`FileNode` {`nID`:314, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.0"})
create (_60766:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:315, `name`:"messaging", `order`:2, `version`:"0.6.0"})
create (_60767:`FileNode` {`nID`:316, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.0"})
create (_60768:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:317, `name`:"wat", `order`:3, `version`:"0.6.0"})
create (_60769:`FileNode` {`nID`:318, `name`:"ariane.community.core.injector-0.6.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_60770:`FileNode` {`nID`:319, `name`:"net.echinopsii.ariane.community.core.injector_0.6.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_60771:`FileNode` {`nID`:320, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.0"})
create (_60772:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:321, `name`:"injector", `order`:6, `type`:"core", `version`:"0.6.0"})
create (_60773:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:322, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.6.0"})
create (_60774:`FileNode` {`nID`:323, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.0"})
create (_60775:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:324, `name`:"directory", `order`:1, `version`:"0.2.0"})
create (_60776:`FileNode` {`nID`:325, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.0"})
create (_60777:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:326, `name`:"jsonparser", `order`:2, `version`:"0.2.0"})
create (_60778:`FileNode` {`nID`:327, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.0"})
create (_60779:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:328, `name`:"injector", `order`:3, `version`:"0.2.0"})
create (_60780:`FileNode` {`nID`:329, `name`:"ariane.community.plugin.rabbitmq-0.2.0.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.0"})
create (_60781:`FileNode` {`nID`:330, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.0.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.0"})
create (_60782:`FileNode` {`nID`:331, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.0"})
create (_60783:`FileNode` {`nID`:332, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.0"})
create (_60784:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:333, `name`:"rabbitmq", `version`:"0.2.0"})
create (_60785:`FileNode` {`nID`:334, `name`:"ariane.community.distrib-0.6.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.0"})
create (_60786:`FileNode` {`nID`:335, `name`:"pom-ariane.community.distrib-0.6.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.0"})
create (_60787:`FileNode` {`nID`:336, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.0"})
create (_60788:`FileNode` {`nID`:337, `name`:"ariane.community.plugins-distrib-0.6.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.0"})
create (_60789:`FileNode` {`nID`:338, `name`:"ariane.community.git.repos-0.6.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.0"})
create (_60790:`Distribution` {`editable`:"false", `nID`:339, `name`:"community", `version`:"0.6.0"})
create (_60791:`FileNode` {`nID`:340, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.1"})
create (_60792:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:341, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.1"})
create (_60793:`FileNode` {`nID`:342, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_60794:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:343, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_60795:`FileNode` {`nID`:344, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_60796:`FileNode` {`nID`:345, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_60797:`FileNode` {`nID`:346, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_60798:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:347, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_60799:`FileNode` {`nID`:348, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.1"})
create (_60800:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:349, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_60801:`FileNode` {`nID`:350, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.1"})
create (_60802:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:351, `name`:"wat", `order`:2, `version`:"0.6.1"})
create (_60803:`FileNode` {`nID`:352, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.1"})
create (_60804:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:353, `name`:"idmwat", `order`:3, `version`:"0.6.1"})
create (_60805:`FileNode` {`nID`:354, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.1"})
create (_60806:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:355, `name`:"wab", `order`:4, `version`:"0.6.1"})
create (_60807:`FileNode` {`nID`:356, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.1"})
create (_60808:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:357, `name`:"wresources", `order`:5, `version`:"0.6.1"})
create (_60809:`FileNode` {`nID`:358, `name`:"ariane.community.core.portal-0.6.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_60810:`FileNode` {`nID`:359, `name`:"net.echinopsii.ariane.community.core.portal_0.6.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_60811:`FileNode` {`nID`:360, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.1"})
create (_60812:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:361, `name`:"portal", `order`:3, `type`:"core", `version`:"0.6.1"})
create (_60813:`FileNode` {`nID`:362, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.1"})
create (_60814:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:363, `name`:"api", `order`:1, `version`:"0.6.1"})
create (_60815:`FileNode` {`nID`:364, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.1"})
create (_60816:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:365, `name`:"blueprints", `order`:2, `version`:"0.6.1"})
create (_60817:`FileNode` {`nID`:366, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.1"})
create (_60818:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:367, `name`:"rim", `order`:3, `version`:"0.6.1"})
create (_60819:`FileNode` {`nID`:368, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.1"})
create (_60820:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:369, `name`:"dsl", `order`:4, `version`:"0.6.1"})
create (_60821:`FileNode` {`nID`:370, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.1"})
create (_60822:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:371, `name`:"ds", `order`:5, `version`:"0.6.1"})
create (_60823:`FileNode` {`nID`:372, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.1"})
create (_60824:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:373, `name`:"wat", `order`:6, `version`:"0.6.1"})
create (_60825:`FileNode` {`nID`:374, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.1"})
create (_60826:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:375, `name`:"taitale", `order`:7, `version`:"0.6.1"})
create (_60827:`FileNode` {`nID`:376, `name`:"ariane.community.core.mapping-0.6.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_60828:`FileNode` {`nID`:377, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_60829:`FileNode` {`nID`:378, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.1"})
create (_60830:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:379, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.6.1"})
create (_60831:`FileNode` {`nID`:380, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.1"})
create (_60832:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:381, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_60833:`FileNode` {`nID`:382, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.1"})
create (_60834:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:383, `name`:"wat", `order`:2, `version`:"0.6.1"})
create (_60835:`FileNode` {`nID`:384, `name`:"ariane.community.core.directory-0.6.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_60836:`FileNode` {`nID`:385, `name`:"net.echinopsii.ariane.community.core.directory_0.6.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_60837:`FileNode` {`nID`:386, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.1"})
create (_60838:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:387, `name`:"directory", `order`:5, `type`:"core", `version`:"0.6.1"})
create (_60839:`FileNode` {`nID`:388, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.1"})
create (_60840:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:389, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_60841:`FileNode` {`nID`:390, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.1"})
create (_60842:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:391, `name`:"messaging", `order`:2, `version`:"0.6.1"})
create (_60843:`FileNode` {`nID`:392, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.1"})
create (_60844:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:393, `name`:"wat", `order`:3, `version`:"0.6.1"})
create (_60845:`FileNode` {`nID`:394, `name`:"ariane.community.core.injector-0.6.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_60846:`FileNode` {`nID`:395, `name`:"net.echinopsii.ariane.community.core.injector_0.6.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_60847:`FileNode` {`nID`:396, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.1"})
create (_60848:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:397, `name`:"injector", `order`:6, `type`:"core", `version`:"0.6.1"})
create (_60849:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:398, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.6.1"})
create (_60850:`FileNode` {`nID`:399, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.1"})
create (_60851:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:400, `name`:"directory", `order`:1, `version`:"0.2.1"})
create (_60852:`FileNode` {`nID`:401, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.1"})
create (_60853:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:402, `name`:"jsonparser", `order`:2, `version`:"0.2.1"})
create (_60854:`FileNode` {`nID`:403, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.1"})
create (_60855:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:404, `name`:"injector", `order`:3, `version`:"0.2.1"})
create (_60856:`FileNode` {`nID`:405, `name`:"ariane.community.plugin.rabbitmq-0.2.1.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.1"})
create (_60857:`FileNode` {`nID`:406, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.1.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.1"})
create (_60858:`FileNode` {`nID`:407, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.1"})
create (_60859:`FileNode` {`nID`:408, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.1"})
create (_60860:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:409, `name`:"rabbitmq", `version`:"0.2.1"})
create (_60861:`FileNode` {`nID`:410, `name`:"ariane.community.distrib-0.6.1.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.1"})
create (_60862:`FileNode` {`nID`:411, `name`:"pom-ariane.community.distrib-0.6.1.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.1"})
create (_60863:`FileNode` {`nID`:412, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.1"})
create (_60864:`FileNode` {`nID`:413, `name`:"ariane.community.plugins-distrib-0.6.1.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.1"})
create (_60865:`FileNode` {`nID`:414, `name`:"ariane.community.git.repos-0.6.1.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.1"})
create (_60866:`Distribution` {`editable`:"false", `nID`:415, `name`:"community", `version`:"0.6.1"})
create (_60867:`FileNode` {`nID`:416, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.2"})
create (_60868:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:417, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.2"})
create (_60869:`FileNode` {`nID`:418, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_60870:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:419, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_60871:`FileNode` {`nID`:420, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_60872:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:421, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_60873:`FileNode` {`nID`:422, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_60874:`FileNode` {`nID`:423, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_60875:`FileNode` {`nID`:424, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_60876:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:425, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_60877:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:426, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.2"})
create (_60878:`FileNode` {`nID`:427, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.1"})
create (_60879:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:428, `name`:"base", `order`:1, `version`:"0.4.1"})
create (_60880:`FileNode` {`nID`:429, `name`:"ariane.community.core.idm-0.4.1.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.1"})
create (_60881:`FileNode` {`nID`:430, `name`:"net.echinopsii.ariane.community.core.idm_0.4.1.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.1"})
create (_60882:`FileNode` {`nID`:431, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.1"})
create (_60883:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:432, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.1"})
create (_60884:`FileNode` {`nID`:433, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.2"})
create (_60885:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:434, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_60886:`FileNode` {`nID`:435, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.2"})
create (_60887:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:436, `name`:"wat", `order`:2, `version`:"0.6.2"})
create (_60888:`FileNode` {`nID`:437, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.2"})
create (_60889:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:438, `name`:"idmwat", `order`:3, `version`:"0.6.2"})
create (_60890:`FileNode` {`nID`:439, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.2"})
create (_60891:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:440, `name`:"wab", `order`:4, `version`:"0.6.2"})
create (_60892:`FileNode` {`nID`:441, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.2"})
create (_60893:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:442, `name`:"wresources", `order`:5, `version`:"0.6.2"})
create (_60894:`FileNode` {`nID`:443, `name`:"ariane.community.core.portal-0.6.2.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_60895:`FileNode` {`nID`:444, `name`:"net.echinopsii.ariane.community.core.portal_0.6.2.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_60896:`FileNode` {`nID`:445, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.2"})
create (_60897:`FileNode` {`nID`:446, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.2"})
create (_60898:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:447, `name`:"api", `order`:1, `version`:"0.6.2"})
create (_60899:`FileNode` {`nID`:448, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.2"})
create (_60900:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:449, `name`:"blueprints", `order`:2, `version`:"0.6.2"})
create (_60901:`FileNode` {`nID`:450, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.2"})
create (_60902:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:451, `name`:"rim", `order`:3, `version`:"0.6.2"})
create (_60903:`FileNode` {`nID`:452, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.2"})
create (_60904:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:453, `name`:"dsl", `order`:4, `version`:"0.6.2"})
create (_60905:`FileNode` {`nID`:454, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.2"})
create (_60906:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:455, `name`:"ds", `order`:5, `version`:"0.6.2"})
create (_60907:`FileNode` {`nID`:456, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.2"})
create (_60908:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:457, `name`:"wat", `order`:6, `version`:"0.6.2"})
create (_60909:`FileNode` {`nID`:458, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.2"})
create (_60910:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:459, `name`:"taitale", `order`:7, `version`:"0.6.2"})
create (_60911:`FileNode` {`nID`:460, `name`:"ariane.community.core.mapping-0.6.2.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_60912:`FileNode` {`nID`:461, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.2.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_60913:`FileNode` {`nID`:462, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.2"})
create (_60914:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:463, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.2"})
create (_60915:`FileNode` {`nID`:464, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.2"})
create (_60916:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:465, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_60917:`FileNode` {`nID`:466, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.2"})
create (_60918:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:467, `name`:"wat", `order`:2, `version`:"0.6.2"})
create (_60919:`FileNode` {`nID`:468, `name`:"ariane.community.core.directory-0.6.2.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_60920:`FileNode` {`nID`:469, `name`:"net.echinopsii.ariane.community.core.directory_0.6.2.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_60921:`FileNode` {`nID`:470, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.2"})
create (_60922:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:471, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.2"})
create (_60923:`FileNode` {`nID`:472, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.2"})
create (_60924:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:473, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_60925:`FileNode` {`nID`:474, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.2"})
create (_60926:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:475, `name`:"messaging", `order`:2, `version`:"0.6.2"})
create (_60927:`FileNode` {`nID`:476, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.2"})
create (_60928:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:477, `name`:"wat", `order`:3, `version`:"0.6.2"})
create (_60929:`FileNode` {`nID`:478, `name`:"ariane.community.core.injector-0.6.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_60930:`FileNode` {`nID`:479, `name`:"net.echinopsii.ariane.community.core.injector_0.6.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_60931:`FileNode` {`nID`:480, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.2"})
create (_60932:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:481, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.2"})
create (_60933:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:482, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.2"})
create (_60934:`FileNode` {`nID`:483, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.2"})
create (_60935:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:484, `name`:"directory", `order`:1, `version`:"0.2.2"})
create (_60936:`FileNode` {`nID`:485, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.2"})
create (_60937:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:486, `name`:"jsonparser", `order`:2, `version`:"0.2.2"})
create (_60938:`FileNode` {`nID`:487, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.2"})
create (_60939:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:488, `name`:"injector", `order`:3, `version`:"0.2.2"})
create (_60940:`FileNode` {`nID`:489, `name`:"ariane.community.plugin.rabbitmq-0.2.2.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.2"})
create (_60941:`FileNode` {`nID`:490, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.2.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.2"})
create (_60942:`FileNode` {`nID`:491, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.2"})
create (_60943:`FileNode` {`nID`:492, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.2"})
create (_60944:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:493, `name`:"rabbitmq", `version`:"0.2.2"})
create (_60945:`FileNode` {`nID`:494, `name`:"ariane.community.distrib-0.6.2.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.2"})
create (_60946:`FileNode` {`nID`:495, `name`:"pom-ariane.community.distrib-0.6.2.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.2"})
create (_60947:`FileNode` {`nID`:496, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.2"})
create (_60948:`FileNode` {`nID`:497, `name`:"ariane.community.plugins-distrib-0.6.2.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.2"})
create (_60949:`FileNode` {`nID`:498, `name`:"ariane.community.git.repos-0.6.2.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.2"})
create (_60950:`Distribution` {`editable`:"false", `nID`:499, `name`:"community", `version`:"0.6.2"})
create (_60951:`FileNode` {`nID`:500, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.3"})
create (_60952:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:501, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.3"})
create (_60953:`FileNode` {`nID`:502, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_60954:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:503, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_60955:`FileNode` {`nID`:504, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_60956:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:505, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_60957:`FileNode` {`nID`:506, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_60958:`FileNode` {`nID`:507, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_60959:`FileNode` {`nID`:508, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_60960:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:509, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_60961:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:510, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.3"})
create (_60962:`FileNode` {`nID`:511, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2"})
create (_60963:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:512, `name`:"base", `order`:1, `version`:"0.4.2"})
create (_60964:`FileNode` {`nID`:513, `name`:"ariane.community.core.idm-0.4.2.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2"})
create (_60965:`FileNode` {`nID`:514, `name`:"net.echinopsii.ariane.community.core.idm_0.4.2.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2"})
create (_60966:`FileNode` {`nID`:515, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2"})
create (_60967:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:516, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2"})
create (_60968:`FileNode` {`nID`:517, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.3"})
create (_60969:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:518, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_60970:`FileNode` {`nID`:519, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.3"})
create (_60971:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:520, `name`:"wat", `order`:2, `version`:"0.6.3"})
create (_60972:`FileNode` {`nID`:521, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.3"})
create (_60973:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:522, `name`:"idmwat", `order`:3, `version`:"0.6.3"})
create (_60974:`FileNode` {`nID`:523, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.3"})
create (_60975:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:524, `name`:"wab", `order`:4, `version`:"0.6.3"})
create (_60976:`FileNode` {`nID`:525, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.3"})
create (_60977:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:526, `name`:"wresources", `order`:5, `version`:"0.6.3"})
create (_60978:`FileNode` {`nID`:527, `name`:"ariane.community.core.portal-0.6.3.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_60979:`FileNode` {`nID`:528, `name`:"net.echinopsii.ariane.community.core.portal_0.6.3.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_60980:`FileNode` {`nID`:529, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.3"})
create (_60981:`FileNode` {`nID`:530, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.3"})
create (_60982:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:531, `name`:"api", `order`:1, `version`:"0.6.3"})
create (_60983:`FileNode` {`nID`:532, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.3"})
create (_60984:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:533, `name`:"blueprints", `order`:2, `version`:"0.6.3"})
create (_60985:`FileNode` {`nID`:534, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.3"})
create (_60986:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:535, `name`:"rim", `order`:3, `version`:"0.6.3"})
create (_60987:`FileNode` {`nID`:536, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.3"})
create (_60988:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:537, `name`:"dsl", `order`:4, `version`:"0.6.3"})
create (_60989:`FileNode` {`nID`:538, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.3"})
create (_60990:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:539, `name`:"ds", `order`:5, `version`:"0.6.3"})
create (_60991:`FileNode` {`nID`:540, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.3"})
create (_60992:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:541, `name`:"wat", `order`:6, `version`:"0.6.3"})
create (_60993:`FileNode` {`nID`:542, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.3"})
create (_60994:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:543, `name`:"taitale", `order`:7, `version`:"0.6.3"})
create (_60995:`FileNode` {`nID`:544, `name`:"ariane.community.core.mapping-0.6.3.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_60996:`FileNode` {`nID`:545, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.3.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_60997:`FileNode` {`nID`:546, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.3"})
create (_60998:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:547, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.3"})
create (_60999:`FileNode` {`nID`:548, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.3"})
create (_61000:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:549, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_61001:`FileNode` {`nID`:550, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.3"})
create (_61002:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:551, `name`:"wat", `order`:2, `version`:"0.6.3"})
create (_61003:`FileNode` {`nID`:552, `name`:"ariane.community.core.directory-0.6.3.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_61004:`FileNode` {`nID`:553, `name`:"net.echinopsii.ariane.community.core.directory_0.6.3.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_61005:`FileNode` {`nID`:554, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.3"})
create (_61006:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:555, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.3"})
create (_61007:`FileNode` {`nID`:556, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.3"})
create (_61008:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:557, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_61009:`FileNode` {`nID`:558, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.3"})
create (_61010:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:559, `name`:"messaging", `order`:2, `version`:"0.6.3"})
create (_61011:`FileNode` {`nID`:560, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.3"})
create (_61012:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:561, `name`:"wat", `order`:3, `version`:"0.6.3"})
create (_61013:`FileNode` {`nID`:562, `name`:"ariane.community.core.injector-0.6.3.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_61014:`FileNode` {`nID`:563, `name`:"net.echinopsii.ariane.community.core.injector_0.6.3.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_61015:`FileNode` {`nID`:564, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.3"})
create (_61016:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:565, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.3"})
create (_61017:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:566, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.3"})
create (_61018:`FileNode` {`nID`:567, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.3"})
create (_61019:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:568, `name`:"directory", `order`:1, `version`:"0.2.3"})
create (_61020:`FileNode` {`nID`:569, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.3"})
create (_61021:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:570, `name`:"jsonparser", `order`:2, `version`:"0.2.3"})
create (_61022:`FileNode` {`nID`:571, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.3"})
create (_61023:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:572, `name`:"injector", `order`:3, `version`:"0.2.3"})
create (_61024:`FileNode` {`nID`:573, `name`:"ariane.community.plugin.rabbitmq-0.2.3.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.3"})
create (_61025:`FileNode` {`nID`:574, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.3.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.3"})
create (_61026:`FileNode` {`nID`:575, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.3"})
create (_61027:`FileNode` {`nID`:576, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.3"})
create (_61028:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:577, `name`:"rabbitmq", `version`:"0.2.3"})
create (_61029:`FileNode` {`nID`:578, `name`:"ariane.community.distrib-0.6.3.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.3"})
create (_61030:`FileNode` {`nID`:579, `name`:"pom-ariane.community.distrib-0.6.3.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.3"})
create (_61031:`FileNode` {`nID`:580, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.3"})
create (_61032:`FileNode` {`nID`:581, `name`:"ariane.community.plugins-distrib-0.6.3.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.3"})
create (_61033:`FileNode` {`nID`:582, `name`:"ariane.community.git.repos-0.6.3.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.3"})
create (_61034:`Distribution` {`editable`:"false", `nID`:583, `name`:"community", `version`:"0.6.3"})
create (_61035:`FileNode` {`nID`:668, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61036:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:669, `name`:"wresources", `order`:5, `version`:"0.7.0"})
create (_61037:`FileNode` {`nID`:670, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61038:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:671, `name`:"wab", `order`:4, `version`:"0.7.0"})
create (_61039:`FileNode` {`nID`:672, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61040:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:673, `name`:"idmwat", `order`:3, `version`:"0.7.0"})
create (_61041:`FileNode` {`nID`:674, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61042:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:675, `name`:"wat", `order`:2, `version`:"0.7.0"})
create (_61043:`FileNode` {`nID`:676, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61044:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:677, `name`:"base", `order`:1, `version`:"0.7.0"})
create (_61045:`FileNode` {`nID`:678, `name`:"net.echinopsii.ariane.community.core.portal_0.7.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_61046:`FileNode` {`nID`:679, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.7.0"})
create (_61047:`FileNode` {`nID`:680, `name`:"ariane.community.core.portal-0.7.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_61048:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:681, `name`:"portal", `order`:4, `type`:"core", `version`:"0.7.0"})
create (_61049:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:682, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2"})
create (_61050:`FileNode` {`nID`:683, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_61051:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:684, `name`:"base", `order`:1, `version`:"0.4.2"})
create (_61052:`FileNode` {`nID`:685, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2"})
create (_61053:`FileNode` {`nID`:686, `name`:"net.echinopsii.ariane.community.core.idm_0.4.2.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2"})
create (_61054:`FileNode` {`nID`:687, `name`:"ariane.community.core.idm-0.4.2.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2"})
create (_61055:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:688, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.7.0"})
create (_61056:`FileNode` {`nID`:689, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61057:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:690, `name`:"wat", `order`:3, `version`:"0.7.0"})
create (_61058:`FileNode` {`nID`:691, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61059:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:692, `name`:"base", `order`:1, `version`:"0.7.0"})
create (_61060:`FileNode` {`nID`:693, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61061:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:694, `name`:"messaging", `order`:2, `version`:"0.7.0"})
create (_61062:`FileNode` {`nID`:695, `name`:"ariane.community.core.injector-0.7.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_61063:`FileNode` {`nID`:696, `name`:"net.echinopsii.ariane.community.core.injector_0.7.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_61064:`FileNode` {`nID`:697, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.7.0"})
create (_61065:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:698, `name`:"injector", `order`:7, `type`:"core", `version`:"0.7.0"})
create (_61066:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:699, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_61067:`FileNode` {`nID`:700, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61068:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:701, `name`:"base", `order`:1, `version`:"0.7.0"})
create (_61069:`FileNode` {`nID`:702, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61070:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:703, `name`:"wat", `order`:2, `version`:"0.7.0"})
create (_61071:`FileNode` {`nID`:704, `name`:"net.echinopsii.ariane.community.core.directory_0.7.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_61072:`FileNode` {`nID`:705, `name`:"ariane.community.core.directory-0.7.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_61073:`FileNode` {`nID`:706, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.7.0"})
create (_61074:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:707, `name`:"directory", `order`:6, `type`:"core", `version`:"0.7.0"})
create (_61075:`FileNode` {`nID`:708, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61076:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:709, `name`:"taitale", `order`:6, `version`:"0.7.0"})
create (_61077:`FileNode` {`nID`:710, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61078:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:711, `name`:"wat", `order`:7, `version`:"0.7.0"})
create (_61079:`FileNode` {`nID`:712, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61080:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:713, `name`:"blueprints", `order`:2, `version`:"0.7.0"})
create (_61081:`FileNode` {`nID`:714, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61082:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:715, `name`:"rim", `order`:3, `version`:"0.7.0"})
create (_61083:`FileNode` {`nID`:716, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61084:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:717, `name`:"api", `order`:1, `version`:"0.7.0"})
create (_61085:`FileNode` {`nID`:718, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61086:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:719, `name`:"dsl", `order`:4, `version`:"0.7.0"})
create (_61087:`FileNode` {`nID`:720, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61088:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:721, `name`:"ds", `order`:5, `version`:"0.7.0"})
create (_61089:`FileNode` {`nID`:722, `name`:"ariane.community.core.mapping-0.7.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_61090:`FileNode` {`nID`:723, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.7.0"})
create (_61091:`FileNode` {`nID`:724, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_61092:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:725, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.7.0"})
create (_61093:`FileNode` {`nID`:726, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.7.0"})
create (_61094:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:727, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.7.0"})
create (_61095:`FileNode` {`nID`:728, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_61096:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:729, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_61097:`FileNode` {`nID`:730, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_61098:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:731, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_61099:`FileNode` {`nID`:732, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_61100:`FileNode` {`nID`:733, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_61101:`FileNode` {`nID`:734, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_61102:`FileNode` {`nID`:735, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_61103:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:736, `name`:"injector", `order`:3, `version`:"0.2.4"})
create (_61104:`FileNode` {`nID`:737, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_61105:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:738, `name`:"jsonparser", `order`:2, `version`:"0.2.4"})
create (_61106:`FileNode` {`nID`:739, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_61107:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:740, `name`:"directory", `order`:1, `version`:"0.2.4"})
create (_61108:`FileNode` {`nID`:741, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.4"})
create (_61109:`FileNode` {`nID`:742, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.4"})
create (_61110:`FileNode` {`nID`:743, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.4.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.4"})
create (_61111:`FileNode` {`nID`:744, `name`:"ariane.community.plugin.rabbitmq-0.2.4.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.4"})
create (_61112:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:745, `name`:"rabbitmq", `version`:"0.2.4"})
create (_61113:`FileNode` {`nID`:746, `name`:"ariane.community.distrib-0.7.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.4-SNAPSHOT"})
create (_61114:`FileNode` {`nID`:747, `name`:"ariane.community.git.repos-0.7.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.4-SNAPSHOT"})
create (_61115:`FileNode` {`nID`:748, `name`:"ariane.community.plugins-distrib-0.7.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.4-SNAPSHOT"})
create (_61116:`FileNode` {`nID`:749, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.4-SNAPSHOT"})
create (_61117:`FileNode` {`nID`:750, `name`:"pom-ariane.community.distrib-0.7.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.4-SNAPSHOT"})
create (_61118:`Distribution` {`editable`:"false", `nID`:751, `name`:"community", `version`:"0.7.0"})
create (_61119:`FileNode` {`nID`:752, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_61120:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:753, `name`:"api", `order`:1, `version`:"0.1.1-SNAPSHOT"})
create (_61121:`FileNode` {`nID`:754, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_61122:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:755, `name`:"rabbitmq", `order`:2, `version`:"0.1.1-SNAPSHOT"})
create (_61123:`FileNode` {`nID`:756, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_61124:`FileNode` {`nID`:757, `name`:"ariane.community.messaging-master.SNAPSHOT.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.1-SNAPSHOT"})
create (_61125:`FileNode` {`nID`:758, `name`:"net.echinopsii.ariane.community.messaging_master.SNAPSHOT.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.1-SNAPSHOT"})
create (_61126:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:759, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.1-SNAPSHOT"})
create (_61127:`FileNode` {`nID`:760, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.7.1-SNAPSHOT"})
create (_61128:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:761, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.7.1-SNAPSHOT"})
create (_61129:`FileNode` {`nID`:762, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61130:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:763, `name`:"wat", `order`:7, `version`:"0.7.1-SNAPSHOT"})
create (_61131:`FileNode` {`nID`:764, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61132:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:765, `name`:"taitale", `order`:6, `version`:"0.7.1-SNAPSHOT"})
create (_61133:`FileNode` {`nID`:766, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61134:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:767, `name`:"dsl", `order`:4, `version`:"0.7.1-SNAPSHOT"})
create (_61135:`FileNode` {`nID`:768, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61136:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:769, `name`:"api", `order`:1, `version`:"0.7.1-SNAPSHOT"})
create (_61137:`FileNode` {`nID`:770, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61138:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:771, `name`:"rim", `order`:3, `version`:"0.7.1-SNAPSHOT"})
create (_61139:`FileNode` {`nID`:772, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61140:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:773, `name`:"blueprints", `order`:2, `version`:"0.7.1-SNAPSHOT"})
create (_61141:`FileNode` {`nID`:774, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61142:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:775, `name`:"ds", `order`:5, `version`:"0.7.1-SNAPSHOT"})
create (_61143:`FileNode` {`nID`:776, `name`:"net.echinopsii.ariane.community.core.mapping_master.SNAPSHOT.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1-SNAPSHOT"})
create (_61144:`FileNode` {`nID`:777, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.7.1-SNAPSHOT"})
create (_61145:`FileNode` {`nID`:778, `name`:"ariane.community.core.mapping-master.SNAPSHOT.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1-SNAPSHOT"})
create (_61146:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:779, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.7.1-SNAPSHOT"})
create (_61147:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:780, `name`:"portal", `order`:4, `type`:"core", `version`:"0.7.1-SNAPSHOT"})
create (_61148:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:781, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.3-SNAPSHOT"})
create (_61149:`FileNode` {`nID`:782, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61150:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:783, `name`:"wat", `order`:2, `version`:"0.7.1-SNAPSHOT"})
create (_61151:`FileNode` {`nID`:784, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61152:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:785, `name`:"base", `order`:1, `version`:"0.7.1-SNAPSHOT"})
create (_61153:`FileNode` {`nID`:786, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.7.1-SNAPSHOT"})
create (_61154:`FileNode` {`nID`:787, `name`:"ariane.community.core.directory-master.SNAPSHOT.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1-SNAPSHOT"})
create (_61155:`FileNode` {`nID`:788, `name`:"net.echinopsii.ariane.community.core.directory_master.SNAPSHOT.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1-SNAPSHOT"})
create (_61156:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:789, `name`:"directory", `order`:6, `type`:"core", `version`:"0.7.1-SNAPSHOT"})
create (_61157:`FileNode` {`nID`:790, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61158:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:791, `name`:"messaging", `order`:2, `version`:"0.7.1-SNAPSHOT"})
create (_61159:`FileNode` {`nID`:792, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61160:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:793, `name`:"base", `order`:1, `version`:"0.7.1-SNAPSHOT"})
create (_61161:`FileNode` {`nID`:794, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61162:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:795, `name`:"wat", `order`:3, `version`:"0.7.1-SNAPSHOT"})
create (_61163:`FileNode` {`nID`:796, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.7.1-SNAPSHOT"})
create (_61164:`FileNode` {`nID`:797, `name`:"net.echinopsii.ariane.community.core.injector_master.SNAPSHOT.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1-SNAPSHOT"})
create (_61165:`FileNode` {`nID`:798, `name`:"ariane.community.core.injector-master.SNAPSHOT.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1-SNAPSHOT"})
create (_61166:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:799, `name`:"injector", `order`:7, `type`:"core", `version`:"0.7.1-SNAPSHOT"})
create (_61167:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:800, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.7.1-SNAPSHOT"})
create (_61168:`FileNode` {`nID`:801, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_61169:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:802, `name`:"base", `order`:1, `version`:"0.4.3-SNAPSHOT"})
create (_61170:`FileNode` {`nID`:803, `name`:"ariane.community.core.idm-master.SNAPSHOT.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.3-SNAPSHOT"})
create (_61171:`FileNode` {`nID`:804, `name`:"net.echinopsii.ariane.community.core.idm_master.SNAPSHOT.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.3-SNAPSHOT"})
create (_61172:`FileNode` {`nID`:805, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.3-SNAPSHOT"})
create (_61173:`FileNode` {`nID`:806, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61174:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:807, `name`:"base", `order`:1, `version`:"0.7.1-SNAPSHOT"})
create (_61175:`FileNode` {`nID`:808, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61176:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:809, `name`:"wat", `order`:2, `version`:"0.7.1-SNAPSHOT"})
create (_61177:`FileNode` {`nID`:810, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61178:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:811, `name`:"idmwat", `order`:3, `version`:"0.7.1-SNAPSHOT"})
create (_61179:`FileNode` {`nID`:812, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61180:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:813, `name`:"wab", `order`:4, `version`:"0.7.1-SNAPSHOT"})
create (_61181:`FileNode` {`nID`:814, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_61182:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:815, `name`:"wresources", `order`:5, `version`:"0.7.1-SNAPSHOT"})
create (_61183:`FileNode` {`nID`:816, `name`:"ariane.community.core.portal-master.SNAPSHOT.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1-SNAPSHOT"})
create (_61184:`FileNode` {`nID`:817, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.7.1-SNAPSHOT"})
create (_61185:`FileNode` {`nID`:818, `name`:"net.echinopsii.ariane.community.core.portal_master.SNAPSHOT.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1-SNAPSHOT"})
create (_61186:`FileNode` {`nID`:819, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_61187:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:820, `name`:"directory", `order`:1, `version`:"0.2.5-SNAPSHOT"})
create (_61188:`FileNode` {`nID`:821, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_61189:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:822, `name`:"jsonparser", `order`:2, `version`:"0.2.5-SNAPSHOT"})
create (_61190:`FileNode` {`nID`:823, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_61191:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:824, `name`:"injector", `order`:3, `version`:"0.2.5-SNAPSHOT"})
create (_61192:`FileNode` {`nID`:825, `name`:"ariane.community.plugin.rabbitmq-master.SNAPSHOT.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.5-SNAPSHOT"})
create (_61193:`FileNode` {`nID`:826, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_master.SNAPSHOT.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.5-SNAPSHOT"})
create (_61194:`FileNode` {`nID`:827, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.5-SNAPSHOT"})
create (_61195:`FileNode` {`nID`:828, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.5-SNAPSHOT"})
create (_61196:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:829, `name`:"rabbitmq", `version`:"0.2.5-SNAPSHOT"})
create (_61197:`FileNode` {`nID`:830, `name`:"pom-ariane.community.distrib-master.SNAPSHOT.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.4-SNAPSHOT"})
create (_61198:`FileNode` {`nID`:831, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.4-SNAPSHOT"})
create (_61199:`FileNode` {`nID`:832, `name`:"ariane.community.plugins-distrib-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.4-SNAPSHOT"})
create (_61200:`FileNode` {`nID`:833, `name`:"ariane.community.git.repos-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.4-SNAPSHOT"})
create (_61201:`FileNode` {`nID`:834, `name`:"ariane.community.distrib-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.4-SNAPSHOT"})
create (_61202:`Distribution` {`editable`:"true", `nID`:835, `name`:"community", `version`:"0.7.1-SNAPSHOT"})
create (_61203:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:836, `name`:"procos", `version`:"0.1.0"})
create (_61204:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:837, `name`:"procos", `version`:"0.1.1-b01"})
create (_61205:`FileNode` {`nID`:838, `name`:"net.echinopsii.ariane.community.messaging_0.1.1-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.1.1-SNAPSHOT"})
create (_61206:`FileNode` {`nID`:839, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.1-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1-SNAPSHOT"})
create (_61207:`FileNode` {`nID`:840, `name`:"net.echinopsii.ariane.community.core.injector_0.7.1-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1-SNAPSHOT"})
create (_61208:`FileNode` {`nID`:841, `name`:"net.echinopsii.ariane.community.core.portal_0.7.1-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1-SNAPSHOT"})
create (_61209:`FileNode` {`nID`:842, `name`:"net.echinopsii.ariane.community.core.directory_0.7.1-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1-SNAPSHOT"})
create (_61210:`FileNode` {`nID`:843, `name`:"net.echinopsii.ariane.community.core.idm_0.4.3-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.4.3-SNAPSHOT"})
create _60453-[:`CONTAINS`]->_60452
create _60453-[:`DEPENDS ON`]->_60514
create _60455-[:`CONTAINS`]->_60454
create _60459-[:`COMPOSED OF`]->_60455
create _60459-[:`CONTAINS`]->_60458
create _60459-[:`CONTAINS`]->_60457
create _60459-[:`CONTAINS`]->_60456
create _60459-[:`DEPENDS ON`]->_60514
create _60461-[:`CONTAINS`]->_60460
create _60463-[:`CONTAINS`]->_60462
create _60465-[:`CONTAINS`]->_60464
create _60467-[:`CONTAINS`]->_60466
create _60469-[:`CONTAINS`]->_60468
create _60473-[:`COMPOSED OF`]->_60461
create _60473-[:`COMPOSED OF`]->_60463
create _60473-[:`COMPOSED OF`]->_60467
create _60473-[:`COMPOSED OF`]->_60469
create _60473-[:`COMPOSED OF`]->_60465
create _60473-[:`CONTAINS`]->_60471
create _60473-[:`CONTAINS`]->_60472
create _60473-[:`CONTAINS`]->_60470
create _60473-[:`DEPENDS ON`]->_60514
create _60473-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_60459
create _60475-[:`CONTAINS`]->_60474
create _60477-[:`CONTAINS`]->_60476
create _60479-[:`CONTAINS`]->_60478
create _60481-[:`CONTAINS`]->_60480
create _60483-[:`COMPOSED OF`]->_60481
create _60483-[:`COMPOSED OF`]->_60477
create _60483-[:`COMPOSED OF`]->_60479
create _60483-[:`COMPOSED OF`]->_60475
create _60483-[:`CONTAINS`]->_60482
create _60485-[:`CONTAINS`]->_60484
create _60487-[:`CONTAINS`]->_60486
create _60491-[:`COMPOSED OF`]->_60485
create _60491-[:`COMPOSED OF`]->_60483
create _60491-[:`COMPOSED OF`]->_60487
create _60491-[:`CONTAINS`]->_60489
create _60491-[:`CONTAINS`]->_60488
create _60491-[:`CONTAINS`]->_60490
create _60491-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_60459
create _60491-[:`DEPENDS ON`]->_60514
create _60491-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_60473
create _60493-[:`CONTAINS`]->_60492
create _60495-[:`CONTAINS`]->_60494
create _60499-[:`COMPOSED OF`]->_60495
create _60499-[:`COMPOSED OF`]->_60493
create _60499-[:`CONTAINS`]->_60498
create _60499-[:`CONTAINS`]->_60496
create _60499-[:`CONTAINS`]->_60497
create _60499-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_60473
create _60499-[:`DEPENDS ON`]->_60514
create _60501-[:`CONTAINS`]->_60500
create _60503-[:`CONTAINS`]->_60502
create _60507-[:`COMPOSED OF`]->_60501
create _60507-[:`COMPOSED OF`]->_60503
create _60507-[:`CONTAINS`]->_60506
create _60507-[:`CONTAINS`]->_60505
create _60507-[:`CONTAINS`]->_60504
create _60507-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_60473
create _60507-[:`DEPENDS ON`]->_60514
create _60508-[:`DEPENDS ON`]->_60514
create _60514-[:`CONTAINS`]->_60513
create _60514-[:`CONTAINS`]->_60511
create _60514-[:`CONTAINS`]->_60512
create _60514-[:`CONTAINS`]->_60509
create _60514-[:`CONTAINS`]->_60510
create _60516-[:`CONTAINS`]->_60515
create _60516-[:`DEPENDS ON`]->_60577
create _60518-[:`CONTAINS`]->_60517
create _60522-[:`COMPOSED OF`]->_60518
create _60522-[:`CONTAINS`]->_60519
create _60522-[:`CONTAINS`]->_60521
create _60522-[:`CONTAINS`]->_60520
create _60522-[:`DEPENDS ON`]->_60577
create _60524-[:`CONTAINS`]->_60523
create _60526-[:`CONTAINS`]->_60525
create _60528-[:`CONTAINS`]->_60527
create _60530-[:`CONTAINS`]->_60529
create _60532-[:`CONTAINS`]->_60531
create _60536-[:`COMPOSED OF`]->_60526
create _60536-[:`COMPOSED OF`]->_60528
create _60536-[:`COMPOSED OF`]->_60532
create _60536-[:`COMPOSED OF`]->_60524
create _60536-[:`COMPOSED OF`]->_60530
create _60536-[:`CONTAINS`]->_60533
create _60536-[:`CONTAINS`]->_60535
create _60536-[:`CONTAINS`]->_60534
create _60536-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_60522
create _60536-[:`DEPENDS ON`]->_60577
create _60538-[:`CONTAINS`]->_60537
create _60540-[:`CONTAINS`]->_60539
create _60542-[:`CONTAINS`]->_60541
create _60544-[:`CONTAINS`]->_60543
create _60546-[:`COMPOSED OF`]->_60542
create _60546-[:`COMPOSED OF`]->_60544
create _60546-[:`COMPOSED OF`]->_60538
create _60546-[:`COMPOSED OF`]->_60540
create _60546-[:`CONTAINS`]->_60545
create _60548-[:`CONTAINS`]->_60547
create _60550-[:`CONTAINS`]->_60549
create _60554-[:`COMPOSED OF`]->_60550
create _60554-[:`COMPOSED OF`]->_60546
create _60554-[:`COMPOSED OF`]->_60548
create _60554-[:`CONTAINS`]->_60552
create _60554-[:`CONTAINS`]->_60553
create _60554-[:`CONTAINS`]->_60551
create _60554-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_60536
create _60554-[:`DEPENDS ON`]->_60577
create _60554-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_60522
create _60556-[:`CONTAINS`]->_60555
create _60558-[:`CONTAINS`]->_60557
create _60562-[:`COMPOSED OF`]->_60558
create _60562-[:`COMPOSED OF`]->_60556
create _60562-[:`CONTAINS`]->_60559
create _60562-[:`CONTAINS`]->_60561
create _60562-[:`CONTAINS`]->_60560
create _60562-[:`DEPENDS ON`]->_60577
create _60562-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_60536
create _60564-[:`CONTAINS`]->_60563
create _60566-[:`CONTAINS`]->_60565
create _60570-[:`COMPOSED OF`]->_60564
create _60570-[:`COMPOSED OF`]->_60566
create _60570-[:`CONTAINS`]->_60568
create _60570-[:`CONTAINS`]->_60567
create _60570-[:`CONTAINS`]->_60569
create _60570-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_60536
create _60570-[:`DEPENDS ON`]->_60577
create _60571-[:`DEPENDS ON`]->_60577
create _60577-[:`CONTAINS`]->_60576
create _60577-[:`CONTAINS`]->_60573
create _60577-[:`CONTAINS`]->_60574
create _60577-[:`CONTAINS`]->_60572
create _60577-[:`CONTAINS`]->_60575
create _60579-[:`CONTAINS`]->_60578
create _60579-[:`DEPENDS ON`]->_60640
create _60581-[:`CONTAINS`]->_60580
create _60585-[:`COMPOSED OF`]->_60581
create _60585-[:`CONTAINS`]->_60582
create _60585-[:`CONTAINS`]->_60584
create _60585-[:`CONTAINS`]->_60583
create _60585-[:`DEPENDS ON`]->_60640
create _60587-[:`CONTAINS`]->_60586
create _60589-[:`CONTAINS`]->_60588
create _60591-[:`CONTAINS`]->_60590
create _60593-[:`CONTAINS`]->_60592
create _60595-[:`CONTAINS`]->_60594
create _60599-[:`COMPOSED OF`]->_60587
create _60599-[:`COMPOSED OF`]->_60595
create _60599-[:`COMPOSED OF`]->_60593
create _60599-[:`COMPOSED OF`]->_60591
create _60599-[:`COMPOSED OF`]->_60589
create _60599-[:`CONTAINS`]->_60597
create _60599-[:`CONTAINS`]->_60596
create _60599-[:`CONTAINS`]->_60598
create _60599-[:`DEPENDS ON`]->_60640
create _60599-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_60585
create _60601-[:`CONTAINS`]->_60600
create _60603-[:`CONTAINS`]->_60602
create _60605-[:`CONTAINS`]->_60604
create _60607-[:`CONTAINS`]->_60606
create _60609-[:`COMPOSED OF`]->_60605
create _60609-[:`COMPOSED OF`]->_60601
create _60609-[:`COMPOSED OF`]->_60607
create _60609-[:`COMPOSED OF`]->_60603
create _60609-[:`CONTAINS`]->_60608
create _60611-[:`CONTAINS`]->_60610
create _60613-[:`CONTAINS`]->_60612
create _60617-[:`COMPOSED OF`]->_60613
create _60617-[:`COMPOSED OF`]->_60611
create _60617-[:`COMPOSED OF`]->_60609
create _60617-[:`CONTAINS`]->_60615
create _60617-[:`CONTAINS`]->_60616
create _60617-[:`CONTAINS`]->_60614
create _60617-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_60585
create _60617-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_60599
create _60617-[:`DEPENDS ON`]->_60640
create _60619-[:`CONTAINS`]->_60618
create _60621-[:`CONTAINS`]->_60620
create _60625-[:`COMPOSED OF`]->_60619
create _60625-[:`COMPOSED OF`]->_60621
create _60625-[:`CONTAINS`]->_60623
create _60625-[:`CONTAINS`]->_60622
create _60625-[:`CONTAINS`]->_60624
create _60625-[:`DEPENDS ON`]->_60640
create _60625-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_60599
create _60627-[:`CONTAINS`]->_60626
create _60629-[:`CONTAINS`]->_60628
create _60633-[:`COMPOSED OF`]->_60627
create _60633-[:`COMPOSED OF`]->_60629
create _60633-[:`CONTAINS`]->_60630
create _60633-[:`CONTAINS`]->_60632
create _60633-[:`CONTAINS`]->_60631
create _60633-[:`DEPENDS ON`]->_60640
create _60633-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_60599
create _60634-[:`DEPENDS ON`]->_60640
create _60640-[:`CONTAINS`]->_60636
create _60640-[:`CONTAINS`]->_60635
create _60640-[:`CONTAINS`]->_60639
create _60640-[:`CONTAINS`]->_60638
create _60640-[:`CONTAINS`]->_60637
create _60642-[:`CONTAINS`]->_60641
create _60642-[:`DEPENDS ON`]->_60714
create _60644-[:`CONTAINS`]->_60643
create _60648-[:`COMPOSED OF`]->_60644
create _60648-[:`CONTAINS`]->_60645
create _60648-[:`CONTAINS`]->_60646
create _60648-[:`CONTAINS`]->_60647
create _60648-[:`DEPENDS ON`]->_60714
create _60650-[:`CONTAINS`]->_60649
create _60652-[:`CONTAINS`]->_60651
create _60654-[:`CONTAINS`]->_60653
create _60656-[:`CONTAINS`]->_60655
create _60658-[:`CONTAINS`]->_60657
create _60662-[:`COMPOSED OF`]->_60656
create _60662-[:`COMPOSED OF`]->_60658
create _60662-[:`COMPOSED OF`]->_60652
create _60662-[:`COMPOSED OF`]->_60650
create _60662-[:`COMPOSED OF`]->_60654
create _60662-[:`CONTAINS`]->_60659
create _60662-[:`CONTAINS`]->_60660
create _60662-[:`CONTAINS`]->_60661
create _60662-[:`DEPENDS ON`]->_60714
create _60662-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_60648
create _60664-[:`CONTAINS`]->_60663
create _60666-[:`CONTAINS`]->_60665
create _60668-[:`CONTAINS`]->_60667
create _60670-[:`CONTAINS`]->_60669
create _60672-[:`COMPOSED OF`]->_60664
create _60672-[:`COMPOSED OF`]->_60668
create _60672-[:`COMPOSED OF`]->_60666
create _60672-[:`COMPOSED OF`]->_60670
create _60672-[:`CONTAINS`]->_60671
create _60674-[:`CONTAINS`]->_60673
create _60676-[:`CONTAINS`]->_60675
create _60680-[:`COMPOSED OF`]->_60676
create _60680-[:`COMPOSED OF`]->_60674
create _60680-[:`COMPOSED OF`]->_60672
create _60680-[:`CONTAINS`]->_60679
create _60680-[:`CONTAINS`]->_60677
create _60680-[:`CONTAINS`]->_60678
create _60680-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_60648
create _60680-[:`DEPENDS ON`]->_60714
create _60680-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_60662
create _60682-[:`CONTAINS`]->_60681
create _60684-[:`CONTAINS`]->_60683
create _60688-[:`COMPOSED OF`]->_60682
create _60688-[:`COMPOSED OF`]->_60684
create _60688-[:`CONTAINS`]->_60685
create _60688-[:`CONTAINS`]->_60686
create _60688-[:`CONTAINS`]->_60687
create _60688-[:`DEPENDS ON`]->_60714
create _60688-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_60662
create _60690-[:`CONTAINS`]->_60689
create _60692-[:`CONTAINS`]->_60691
create _60696-[:`COMPOSED OF`]->_60690
create _60696-[:`COMPOSED OF`]->_60692
create _60696-[:`CONTAINS`]->_60693
create _60696-[:`CONTAINS`]->_60695
create _60696-[:`CONTAINS`]->_60694
create _60696-[:`DEPENDS ON`]->_60714
create _60696-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_60662
create _60697-[:`DEPENDS ON`]->_60714
create _60699-[:`CONTAINS`]->_60698
create _60701-[:`CONTAINS`]->_60700
create _60703-[:`CONTAINS`]->_60702
create _60708-[:`COMPOSED OF`]->_60703
create _60708-[:`COMPOSED OF`]->_60699
create _60708-[:`COMPOSED OF`]->_60701
create _60708-[:`CONTAINS`]->_60706
create _60708-[:`CONTAINS`]->_60705
create _60708-[:`CONTAINS`]->_60707
create _60708-[:`CONTAINS`]->_60704
create _60708-[:`COMPATIBLE WITH`]->_60714
create _60708-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_60662
create _60708-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_60696
create _60708-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_60680
create _60708-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_60688
create _60714-[:`CONTAINS`]->_60713
create _60714-[:`CONTAINS`]->_60712
create _60714-[:`CONTAINS`]->_60709
create _60714-[:`CONTAINS`]->_60710
create _60714-[:`CONTAINS`]->_60711
create _60716-[:`CONTAINS`]->_60715
create _60716-[:`DEPENDS ON`]->_60790
create _60718-[:`CONTAINS`]->_60717
create _60722-[:`COMPOSED OF`]->_60718
create _60722-[:`CONTAINS`]->_60720
create _60722-[:`CONTAINS`]->_60719
create _60722-[:`CONTAINS`]->_60721
create _60722-[:`DEPENDS ON`]->_60790
create _60724-[:`CONTAINS`]->_60723
create _60726-[:`CONTAINS`]->_60725
create _60728-[:`CONTAINS`]->_60727
create _60730-[:`CONTAINS`]->_60729
create _60732-[:`CONTAINS`]->_60731
create _60736-[:`COMPOSED OF`]->_60728
create _60736-[:`COMPOSED OF`]->_60730
create _60736-[:`COMPOSED OF`]->_60732
create _60736-[:`COMPOSED OF`]->_60726
create _60736-[:`COMPOSED OF`]->_60724
create _60736-[:`CONTAINS`]->_60735
create _60736-[:`CONTAINS`]->_60733
create _60736-[:`CONTAINS`]->_60734
create _60736-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_60722
create _60736-[:`DEPENDS ON`]->_60790
create _60738-[:`CONTAINS`]->_60737
create _60740-[:`CONTAINS`]->_60739
create _60742-[:`CONTAINS`]->_60741
create _60744-[:`CONTAINS`]->_60743
create _60746-[:`COMPOSED OF`]->_60738
create _60746-[:`COMPOSED OF`]->_60744
create _60746-[:`COMPOSED OF`]->_60740
create _60746-[:`COMPOSED OF`]->_60742
create _60746-[:`CONTAINS`]->_60745
create _60748-[:`CONTAINS`]->_60747
create _60750-[:`CONTAINS`]->_60749
create _60754-[:`COMPOSED OF`]->_60750
create _60754-[:`COMPOSED OF`]->_60746
create _60754-[:`COMPOSED OF`]->_60748
create _60754-[:`CONTAINS`]->_60753
create _60754-[:`CONTAINS`]->_60751
create _60754-[:`CONTAINS`]->_60752
create _60754-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_60722
create _60754-[:`DEPENDS ON`]->_60790
create _60754-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60736
create _60756-[:`CONTAINS`]->_60755
create _60758-[:`CONTAINS`]->_60757
create _60762-[:`COMPOSED OF`]->_60758
create _60762-[:`COMPOSED OF`]->_60756
create _60762-[:`CONTAINS`]->_60760
create _60762-[:`CONTAINS`]->_60761
create _60762-[:`CONTAINS`]->_60759
create _60762-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60736
create _60762-[:`DEPENDS ON`]->_60790
create _60764-[:`CONTAINS`]->_60763
create _60766-[:`CONTAINS`]->_60765
create _60768-[:`CONTAINS`]->_60767
create _60772-[:`COMPOSED OF`]->_60768
create _60772-[:`COMPOSED OF`]->_60766
create _60772-[:`COMPOSED OF`]->_60764
create _60772-[:`CONTAINS`]->_60770
create _60772-[:`CONTAINS`]->_60769
create _60772-[:`CONTAINS`]->_60771
create _60772-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60736
create _60772-[:`DEPENDS ON`]->_60790
create _60773-[:`DEPENDS ON`]->_60790
create _60775-[:`CONTAINS`]->_60774
create _60777-[:`CONTAINS`]->_60776
create _60779-[:`CONTAINS`]->_60778
create _60784-[:`COMPOSED OF`]->_60775
create _60784-[:`COMPOSED OF`]->_60777
create _60784-[:`COMPOSED OF`]->_60779
create _60784-[:`CONTAINS`]->_60782
create _60784-[:`CONTAINS`]->_60780
create _60784-[:`CONTAINS`]->_60783
create _60784-[:`CONTAINS`]->_60781
create _60784-[:`COMPATIBLE WITH` {`version_max`:"0.2.1", `version_min`:"0.2.0"}]->_60790
create _60784-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60736
create _60784-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60772
create _60784-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60762
create _60784-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60754
create _60790-[:`CONTAINS`]->_60788
create _60790-[:`CONTAINS`]->_60789
create _60790-[:`CONTAINS`]->_60785
create _60790-[:`CONTAINS`]->_60786
create _60790-[:`CONTAINS`]->_60787
create _60792-[:`CONTAINS`]->_60791
create _60792-[:`DEPENDS ON`]->_60866
create _60794-[:`CONTAINS`]->_60793
create _60798-[:`COMPOSED OF`]->_60794
create _60798-[:`CONTAINS`]->_60796
create _60798-[:`CONTAINS`]->_60795
create _60798-[:`CONTAINS`]->_60797
create _60798-[:`DEPENDS ON`]->_60866
create _60800-[:`CONTAINS`]->_60799
create _60802-[:`CONTAINS`]->_60801
create _60804-[:`CONTAINS`]->_60803
create _60806-[:`CONTAINS`]->_60805
create _60808-[:`CONTAINS`]->_60807
create _60812-[:`COMPOSED OF`]->_60804
create _60812-[:`COMPOSED OF`]->_60802
create _60812-[:`COMPOSED OF`]->_60806
create _60812-[:`COMPOSED OF`]->_60808
create _60812-[:`COMPOSED OF`]->_60800
create _60812-[:`CONTAINS`]->_60811
create _60812-[:`CONTAINS`]->_60809
create _60812-[:`CONTAINS`]->_60810
create _60812-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_60798
create _60812-[:`DEPENDS ON`]->_60866
create _60814-[:`CONTAINS`]->_60813
create _60816-[:`CONTAINS`]->_60815
create _60818-[:`CONTAINS`]->_60817
create _60820-[:`CONTAINS`]->_60819
create _60822-[:`COMPOSED OF`]->_60814
create _60822-[:`COMPOSED OF`]->_60818
create _60822-[:`COMPOSED OF`]->_60816
create _60822-[:`COMPOSED OF`]->_60820
create _60822-[:`CONTAINS`]->_60821
create _60824-[:`CONTAINS`]->_60823
create _60826-[:`CONTAINS`]->_60825
create _60830-[:`COMPOSED OF`]->_60824
create _60830-[:`COMPOSED OF`]->_60822
create _60830-[:`COMPOSED OF`]->_60826
create _60830-[:`CONTAINS`]->_60829
create _60830-[:`CONTAINS`]->_60828
create _60830-[:`CONTAINS`]->_60827
create _60830-[:`DEPENDS ON`]->_60866
create _60830-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60812
create _60830-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_60798
create _60832-[:`CONTAINS`]->_60831
create _60834-[:`CONTAINS`]->_60833
create _60838-[:`COMPOSED OF`]->_60834
create _60838-[:`COMPOSED OF`]->_60832
create _60838-[:`CONTAINS`]->_60837
create _60838-[:`CONTAINS`]->_60835
create _60838-[:`CONTAINS`]->_60836
create _60838-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60812
create _60838-[:`DEPENDS ON`]->_60866
create _60840-[:`CONTAINS`]->_60839
create _60842-[:`CONTAINS`]->_60841
create _60844-[:`CONTAINS`]->_60843
create _60848-[:`COMPOSED OF`]->_60842
create _60848-[:`COMPOSED OF`]->_60844
create _60848-[:`COMPOSED OF`]->_60840
create _60848-[:`CONTAINS`]->_60847
create _60848-[:`CONTAINS`]->_60845
create _60848-[:`CONTAINS`]->_60846
create _60848-[:`DEPENDS ON`]->_60866
create _60848-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60812
create _60849-[:`DEPENDS ON`]->_60866
create _60851-[:`CONTAINS`]->_60850
create _60853-[:`CONTAINS`]->_60852
create _60855-[:`CONTAINS`]->_60854
create _60860-[:`COMPOSED OF`]->_60853
create _60860-[:`COMPOSED OF`]->_60851
create _60860-[:`COMPOSED OF`]->_60855
create _60860-[:`CONTAINS`]->_60859
create _60860-[:`CONTAINS`]->_60857
create _60860-[:`CONTAINS`]->_60858
create _60860-[:`CONTAINS`]->_60856
create _60860-[:`COMPATIBLE WITH`]->_60866
create _60860-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60848
create _60860-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60812
create _60860-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60838
create _60860-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60830
create _60866-[:`CONTAINS`]->_60865
create _60866-[:`CONTAINS`]->_60862
create _60866-[:`CONTAINS`]->_60861
create _60866-[:`CONTAINS`]->_60864
create _60866-[:`CONTAINS`]->_60863
create _60868-[:`CONTAINS`]->_60867
create _60868-[:`DEPENDS ON`]->_60950
create _60870-[:`CONTAINS`]->_60869
create _60872-[:`CONTAINS`]->_60871
create _60876-[:`COMPOSED OF`]->_60872
create _60876-[:`COMPOSED OF`]->_60870
create _60876-[:`CONTAINS`]->_60875
create _60876-[:`CONTAINS`]->_60874
create _60876-[:`CONTAINS`]->_60873
create _60876-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60877
create _60876-[:`DEPENDS ON`]->_60950
create _60877-[:`COMPOSED OF`]->_60887
create _60877-[:`COMPOSED OF`]->_60893
create _60877-[:`COMPOSED OF`]->_60891
create _60877-[:`COMPOSED OF`]->_60885
create _60877-[:`COMPOSED OF`]->_60889
create _60877-[:`CONTAINS`]->_60896
create _60877-[:`CONTAINS`]->_60894
create _60877-[:`CONTAINS`]->_60895
create _60877-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_60883
create _60877-[:`DEPENDS ON`]->_60950
create _60879-[:`CONTAINS`]->_60878
create _60883-[:`COMPOSED OF`]->_60879
create _60883-[:`CONTAINS`]->_60880
create _60883-[:`CONTAINS`]->_60881
create _60883-[:`CONTAINS`]->_60882
create _60883-[:`DEPENDS ON`]->_60950
create _60885-[:`CONTAINS`]->_60884
create _60887-[:`CONTAINS`]->_60886
create _60889-[:`CONTAINS`]->_60888
create _60891-[:`CONTAINS`]->_60890
create _60893-[:`CONTAINS`]->_60892
create _60898-[:`CONTAINS`]->_60897
create _60900-[:`CONTAINS`]->_60899
create _60902-[:`CONTAINS`]->_60901
create _60904-[:`CONTAINS`]->_60903
create _60906-[:`COMPOSED OF`]->_60898
create _60906-[:`COMPOSED OF`]->_60902
create _60906-[:`COMPOSED OF`]->_60904
create _60906-[:`COMPOSED OF`]->_60900
create _60906-[:`CONTAINS`]->_60905
create _60908-[:`CONTAINS`]->_60907
create _60910-[:`CONTAINS`]->_60909
create _60914-[:`COMPOSED OF`]->_60910
create _60914-[:`COMPOSED OF`]->_60906
create _60914-[:`COMPOSED OF`]->_60908
create _60914-[:`CONTAINS`]->_60911
create _60914-[:`CONTAINS`]->_60912
create _60914-[:`CONTAINS`]->_60913
create _60914-[:`DEPENDS ON`]->_60950
create _60914-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60877
create _60914-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_60883
create _60916-[:`CONTAINS`]->_60915
create _60918-[:`CONTAINS`]->_60917
create _60922-[:`COMPOSED OF`]->_60918
create _60922-[:`COMPOSED OF`]->_60916
create _60922-[:`CONTAINS`]->_60920
create _60922-[:`CONTAINS`]->_60921
create _60922-[:`CONTAINS`]->_60919
create _60922-[:`DEPENDS ON`]->_60950
create _60922-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60877
create _60924-[:`CONTAINS`]->_60923
create _60926-[:`CONTAINS`]->_60925
create _60928-[:`CONTAINS`]->_60927
create _60932-[:`COMPOSED OF`]->_60926
create _60932-[:`COMPOSED OF`]->_60924
create _60932-[:`COMPOSED OF`]->_60928
create _60932-[:`CONTAINS`]->_60929
create _60932-[:`CONTAINS`]->_60931
create _60932-[:`CONTAINS`]->_60930
create _60932-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_60876
create _60932-[:`DEPENDS ON`]->_60950
create _60932-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60877
create _60933-[:`DEPENDS ON`]->_60950
create _60935-[:`CONTAINS`]->_60934
create _60937-[:`CONTAINS`]->_60936
create _60939-[:`CONTAINS`]->_60938
create _60944-[:`COMPOSED OF`]->_60937
create _60944-[:`COMPOSED OF`]->_60939
create _60944-[:`COMPOSED OF`]->_60935
create _60944-[:`CONTAINS`]->_60941
create _60944-[:`CONTAINS`]->_60940
create _60944-[:`CONTAINS`]->_60942
create _60944-[:`CONTAINS`]->_60943
create _60944-[:`COMPATIBLE WITH`]->_60950
create _60944-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60932
create _60944-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60877
create _60944-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60922
create _60944-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60914
create _60950-[:`CONTAINS`]->_60946
create _60950-[:`CONTAINS`]->_60949
create _60950-[:`CONTAINS`]->_60947
create _60950-[:`CONTAINS`]->_60945
create _60950-[:`CONTAINS`]->_60948
create _60952-[:`CONTAINS`]->_60951
create _60952-[:`DEPENDS ON`]->_61034
create _60954-[:`CONTAINS`]->_60953
create _60956-[:`CONTAINS`]->_60955
create _60960-[:`COMPOSED OF`]->_60954
create _60960-[:`COMPOSED OF`]->_60956
create _60960-[:`CONTAINS`]->_60958
create _60960-[:`CONTAINS`]->_60959
create _60960-[:`CONTAINS`]->_60957
create _60960-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60961
create _60960-[:`DEPENDS ON`]->_61034
create _60961-[:`COMPOSED OF`]->_60973
create _60961-[:`COMPOSED OF`]->_60971
create _60961-[:`COMPOSED OF`]->_60969
create _60961-[:`COMPOSED OF`]->_60975
create _60961-[:`COMPOSED OF`]->_60977
create _60961-[:`CONTAINS`]->_60978
create _60961-[:`CONTAINS`]->_60979
create _60961-[:`CONTAINS`]->_60980
create _60961-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_60967
create _60961-[:`DEPENDS ON`]->_61034
create _60963-[:`CONTAINS`]->_60962
create _60967-[:`COMPOSED OF`]->_60963
create _60967-[:`CONTAINS`]->_60964
create _60967-[:`CONTAINS`]->_60965
create _60967-[:`CONTAINS`]->_60966
create _60967-[:`DEPENDS ON`]->_61034
create _60969-[:`CONTAINS`]->_60968
create _60971-[:`CONTAINS`]->_60970
create _60973-[:`CONTAINS`]->_60972
create _60975-[:`CONTAINS`]->_60974
create _60977-[:`CONTAINS`]->_60976
create _60982-[:`CONTAINS`]->_60981
create _60984-[:`CONTAINS`]->_60983
create _60986-[:`CONTAINS`]->_60985
create _60988-[:`CONTAINS`]->_60987
create _60990-[:`COMPOSED OF`]->_60982
create _60990-[:`COMPOSED OF`]->_60984
create _60990-[:`COMPOSED OF`]->_60986
create _60990-[:`COMPOSED OF`]->_60988
create _60990-[:`CONTAINS`]->_60989
create _60992-[:`CONTAINS`]->_60991
create _60994-[:`CONTAINS`]->_60993
create _60998-[:`COMPOSED OF`]->_60992
create _60998-[:`COMPOSED OF`]->_60994
create _60998-[:`COMPOSED OF`]->_60990
create _60998-[:`CONTAINS`]->_60997
create _60998-[:`CONTAINS`]->_60996
create _60998-[:`CONTAINS`]->_60995
create _60998-[:`DEPENDS ON`]->_61034
create _60998-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_60967
create _60998-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60961
create _61000-[:`CONTAINS`]->_60999
create _61002-[:`CONTAINS`]->_61001
create _61006-[:`COMPOSED OF`]->_61002
create _61006-[:`COMPOSED OF`]->_61000
create _61006-[:`CONTAINS`]->_61003
create _61006-[:`CONTAINS`]->_61005
create _61006-[:`CONTAINS`]->_61004
create _61006-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60961
create _61006-[:`DEPENDS ON`]->_61034
create _61008-[:`CONTAINS`]->_61007
create _61010-[:`CONTAINS`]->_61009
create _61012-[:`CONTAINS`]->_61011
create _61016-[:`COMPOSED OF`]->_61012
create _61016-[:`COMPOSED OF`]->_61008
create _61016-[:`COMPOSED OF`]->_61010
create _61016-[:`CONTAINS`]->_61014
create _61016-[:`CONTAINS`]->_61015
create _61016-[:`CONTAINS`]->_61013
create _61016-[:`DEPENDS ON`]->_61034
create _61016-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_60960
create _61016-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60961
create _61017-[:`DEPENDS ON`]->_61034
create _61019-[:`CONTAINS`]->_61018
create _61021-[:`CONTAINS`]->_61020
create _61023-[:`CONTAINS`]->_61022
create _61028-[:`COMPOSED OF`]->_61023
create _61028-[:`COMPOSED OF`]->_61021
create _61028-[:`COMPOSED OF`]->_61019
create _61028-[:`CONTAINS`]->_61027
create _61028-[:`CONTAINS`]->_61025
create _61028-[:`CONTAINS`]->_61024
create _61028-[:`CONTAINS`]->_61026
create _61028-[:`COMPATIBLE WITH`]->_61034
create _61028-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60998
create _61028-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_61006
create _61028-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_61016
create _61028-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_60961
create _61034-[:`CONTAINS`]->_61029
create _61034-[:`CONTAINS`]->_61033
create _61034-[:`CONTAINS`]->_61030
create _61034-[:`CONTAINS`]->_61032
create _61034-[:`CONTAINS`]->_61031
create _61036-[:`CONTAINS`]->_61035
create _61038-[:`CONTAINS`]->_61037
create _61040-[:`CONTAINS`]->_61039
create _61042-[:`CONTAINS`]->_61041
create _61044-[:`CONTAINS`]->_61043
create _61048-[:`COMPOSED OF`]->_61036
create _61048-[:`COMPOSED OF`]->_61038
create _61048-[:`COMPOSED OF`]->_61040
create _61048-[:`COMPOSED OF`]->_61042
create _61048-[:`COMPOSED OF`]->_61044
create _61048-[:`CONTAINS`]->_61046
create _61048-[:`CONTAINS`]->_61045
create _61048-[:`CONTAINS`]->_61047
create _61048-[:`DEPENDS ON`]->_61118
create _61048-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_61049
create _61049-[:`COMPOSED OF`]->_61051
create _61049-[:`CONTAINS`]->_61054
create _61049-[:`CONTAINS`]->_61053
create _61049-[:`CONTAINS`]->_61052
create _61049-[:`DEPENDS ON`]->_61118
create _61051-[:`CONTAINS`]->_61050
create _61055-[:`DEPENDS ON`]->_61118
create _61057-[:`CONTAINS`]->_61056
create _61059-[:`CONTAINS`]->_61058
create _61061-[:`CONTAINS`]->_61060
create _61065-[:`COMPOSED OF`]->_61061
create _61065-[:`COMPOSED OF`]->_61057
create _61065-[:`COMPOSED OF`]->_61059
create _61065-[:`CONTAINS`]->_61063
create _61065-[:`CONTAINS`]->_61064
create _61065-[:`CONTAINS`]->_61062
create _61065-[:`DEPENDS ON`]->_61118
create _61065-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_61066
create _61065-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_61048
create _61066-[:`COMPOSED OF`]->_61096
create _61066-[:`COMPOSED OF`]->_61098
create _61066-[:`CONTAINS`]->_61100
create _61066-[:`CONTAINS`]->_61099
create _61066-[:`CONTAINS`]->_61101
create _61066-[:`DEPENDS ON`]->_61118
create _61068-[:`CONTAINS`]->_61067
create _61070-[:`CONTAINS`]->_61069
create _61074-[:`COMPOSED OF`]->_61068
create _61074-[:`COMPOSED OF`]->_61070
create _61074-[:`CONTAINS`]->_61071
create _61074-[:`CONTAINS`]->_61072
create _61074-[:`CONTAINS`]->_61073
create _61074-[:`DEPENDS ON`]->_61118
create _61074-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_61048
create _61076-[:`CONTAINS`]->_61075
create _61078-[:`CONTAINS`]->_61077
create _61080-[:`CONTAINS`]->_61079
create _61082-[:`CONTAINS`]->_61081
create _61084-[:`CONTAINS`]->_61083
create _61086-[:`CONTAINS`]->_61085
create _61088-[:`COMPOSED OF`]->_61082
create _61088-[:`COMPOSED OF`]->_61080
create _61088-[:`COMPOSED OF`]->_61086
create _61088-[:`COMPOSED OF`]->_61084
create _61088-[:`CONTAINS`]->_61087
create _61092-[:`COMPOSED OF`]->_61078
create _61092-[:`COMPOSED OF`]->_61076
create _61092-[:`COMPOSED OF`]->_61088
create _61092-[:`CONTAINS`]->_61091
create _61092-[:`CONTAINS`]->_61089
create _61092-[:`CONTAINS`]->_61090
create _61092-[:`DEPENDS ON`]->_61118
create _61092-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_61049
create _61092-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_61048
create _61094-[:`CONTAINS`]->_61093
create _61094-[:`DEPENDS ON`]->_61118
create _61096-[:`CONTAINS`]->_61095
create _61098-[:`CONTAINS`]->_61097
create _61103-[:`CONTAINS`]->_61102
create _61105-[:`CONTAINS`]->_61104
create _61107-[:`CONTAINS`]->_61106
create _61112-[:`COMPOSED OF`]->_61105
create _61112-[:`COMPOSED OF`]->_61103
create _61112-[:`COMPOSED OF`]->_61107
create _61112-[:`CONTAINS`]->_61108
create _61112-[:`CONTAINS`]->_61109
create _61112-[:`CONTAINS`]->_61110
create _61112-[:`CONTAINS`]->_61111
create _61112-[:`COMPATIBLE WITH`]->_61118
create _61112-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_61065
create _61112-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_61074
create _61112-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_61092
create _61112-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_61048
create _61118-[:`CONTAINS`]->_61117
create _61118-[:`CONTAINS`]->_61116
create _61118-[:`CONTAINS`]->_61113
create _61118-[:`CONTAINS`]->_61115
create _61118-[:`CONTAINS`]->_61114
create _61120-[:`CONTAINS`]->_61119
create _61122-[:`CONTAINS`]->_61121
create _61126-[:`COMPOSED OF`]->_61120
create _61126-[:`COMPOSED OF`]->_61122
create _61126-[:`CONTAINS`]->_61125
create _61126-[:`CONTAINS`]->_61123
create _61126-[:`CONTAINS`]->_61124
create _61126-[:`DEPENDS ON`]->_61202
create _61128-[:`CONTAINS`]->_61127
create _61128-[:`DEPENDS ON`]->_61202
create _61130-[:`CONTAINS`]->_61129
create _61132-[:`CONTAINS`]->_61131
create _61134-[:`CONTAINS`]->_61133
create _61136-[:`CONTAINS`]->_61135
create _61138-[:`CONTAINS`]->_61137
create _61140-[:`CONTAINS`]->_61139
create _61142-[:`COMPOSED OF`]->_61136
create _61142-[:`COMPOSED OF`]->_61134
create _61142-[:`COMPOSED OF`]->_61138
create _61142-[:`COMPOSED OF`]->_61140
create _61142-[:`CONTAINS`]->_61141
create _61146-[:`COMPOSED OF`]->_61142
create _61146-[:`COMPOSED OF`]->_61130
create _61146-[:`COMPOSED OF`]->_61132
create _61146-[:`CONTAINS`]->_61145
create _61146-[:`CONTAINS`]->_61143
create _61146-[:`CONTAINS`]->_61144
create _61146-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_61148
create _61146-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_61147
create _61146-[:`DEPENDS ON`]->_61202
create _61147-[:`COMPOSED OF`]->_61182
create _61147-[:`COMPOSED OF`]->_61180
create _61147-[:`COMPOSED OF`]->_61174
create _61147-[:`COMPOSED OF`]->_61178
create _61147-[:`COMPOSED OF`]->_61176
create _61147-[:`CONTAINS`]->_61184
create _61147-[:`CONTAINS`]->_61185
create _61147-[:`CONTAINS`]->_61183
create _61147-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_61148
create _61147-[:`DEPENDS ON`]->_61202
create _61148-[:`COMPOSED OF`]->_61169
create _61148-[:`CONTAINS`]->_61172
create _61148-[:`CONTAINS`]->_61170
create _61148-[:`CONTAINS`]->_61171
create _61148-[:`DEPENDS ON`]->_61202
create _61150-[:`CONTAINS`]->_61149
create _61152-[:`CONTAINS`]->_61151
create _61156-[:`COMPOSED OF`]->_61152
create _61156-[:`COMPOSED OF`]->_61150
create _61156-[:`CONTAINS`]->_61154
create _61156-[:`CONTAINS`]->_61153
create _61156-[:`CONTAINS`]->_61155
create _61156-[:`DEPENDS ON`]->_61202
create _61156-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_61147
create _61158-[:`CONTAINS`]->_61157
create _61160-[:`CONTAINS`]->_61159
create _61162-[:`CONTAINS`]->_61161
create _61166-[:`COMPOSED OF`]->_61162
create _61166-[:`COMPOSED OF`]->_61160
create _61166-[:`COMPOSED OF`]->_61158
create _61166-[:`CONTAINS`]->_61165
create _61166-[:`CONTAINS`]->_61163
create _61166-[:`CONTAINS`]->_61164
create _61166-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_61147
create _61166-[:`DEPENDS ON`]->_61202
create _61166-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_61126
create _61167-[:`CONTAINS`]->_61205
create _61167-[:`CONTAINS`]->_61206
create _61167-[:`CONTAINS`]->_61207
create _61167-[:`CONTAINS`]->_61208
create _61167-[:`CONTAINS`]->_61209
create _61167-[:`CONTAINS`]->_61210
create _61167-[:`DEPENDS ON`]->_61202
create _61169-[:`CONTAINS`]->_61168
create _61174-[:`CONTAINS`]->_61173
create _61176-[:`CONTAINS`]->_61175
create _61178-[:`CONTAINS`]->_61177
create _61180-[:`CONTAINS`]->_61179
create _61182-[:`CONTAINS`]->_61181
create _61187-[:`CONTAINS`]->_61186
create _61189-[:`CONTAINS`]->_61188
create _61191-[:`CONTAINS`]->_61190
create _61196-[:`COMPOSED OF`]->_61187
create _61196-[:`COMPOSED OF`]->_61191
create _61196-[:`COMPOSED OF`]->_61189
create _61196-[:`CONTAINS`]->_61194
create _61196-[:`CONTAINS`]->_61193
create _61196-[:`CONTAINS`]->_61195
create _61196-[:`CONTAINS`]->_61192
create _61196-[:`COMPATIBLE WITH`]->_61202
create _61196-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_61146
create _61196-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_61166
create _61196-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_61147
create _61196-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_61156
create _61202-[:`CONTAINS`]->_61197
create _61202-[:`CONTAINS`]->_61199
create _61202-[:`CONTAINS`]->_61198
create _61202-[:`CONTAINS`]->_61201
create _61202-[:`CONTAINS`]->_61200
create _61203-[:`COMPATIBLE WITH`]->_61118
create _61204-[:`COMPATIBLE WITH`]->_61202
;
commit
