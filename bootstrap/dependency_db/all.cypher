begin
create (_65411:`FileNode` {`nID`:1, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.0"})
create (_65412:`Module` {`nID`:2, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.0"})
create (_65413:`FileNode` {`nID`:3, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_65414:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:4, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_65415:`FileNode` {`nID`:5, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_65416:`FileNode` {`nID`:6, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_65417:`FileNode` {`nID`:7, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_65418:`Module` {`nID`:8, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_65419:`FileNode` {`nID`:9, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.0"})
create (_65420:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:10, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_65421:`FileNode` {`nID`:11, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.0"})
create (_65422:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:12, `name`:"idmwat", `order`:2, `version`:"0.5.0"})
create (_65423:`FileNode` {`nID`:13, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.0"})
create (_65424:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:14, `name`:"wab", `order`:3, `version`:"0.5.0"})
create (_65425:`FileNode` {`nID`:15, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.0"})
create (_65426:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:16, `name`:"wat", `order`:4, `version`:"0.5.0"})
create (_65427:`FileNode` {`nID`:17, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.0"})
create (_65428:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:18, `name`:"wresources", `order`:5, `version`:"0.5.0"})
create (_65429:`FileNode` {`nID`:19, `name`:"ariane.community.core.portal-0.5.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_65430:`FileNode` {`nID`:20, `name`:"net.echinopsii.ariane.community.core.portal_0.5.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_65431:`FileNode` {`nID`:21, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.0"})
create (_65432:`Module` {`nID`:22, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.0"})
create (_65433:`FileNode` {`nID`:23, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.0"})
create (_65434:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:24, `name`:"api", `order`:1, `version`:"0.5.0"})
create (_65435:`FileNode` {`nID`:25, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.0"})
create (_65436:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:26, `name`:"blueprints", `order`:2, `version`:"0.5.0"})
create (_65437:`FileNode` {`nID`:27, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.0"})
create (_65438:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:28, `name`:"dsl", `order`:3, `version`:"0.5.0"})
create (_65439:`FileNode` {`nID`:29, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.0"})
create (_65440:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:30, `name`:"rim", `order`:4, `version`:"0.5.0"})
create (_65441:`FileNode` {`nID`:31, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.0"})
create (_65442:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:32, `name`:"ds", `order`:5, `version`:"0.5.0"})
create (_65443:`FileNode` {`nID`:33, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.0"})
create (_65444:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:34, `name`:"taitale", `order`:6, `version`:"0.5.0"})
create (_65445:`FileNode` {`nID`:35, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.0"})
create (_65446:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:36, `name`:"wat", `order`:7, `version`:"0.5.0"})
create (_65447:`FileNode` {`nID`:37, `name`:"ariane.community.core.mapping-0.5.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_65448:`FileNode` {`nID`:38, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_65449:`FileNode` {`nID`:39, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.0"})
create (_65450:`Module` {`nID`:40, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.0"})
create (_65451:`FileNode` {`nID`:41, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.0"})
create (_65452:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:42, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_65453:`FileNode` {`nID`:43, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.0"})
create (_65454:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:44, `name`:"wat", `order`:2, `version`:"0.5.0"})
create (_65455:`FileNode` {`nID`:45, `name`:"ariane.community.core.directory-0.5.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_65456:`FileNode` {`nID`:46, `name`:"net.echinopsii.ariane.community.core.directory_0.5.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_65457:`FileNode` {`nID`:47, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.0"})
create (_65458:`Module` {`nID`:48, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.0"})
create (_65459:`FileNode` {`nID`:49, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.0"})
create (_65460:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:50, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_65461:`FileNode` {`nID`:51, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.0"})
create (_65462:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:52, `name`:"wat", `order`:2, `version`:"0.5.0"})
create (_65463:`FileNode` {`nID`:53, `name`:"ariane.community.core.injector-0.5.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_65464:`FileNode` {`nID`:54, `name`:"net.echinopsii.ariane.community.core.injector_0.5.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_65465:`FileNode` {`nID`:55, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.0"})
create (_65466:`Module` {`nID`:56, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.0"})
create (_65467:`Module` {`nID`:57, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.0"})
create (_65468:`FileNode` {`nID`:58, `name`:"ariane.community.distrib-0.5.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.0"})
create (_65469:`FileNode` {`nID`:59, `name`:"pom-ariane.community.distrib-0.5.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.0"})
create (_65470:`FileNode` {`nID`:60, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.0"})
create (_65471:`FileNode` {`nID`:61, `name`:"ariane.community.plugins-distrib-0.5.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.0"})
create (_65472:`FileNode` {`nID`:62, `name`:"ariane.community.git.repos-0.5.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.0"})
create (_65473:`Distribution` {`editable`:"false", `nID`:63, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.5.0"})
create (_65474:`FileNode` {`nID`:64, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.1"})
create (_65475:`Module` {`nID`:65, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.1"})
create (_65476:`FileNode` {`nID`:66, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_65477:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:67, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_65478:`FileNode` {`nID`:68, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_65479:`FileNode` {`nID`:69, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_65480:`FileNode` {`nID`:70, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_65481:`Module` {`nID`:71, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_65482:`FileNode` {`nID`:72, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_65483:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:73, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_65484:`FileNode` {`nID`:74, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_65485:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:75, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_65486:`FileNode` {`nID`:76, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_65487:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:77, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_65488:`FileNode` {`nID`:78, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_65489:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:79, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_65490:`FileNode` {`nID`:80, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_65491:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:81, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_65492:`FileNode` {`nID`:82, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_65493:`FileNode` {`nID`:83, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_65494:`FileNode` {`nID`:84, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_65495:`Module` {`nID`:85, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_65496:`FileNode` {`nID`:86, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.1"})
create (_65497:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:87, `name`:"api", `order`:1, `version`:"0.5.1"})
create (_65498:`FileNode` {`nID`:88, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.1"})
create (_65499:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:89, `name`:"blueprints", `order`:2, `version`:"0.5.1"})
create (_65500:`FileNode` {`nID`:90, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.1"})
create (_65501:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:91, `name`:"dsl", `order`:3, `version`:"0.5.1"})
create (_65502:`FileNode` {`nID`:92, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.1"})
create (_65503:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:93, `name`:"rim", `order`:4, `version`:"0.5.1"})
create (_65504:`FileNode` {`nID`:94, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.1"})
create (_65505:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:95, `name`:"ds", `order`:5, `version`:"0.5.1"})
create (_65506:`FileNode` {`nID`:96, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.1"})
create (_65507:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:97, `name`:"taitale", `order`:6, `version`:"0.5.1"})
create (_65508:`FileNode` {`nID`:98, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.1"})
create (_65509:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:99, `name`:"wat", `order`:7, `version`:"0.5.1"})
create (_65510:`FileNode` {`nID`:100, `name`:"ariane.community.core.mapping-0.5.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_65511:`FileNode` {`nID`:101, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_65512:`FileNode` {`nID`:102, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.1"})
create (_65513:`Module` {`nID`:103, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.1"})
create (_65514:`FileNode` {`nID`:104, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_65515:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:105, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_65516:`FileNode` {`nID`:106, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_65517:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:107, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_65518:`FileNode` {`nID`:108, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_65519:`FileNode` {`nID`:109, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_65520:`FileNode` {`nID`:110, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_65521:`Module` {`nID`:111, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_65522:`FileNode` {`nID`:112, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.1"})
create (_65523:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:113, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_65524:`FileNode` {`nID`:114, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.1"})
create (_65525:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:115, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_65526:`FileNode` {`nID`:116, `name`:"ariane.community.core.injector-0.5.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_65527:`FileNode` {`nID`:117, `name`:"net.echinopsii.ariane.community.core.injector_0.5.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_65528:`FileNode` {`nID`:118, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.1"})
create (_65529:`Module` {`nID`:119, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.1"})
create (_65530:`Module` {`nID`:120, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.1"})
create (_65531:`FileNode` {`nID`:121, `name`:"ariane.community.distrib-0.5.1.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.1"})
create (_65532:`FileNode` {`nID`:122, `name`:"pom-ariane.community.distrib-0.5.1.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.1"})
create (_65533:`FileNode` {`nID`:123, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.1"})
create (_65534:`FileNode` {`nID`:124, `name`:"ariane.community.plugins-distrib-0.5.1.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.1"})
create (_65535:`FileNode` {`nID`:125, `name`:"ariane.community.git.repos-0.5.1.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.1"})
create (_65536:`Distribution` {`editable`:"false", `nID`:126, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.5.1"})
create (_65537:`FileNode` {`nID`:127, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.2"})
create (_65538:`Module` {`nID`:128, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.2"})
create (_65539:`FileNode` {`nID`:129, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_65540:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:130, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_65541:`FileNode` {`nID`:131, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_65542:`FileNode` {`nID`:132, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_65543:`FileNode` {`nID`:133, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_65544:`Module` {`nID`:134, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_65545:`FileNode` {`nID`:135, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_65546:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:136, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_65547:`FileNode` {`nID`:137, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_65548:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:138, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_65549:`FileNode` {`nID`:139, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_65550:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:140, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_65551:`FileNode` {`nID`:141, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_65552:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:142, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_65553:`FileNode` {`nID`:143, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_65554:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:144, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_65555:`FileNode` {`nID`:145, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_65556:`FileNode` {`nID`:146, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_65557:`FileNode` {`nID`:147, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_65558:`Module` {`nID`:148, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_65559:`FileNode` {`nID`:149, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.1"})
create (_65560:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:150, `name`:"api", `order`:1, `version`:"0.5.1"})
create (_65561:`FileNode` {`nID`:151, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.1"})
create (_65562:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:152, `name`:"blueprints", `order`:2, `version`:"0.5.1"})
create (_65563:`FileNode` {`nID`:153, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.1"})
create (_65564:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:154, `name`:"dsl", `order`:3, `version`:"0.5.1"})
create (_65565:`FileNode` {`nID`:155, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.1"})
create (_65566:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:156, `name`:"rim", `order`:4, `version`:"0.5.1"})
create (_65567:`FileNode` {`nID`:157, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.1"})
create (_65568:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:158, `name`:"ds", `order`:5, `version`:"0.5.1"})
create (_65569:`FileNode` {`nID`:159, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.1"})
create (_65570:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:160, `name`:"taitale", `order`:6, `version`:"0.5.1"})
create (_65571:`FileNode` {`nID`:161, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.1"})
create (_65572:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:162, `name`:"wat", `order`:7, `version`:"0.5.1"})
create (_65573:`FileNode` {`nID`:163, `name`:"ariane.community.core.mapping-0.5.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_65574:`FileNode` {`nID`:164, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_65575:`FileNode` {`nID`:165, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.1"})
create (_65576:`Module` {`nID`:166, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.1"})
create (_65577:`FileNode` {`nID`:167, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_65578:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:168, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_65579:`FileNode` {`nID`:169, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_65580:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:170, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_65581:`FileNode` {`nID`:171, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_65582:`FileNode` {`nID`:172, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_65583:`FileNode` {`nID`:173, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_65584:`Module` {`nID`:174, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_65585:`FileNode` {`nID`:175, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.2"})
create (_65586:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:176, `name`:"base", `order`:1, `version`:"0.5.2"})
create (_65587:`FileNode` {`nID`:177, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.2"})
create (_65588:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:178, `name`:"wat", `order`:2, `version`:"0.5.2"})
create (_65589:`FileNode` {`nID`:179, `name`:"ariane.community.core.injector-0.5.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_65590:`FileNode` {`nID`:180, `name`:"net.echinopsii.ariane.community.core.injector_0.5.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_65591:`FileNode` {`nID`:181, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.2"})
create (_65592:`Module` {`nID`:182, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.2"})
create (_65593:`Module` {`nID`:183, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.2"})
create (_65594:`FileNode` {`nID`:184, `name`:"ariane.community.distrib-0.5.2.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.2"})
create (_65595:`FileNode` {`nID`:185, `name`:"pom-ariane.community.distrib-0.5.2.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.2"})
create (_65596:`FileNode` {`nID`:186, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.2"})
create (_65597:`FileNode` {`nID`:187, `name`:"ariane.community.plugins-distrib-0.5.2.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.2"})
create (_65598:`FileNode` {`nID`:188, `name`:"ariane.community.git.repos-0.5.2.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.2"})
create (_65599:`Distribution` {`editable`:"false", `nID`:189, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.5.2"})
create (_65600:`FileNode` {`nID`:190, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.3"})
create (_65601:`Module` {`nID`:191, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.3"})
create (_65602:`FileNode` {`nID`:192, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_65603:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:193, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_65604:`FileNode` {`nID`:194, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_65605:`FileNode` {`nID`:195, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_65606:`FileNode` {`nID`:196, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_65607:`Module` {`nID`:197, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_65608:`FileNode` {`nID`:198, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_65609:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:199, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_65610:`FileNode` {`nID`:200, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_65611:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:201, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_65612:`FileNode` {`nID`:202, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_65613:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:203, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_65614:`FileNode` {`nID`:204, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_65615:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:205, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_65616:`FileNode` {`nID`:206, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_65617:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:207, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_65618:`FileNode` {`nID`:208, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_65619:`FileNode` {`nID`:209, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_65620:`FileNode` {`nID`:210, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_65621:`Module` {`nID`:211, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_65622:`FileNode` {`nID`:212, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.2"})
create (_65623:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:213, `name`:"api", `order`:1, `version`:"0.5.2"})
create (_65624:`FileNode` {`nID`:214, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.2"})
create (_65625:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:215, `name`:"blueprints", `order`:2, `version`:"0.5.2"})
create (_65626:`FileNode` {`nID`:216, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.2"})
create (_65627:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:217, `name`:"dsl", `order`:3, `version`:"0.5.2"})
create (_65628:`FileNode` {`nID`:218, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.2"})
create (_65629:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:219, `name`:"rim", `order`:4, `version`:"0.5.2"})
create (_65630:`FileNode` {`nID`:220, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.2"})
create (_65631:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:221, `name`:"ds", `order`:5, `version`:"0.5.2"})
create (_65632:`FileNode` {`nID`:222, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.2"})
create (_65633:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:223, `name`:"taitale", `order`:6, `version`:"0.5.2"})
create (_65634:`FileNode` {`nID`:224, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.2"})
create (_65635:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:225, `name`:"wat", `order`:7, `version`:"0.5.2"})
create (_65636:`FileNode` {`nID`:226, `name`:"ariane.community.core.mapping-0.5.2.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_65637:`FileNode` {`nID`:227, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.2.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_65638:`FileNode` {`nID`:228, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.2"})
create (_65639:`Module` {`nID`:229, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.2"})
create (_65640:`FileNode` {`nID`:230, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_65641:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:231, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_65642:`FileNode` {`nID`:232, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_65643:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:233, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_65644:`FileNode` {`nID`:234, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_65645:`FileNode` {`nID`:235, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_65646:`FileNode` {`nID`:236, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_65647:`Module` {`nID`:237, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_65648:`FileNode` {`nID`:238, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.2"})
create (_65649:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:239, `name`:"base", `order`:1, `version`:"0.5.2"})
create (_65650:`FileNode` {`nID`:240, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.2"})
create (_65651:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:241, `name`:"wat", `order`:2, `version`:"0.5.2"})
create (_65652:`FileNode` {`nID`:242, `name`:"ariane.community.core.injector-0.5.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_65653:`FileNode` {`nID`:243, `name`:"net.echinopsii.ariane.community.core.injector_0.5.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_65654:`FileNode` {`nID`:244, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.2"})
create (_65655:`Module` {`nID`:245, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.2"})
create (_65656:`Module` {`nID`:246, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.2"})
create (_65657:`FileNode` {`nID`:247, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.1.0"})
create (_65658:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:248, `name`:"directory", `order`:1, `version`:"0.1.0"})
create (_65659:`FileNode` {`nID`:249, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.1.0"})
create (_65660:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:250, `name`:"jsonparser", `order`:2, `version`:"0.1.0"})
create (_65661:`FileNode` {`nID`:251, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.1.0"})
create (_65662:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:252, `name`:"injector", `order`:3, `version`:"0.1.0"})
create (_65663:`FileNode` {`nID`:253, `name`:"ariane.community.plugin.rabbitmq-0.1.0.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_65664:`FileNode` {`nID`:254, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.1.0.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.1.0"})
create (_65665:`FileNode` {`nID`:255, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_65666:`FileNode` {`nID`:256, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.1.0"})
create (_65667:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:257, `name`:"rabbitmq", `version`:"0.1.0"})
create (_65668:`FileNode` {`nID`:258, `name`:"ariane.community.distrib-0.5.3.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.3"})
create (_65669:`FileNode` {`nID`:259, `name`:"pom-ariane.community.distrib-0.5.3.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.3"})
create (_65670:`FileNode` {`nID`:260, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.3"})
create (_65671:`FileNode` {`nID`:261, `name`:"ariane.community.plugins-distrib-0.5.3.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.3"})
create (_65672:`FileNode` {`nID`:262, `name`:"ariane.community.git.repos-0.5.3.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.3"})
create (_65673:`Distribution` {`editable`:"false", `nID`:263, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.5.3"})
create (_65674:`FileNode` {`nID`:264, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.0"})
create (_65675:`Module` {`nID`:265, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.0"})
create (_65676:`FileNode` {`nID`:266, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_65677:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:267, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_65678:`FileNode` {`nID`:268, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_65679:`FileNode` {`nID`:269, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_65680:`FileNode` {`nID`:270, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_65681:`Module` {`nID`:271, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_65682:`FileNode` {`nID`:272, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.0"})
create (_65683:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:273, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_65684:`FileNode` {`nID`:274, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.0"})
create (_65685:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:275, `name`:"wat", `order`:2, `version`:"0.6.0"})
create (_65686:`FileNode` {`nID`:276, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.0"})
create (_65687:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:277, `name`:"idmwat", `order`:3, `version`:"0.6.0"})
create (_65688:`FileNode` {`nID`:278, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.0"})
create (_65689:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:279, `name`:"wab", `order`:4, `version`:"0.6.0"})
create (_65690:`FileNode` {`nID`:280, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.0"})
create (_65691:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:281, `name`:"wresources", `order`:5, `version`:"0.6.0"})
create (_65692:`FileNode` {`nID`:282, `name`:"ariane.community.core.portal-0.6.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_65693:`FileNode` {`nID`:283, `name`:"net.echinopsii.ariane.community.core.portal_0.6.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_65694:`FileNode` {`nID`:284, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.0"})
create (_65695:`Module` {`nID`:285, `name`:"portal", `order`:3, `type`:"core", `version`:"0.6.0"})
create (_65696:`FileNode` {`nID`:286, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.0"})
create (_65697:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:287, `name`:"api", `order`:1, `version`:"0.6.0"})
create (_65698:`FileNode` {`nID`:288, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.0"})
create (_65699:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:289, `name`:"blueprints", `order`:2, `version`:"0.6.0"})
create (_65700:`FileNode` {`nID`:290, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.0"})
create (_65701:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:291, `name`:"rim", `order`:3, `version`:"0.6.0"})
create (_65702:`FileNode` {`nID`:292, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.0"})
create (_65703:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:293, `name`:"dsl", `order`:4, `version`:"0.6.0"})
create (_65704:`FileNode` {`nID`:294, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.0"})
create (_65705:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:295, `name`:"ds", `order`:5, `version`:"0.6.0"})
create (_65706:`FileNode` {`nID`:296, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.0"})
create (_65707:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:297, `name`:"wat", `order`:6, `version`:"0.6.0"})
create (_65708:`FileNode` {`nID`:298, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.0"})
create (_65709:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:299, `name`:"taitale", `order`:7, `version`:"0.6.0"})
create (_65710:`FileNode` {`nID`:300, `name`:"ariane.community.core.mapping-0.6.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_65711:`FileNode` {`nID`:301, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_65712:`FileNode` {`nID`:302, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.0"})
create (_65713:`Module` {`nID`:303, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.6.0"})
create (_65714:`FileNode` {`nID`:304, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.0"})
create (_65715:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:305, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_65716:`FileNode` {`nID`:306, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.0"})
create (_65717:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:307, `name`:"wat", `order`:2, `version`:"0.6.0"})
create (_65718:`FileNode` {`nID`:308, `name`:"ariane.community.core.directory-0.6.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_65719:`FileNode` {`nID`:309, `name`:"net.echinopsii.ariane.community.core.directory_0.6.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_65720:`FileNode` {`nID`:310, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.0"})
create (_65721:`Module` {`nID`:311, `name`:"directory", `order`:5, `type`:"core", `version`:"0.6.0"})
create (_65722:`FileNode` {`nID`:312, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.0"})
create (_65723:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:313, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_65724:`FileNode` {`nID`:314, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.0"})
create (_65725:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:315, `name`:"messaging", `order`:2, `version`:"0.6.0"})
create (_65726:`FileNode` {`nID`:316, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.0"})
create (_65727:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:317, `name`:"wat", `order`:3, `version`:"0.6.0"})
create (_65728:`FileNode` {`nID`:318, `name`:"ariane.community.core.injector-0.6.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_65729:`FileNode` {`nID`:319, `name`:"net.echinopsii.ariane.community.core.injector_0.6.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_65730:`FileNode` {`nID`:320, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.0"})
create (_65731:`Module` {`nID`:321, `name`:"injector", `order`:6, `type`:"core", `version`:"0.6.0"})
create (_65732:`Module` {`nID`:322, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.6.0"})
create (_65733:`FileNode` {`nID`:323, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.0"})
create (_65734:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:324, `name`:"directory", `order`:1, `version`:"0.2.0"})
create (_65735:`FileNode` {`nID`:325, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.0"})
create (_65736:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:326, `name`:"jsonparser", `order`:2, `version`:"0.2.0"})
create (_65737:`FileNode` {`nID`:327, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.0"})
create (_65738:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:328, `name`:"injector", `order`:3, `version`:"0.2.0"})
create (_65739:`FileNode` {`nID`:329, `name`:"ariane.community.plugin.rabbitmq-0.2.0.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.0"})
create (_65740:`FileNode` {`nID`:330, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.0.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.0"})
create (_65741:`FileNode` {`nID`:331, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.0"})
create (_65742:`FileNode` {`nID`:332, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.0"})
create (_65743:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:333, `name`:"rabbitmq", `version`:"0.2.0"})
create (_65744:`FileNode` {`nID`:334, `name`:"ariane.community.distrib-0.6.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.0"})
create (_65745:`FileNode` {`nID`:335, `name`:"pom-ariane.community.distrib-0.6.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.0"})
create (_65746:`FileNode` {`nID`:336, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.0"})
create (_65747:`FileNode` {`nID`:337, `name`:"ariane.community.plugins-distrib-0.6.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.0"})
create (_65748:`FileNode` {`nID`:338, `name`:"ariane.community.git.repos-0.6.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.0"})
create (_65749:`Distribution` {`editable`:"false", `nID`:339, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.6.0"})
create (_65750:`FileNode` {`nID`:340, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.1"})
create (_65751:`Module` {`nID`:341, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.1"})
create (_65752:`FileNode` {`nID`:342, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_65753:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:343, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_65754:`FileNode` {`nID`:344, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_65755:`FileNode` {`nID`:345, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_65756:`FileNode` {`nID`:346, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_65757:`Module` {`nID`:347, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_65758:`FileNode` {`nID`:348, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.1"})
create (_65759:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:349, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_65760:`FileNode` {`nID`:350, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.1"})
create (_65761:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:351, `name`:"wat", `order`:2, `version`:"0.6.1"})
create (_65762:`FileNode` {`nID`:352, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.1"})
create (_65763:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:353, `name`:"idmwat", `order`:3, `version`:"0.6.1"})
create (_65764:`FileNode` {`nID`:354, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.1"})
create (_65765:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:355, `name`:"wab", `order`:4, `version`:"0.6.1"})
create (_65766:`FileNode` {`nID`:356, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.1"})
create (_65767:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:357, `name`:"wresources", `order`:5, `version`:"0.6.1"})
create (_65768:`FileNode` {`nID`:358, `name`:"ariane.community.core.portal-0.6.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_65769:`FileNode` {`nID`:359, `name`:"net.echinopsii.ariane.community.core.portal_0.6.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_65770:`FileNode` {`nID`:360, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.1"})
create (_65771:`Module` {`nID`:361, `name`:"portal", `order`:3, `type`:"core", `version`:"0.6.1"})
create (_65772:`FileNode` {`nID`:362, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.1"})
create (_65773:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:363, `name`:"api", `order`:1, `version`:"0.6.1"})
create (_65774:`FileNode` {`nID`:364, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.1"})
create (_65775:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:365, `name`:"blueprints", `order`:2, `version`:"0.6.1"})
create (_65776:`FileNode` {`nID`:366, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.1"})
create (_65777:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:367, `name`:"rim", `order`:3, `version`:"0.6.1"})
create (_65778:`FileNode` {`nID`:368, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.1"})
create (_65779:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:369, `name`:"dsl", `order`:4, `version`:"0.6.1"})
create (_65780:`FileNode` {`nID`:370, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.1"})
create (_65781:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:371, `name`:"ds", `order`:5, `version`:"0.6.1"})
create (_65782:`FileNode` {`nID`:372, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.1"})
create (_65783:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:373, `name`:"wat", `order`:6, `version`:"0.6.1"})
create (_65784:`FileNode` {`nID`:374, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.1"})
create (_65785:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:375, `name`:"taitale", `order`:7, `version`:"0.6.1"})
create (_65786:`FileNode` {`nID`:376, `name`:"ariane.community.core.mapping-0.6.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_65787:`FileNode` {`nID`:377, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_65788:`FileNode` {`nID`:378, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.1"})
create (_65789:`Module` {`nID`:379, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.6.1"})
create (_65790:`FileNode` {`nID`:380, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.1"})
create (_65791:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:381, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_65792:`FileNode` {`nID`:382, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.1"})
create (_65793:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:383, `name`:"wat", `order`:2, `version`:"0.6.1"})
create (_65794:`FileNode` {`nID`:384, `name`:"ariane.community.core.directory-0.6.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_65795:`FileNode` {`nID`:385, `name`:"net.echinopsii.ariane.community.core.directory_0.6.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_65796:`FileNode` {`nID`:386, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.1"})
create (_65797:`Module` {`nID`:387, `name`:"directory", `order`:5, `type`:"core", `version`:"0.6.1"})
create (_65798:`FileNode` {`nID`:388, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.1"})
create (_65799:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:389, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_65800:`FileNode` {`nID`:390, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.1"})
create (_65801:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:391, `name`:"messaging", `order`:2, `version`:"0.6.1"})
create (_65802:`FileNode` {`nID`:392, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.1"})
create (_65803:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:393, `name`:"wat", `order`:3, `version`:"0.6.1"})
create (_65804:`FileNode` {`nID`:394, `name`:"ariane.community.core.injector-0.6.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_65805:`FileNode` {`nID`:395, `name`:"net.echinopsii.ariane.community.core.injector_0.6.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_65806:`FileNode` {`nID`:396, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.1"})
create (_65807:`Module` {`nID`:397, `name`:"injector", `order`:6, `type`:"core", `version`:"0.6.1"})
create (_65808:`Module` {`nID`:398, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.6.1"})
create (_65809:`FileNode` {`nID`:399, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.1"})
create (_65810:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:400, `name`:"directory", `order`:1, `version`:"0.2.1"})
create (_65811:`FileNode` {`nID`:401, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.1"})
create (_65812:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:402, `name`:"jsonparser", `order`:2, `version`:"0.2.1"})
create (_65813:`FileNode` {`nID`:403, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.1"})
create (_65814:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:404, `name`:"injector", `order`:3, `version`:"0.2.1"})
create (_65815:`FileNode` {`nID`:405, `name`:"ariane.community.plugin.rabbitmq-0.2.1.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.1"})
create (_65816:`FileNode` {`nID`:406, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.1.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.1"})
create (_65817:`FileNode` {`nID`:407, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.1"})
create (_65818:`FileNode` {`nID`:408, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.1"})
create (_65819:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:409, `name`:"rabbitmq", `version`:"0.2.1"})
create (_65820:`FileNode` {`nID`:410, `name`:"ariane.community.distrib-0.6.1.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.1"})
create (_65821:`FileNode` {`nID`:411, `name`:"pom-ariane.community.distrib-0.6.1.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.1"})
create (_65822:`FileNode` {`nID`:412, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.1"})
create (_65823:`FileNode` {`nID`:413, `name`:"ariane.community.plugins-distrib-0.6.1.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.1"})
create (_65824:`FileNode` {`nID`:414, `name`:"ariane.community.git.repos-0.6.1.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.1"})
create (_65825:`Distribution` {`editable`:"false", `nID`:415, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.6.1"})
create (_65826:`FileNode` {`nID`:416, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.2"})
create (_65827:`Module` {`nID`:417, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.2"})
create (_65828:`FileNode` {`nID`:418, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_65829:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:419, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_65830:`FileNode` {`nID`:420, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_65831:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:421, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_65832:`FileNode` {`nID`:422, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_65833:`FileNode` {`nID`:423, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_65834:`FileNode` {`nID`:424, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_65835:`Module` {`nID`:425, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_65836:`Module` {`nID`:426, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.2"})
create (_65837:`FileNode` {`nID`:427, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.1"})
create (_65838:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:428, `name`:"base", `order`:1, `version`:"0.4.1"})
create (_65839:`FileNode` {`nID`:429, `name`:"ariane.community.core.idm-0.4.1.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.1"})
create (_65840:`FileNode` {`nID`:430, `name`:"net.echinopsii.ariane.community.core.idm_0.4.1.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.1"})
create (_65841:`FileNode` {`nID`:431, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.1"})
create (_65842:`Module` {`nID`:432, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.1"})
create (_65843:`FileNode` {`nID`:433, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.2"})
create (_65844:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:434, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_65845:`FileNode` {`nID`:435, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.2"})
create (_65846:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:436, `name`:"wat", `order`:2, `version`:"0.6.2"})
create (_65847:`FileNode` {`nID`:437, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.2"})
create (_65848:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:438, `name`:"idmwat", `order`:3, `version`:"0.6.2"})
create (_65849:`FileNode` {`nID`:439, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.2"})
create (_65850:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:440, `name`:"wab", `order`:4, `version`:"0.6.2"})
create (_65851:`FileNode` {`nID`:441, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.2"})
create (_65852:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:442, `name`:"wresources", `order`:5, `version`:"0.6.2"})
create (_65853:`FileNode` {`nID`:443, `name`:"ariane.community.core.portal-0.6.2.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_65854:`FileNode` {`nID`:444, `name`:"net.echinopsii.ariane.community.core.portal_0.6.2.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_65855:`FileNode` {`nID`:445, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.2"})
create (_65856:`FileNode` {`nID`:446, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.2"})
create (_65857:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:447, `name`:"api", `order`:1, `version`:"0.6.2"})
create (_65858:`FileNode` {`nID`:448, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.2"})
create (_65859:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:449, `name`:"blueprints", `order`:2, `version`:"0.6.2"})
create (_65860:`FileNode` {`nID`:450, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.2"})
create (_65861:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:451, `name`:"rim", `order`:3, `version`:"0.6.2"})
create (_65862:`FileNode` {`nID`:452, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.2"})
create (_65863:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:453, `name`:"dsl", `order`:4, `version`:"0.6.2"})
create (_65864:`FileNode` {`nID`:454, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.2"})
create (_65865:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:455, `name`:"ds", `order`:5, `version`:"0.6.2"})
create (_65866:`FileNode` {`nID`:456, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.2"})
create (_65867:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:457, `name`:"wat", `order`:6, `version`:"0.6.2"})
create (_65868:`FileNode` {`nID`:458, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.2"})
create (_65869:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:459, `name`:"taitale", `order`:7, `version`:"0.6.2"})
create (_65870:`FileNode` {`nID`:460, `name`:"ariane.community.core.mapping-0.6.2.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_65871:`FileNode` {`nID`:461, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.2.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_65872:`FileNode` {`nID`:462, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.2"})
create (_65873:`Module` {`nID`:463, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.2"})
create (_65874:`FileNode` {`nID`:464, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.2"})
create (_65875:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:465, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_65876:`FileNode` {`nID`:466, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.2"})
create (_65877:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:467, `name`:"wat", `order`:2, `version`:"0.6.2"})
create (_65878:`FileNode` {`nID`:468, `name`:"ariane.community.core.directory-0.6.2.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_65879:`FileNode` {`nID`:469, `name`:"net.echinopsii.ariane.community.core.directory_0.6.2.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_65880:`FileNode` {`nID`:470, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.2"})
create (_65881:`Module` {`nID`:471, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.2"})
create (_65882:`FileNode` {`nID`:472, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.2"})
create (_65883:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:473, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_65884:`FileNode` {`nID`:474, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.2"})
create (_65885:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:475, `name`:"messaging", `order`:2, `version`:"0.6.2"})
create (_65886:`FileNode` {`nID`:476, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.2"})
create (_65887:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:477, `name`:"wat", `order`:3, `version`:"0.6.2"})
create (_65888:`FileNode` {`nID`:478, `name`:"ariane.community.core.injector-0.6.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_65889:`FileNode` {`nID`:479, `name`:"net.echinopsii.ariane.community.core.injector_0.6.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_65890:`FileNode` {`nID`:480, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.2"})
create (_65891:`Module` {`nID`:481, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.2"})
create (_65892:`Module` {`nID`:482, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.2"})
create (_65893:`FileNode` {`nID`:483, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.2"})
create (_65894:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:484, `name`:"directory", `order`:1, `version`:"0.2.2"})
create (_65895:`FileNode` {`nID`:485, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.2"})
create (_65896:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:486, `name`:"jsonparser", `order`:2, `version`:"0.2.2"})
create (_65897:`FileNode` {`nID`:487, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.2"})
create (_65898:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:488, `name`:"injector", `order`:3, `version`:"0.2.2"})
create (_65899:`FileNode` {`nID`:489, `name`:"ariane.community.plugin.rabbitmq-0.2.2.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.2"})
create (_65900:`FileNode` {`nID`:490, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.2.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.2"})
create (_65901:`FileNode` {`nID`:491, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.2"})
create (_65902:`FileNode` {`nID`:492, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.2"})
create (_65903:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:493, `name`:"rabbitmq", `version`:"0.2.2"})
create (_65904:`FileNode` {`nID`:494, `name`:"ariane.community.distrib-0.6.2.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.2"})
create (_65905:`FileNode` {`nID`:495, `name`:"pom-ariane.community.distrib-0.6.2.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.2"})
create (_65906:`FileNode` {`nID`:496, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.2"})
create (_65907:`FileNode` {`nID`:497, `name`:"ariane.community.plugins-distrib-0.6.2.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.2"})
create (_65908:`FileNode` {`nID`:498, `name`:"ariane.community.git.repos-0.6.2.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.2"})
create (_65909:`Distribution` {`editable`:"false", `nID`:499, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.6.2"})
create (_65910:`FileNode` {`nID`:500, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.3"})
create (_65911:`Module` {`nID`:501, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.3"})
create (_65912:`FileNode` {`nID`:502, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_65913:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:503, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_65914:`FileNode` {`nID`:504, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_65915:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:505, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_65916:`FileNode` {`nID`:506, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_65917:`FileNode` {`nID`:507, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_65918:`FileNode` {`nID`:508, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_65919:`Module` {`nID`:509, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_65920:`Module` {`nID`:510, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.3"})
create (_65921:`FileNode` {`nID`:511, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2"})
create (_65922:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:512, `name`:"base", `order`:1, `version`:"0.4.2"})
create (_65923:`FileNode` {`nID`:513, `name`:"ariane.community.core.idm-0.4.2.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2"})
create (_65924:`FileNode` {`nID`:514, `name`:"net.echinopsii.ariane.community.core.idm_0.4.2.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2"})
create (_65925:`FileNode` {`nID`:515, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2"})
create (_65926:`Module` {`nID`:516, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2"})
create (_65927:`FileNode` {`nID`:517, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.3"})
create (_65928:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:518, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_65929:`FileNode` {`nID`:519, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.3"})
create (_65930:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:520, `name`:"wat", `order`:2, `version`:"0.6.3"})
create (_65931:`FileNode` {`nID`:521, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.3"})
create (_65932:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:522, `name`:"idmwat", `order`:3, `version`:"0.6.3"})
create (_65933:`FileNode` {`nID`:523, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.3"})
create (_65934:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:524, `name`:"wab", `order`:4, `version`:"0.6.3"})
create (_65935:`FileNode` {`nID`:525, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.3"})
create (_65936:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:526, `name`:"wresources", `order`:5, `version`:"0.6.3"})
create (_65937:`FileNode` {`nID`:527, `name`:"ariane.community.core.portal-0.6.3.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_65938:`FileNode` {`nID`:528, `name`:"net.echinopsii.ariane.community.core.portal_0.6.3.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_65939:`FileNode` {`nID`:529, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.3"})
create (_65940:`FileNode` {`nID`:530, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.3"})
create (_65941:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:531, `name`:"api", `order`:1, `version`:"0.6.3"})
create (_65942:`FileNode` {`nID`:532, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.3"})
create (_65943:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:533, `name`:"blueprints", `order`:2, `version`:"0.6.3"})
create (_65944:`FileNode` {`nID`:534, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.3"})
create (_65945:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:535, `name`:"rim", `order`:3, `version`:"0.6.3"})
create (_65946:`FileNode` {`nID`:536, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.3"})
create (_65947:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:537, `name`:"dsl", `order`:4, `version`:"0.6.3"})
create (_65948:`FileNode` {`nID`:538, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.3"})
create (_65949:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:539, `name`:"ds", `order`:5, `version`:"0.6.3"})
create (_65950:`FileNode` {`nID`:540, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.3"})
create (_65951:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:541, `name`:"wat", `order`:6, `version`:"0.6.3"})
create (_65952:`FileNode` {`nID`:542, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.3"})
create (_65953:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:543, `name`:"taitale", `order`:7, `version`:"0.6.3"})
create (_65954:`FileNode` {`nID`:544, `name`:"ariane.community.core.mapping-0.6.3.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_65955:`FileNode` {`nID`:545, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.3.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_65956:`FileNode` {`nID`:546, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.3"})
create (_65957:`Module` {`nID`:547, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.3"})
create (_65958:`FileNode` {`nID`:548, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.3"})
create (_65959:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:549, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_65960:`FileNode` {`nID`:550, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.3"})
create (_65961:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:551, `name`:"wat", `order`:2, `version`:"0.6.3"})
create (_65962:`FileNode` {`nID`:552, `name`:"ariane.community.core.directory-0.6.3.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_65963:`FileNode` {`nID`:553, `name`:"net.echinopsii.ariane.community.core.directory_0.6.3.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_65964:`FileNode` {`nID`:554, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.3"})
create (_65965:`Module` {`nID`:555, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.3"})
create (_65966:`FileNode` {`nID`:556, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.3"})
create (_65967:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:557, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_65968:`FileNode` {`nID`:558, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.3"})
create (_65969:`Module` {`nID`:566, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.3"})
create (_65970:`FileNode` {`nID`:567, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.3"})
create (_65971:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:568, `name`:"directory", `order`:1, `version`:"0.2.3"})
create (_65972:`FileNode` {`nID`:569, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.3"})
create (_65973:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:570, `name`:"jsonparser", `order`:2, `version`:"0.2.3"})
create (_65974:`FileNode` {`nID`:571, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.3"})
create (_65975:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:572, `name`:"injector", `order`:3, `version`:"0.2.3"})
create (_65976:`FileNode` {`nID`:573, `name`:"ariane.community.plugin.rabbitmq-0.2.3.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.3"})
create (_65977:`FileNode` {`nID`:574, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.3.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.3"})
create (_65978:`FileNode` {`nID`:575, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.3"})
create (_65979:`FileNode` {`nID`:576, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.3"})
create (_65980:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:577, `name`:"rabbitmq", `version`:"0.2.3"})
create (_65981:`FileNode` {`nID`:578, `name`:"ariane.community.distrib-0.6.3.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.3"})
create (_65982:`FileNode` {`nID`:579, `name`:"pom-ariane.community.distrib-0.6.3.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.3"})
create (_65983:`FileNode` {`nID`:580, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.3"})
create (_65984:`FileNode` {`nID`:581, `name`:"ariane.community.plugins-distrib-0.6.3.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.3"})
create (_65985:`FileNode` {`nID`:582, `name`:"ariane.community.git.repos-0.6.3.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.3"})
create (_65986:`Distribution` {`editable`:"false", `nID`:583, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.6.3"})
create (_65987:`FileNode` {`nID`:668, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65988:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:669, `name`:"wresources", `order`:5, `version`:"0.7.0"})
create (_65989:`FileNode` {`nID`:670, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65990:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:671, `name`:"wab", `order`:4, `version`:"0.7.0"})
create (_65991:`FileNode` {`nID`:672, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65992:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:673, `name`:"idmwat", `order`:3, `version`:"0.7.0"})
create (_65993:`FileNode` {`nID`:674, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65994:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:675, `name`:"wat", `order`:2, `version`:"0.7.0"})
create (_65995:`FileNode` {`nID`:676, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65996:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:677, `name`:"base", `order`:1, `version`:"0.7.0"})
create (_65997:`FileNode` {`nID`:678, `name`:"net.echinopsii.ariane.community.core.portal_0.7.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_65998:`FileNode` {`nID`:679, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.7.0"})
create (_65999:`FileNode` {`nID`:680, `name`:"ariane.community.core.portal-0.7.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_66000:`Module` {`nID`:681, `name`:"portal", `order`:4, `type`:"core", `version`:"0.7.0"})
create (_66001:`Module` {`nID`:682, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2"})
create (_66002:`FileNode` {`nID`:683, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_66003:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:684, `name`:"base", `order`:1, `version`:"0.4.2"})
create (_66004:`FileNode` {`nID`:685, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2"})
create (_66005:`FileNode` {`nID`:686, `name`:"net.echinopsii.ariane.community.core.idm_0.4.2.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2"})
create (_66006:`FileNode` {`nID`:687, `name`:"ariane.community.core.idm-0.4.2.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2"})
create (_66007:`Module` {`nID`:688, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.7.0"})
create (_66008:`FileNode` {`nID`:689, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66009:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:690, `name`:"wat", `order`:3, `version`:"0.7.0"})
create (_66010:`FileNode` {`nID`:691, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66011:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:692, `name`:"base", `order`:1, `version`:"0.7.0"})
create (_66012:`FileNode` {`nID`:693, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66013:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:694, `name`:"messaging", `order`:2, `version`:"0.7.0"})
create (_66014:`FileNode` {`nID`:695, `name`:"ariane.community.core.injector-0.7.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_66015:`FileNode` {`nID`:696, `name`:"net.echinopsii.ariane.community.core.injector_0.7.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_66016:`FileNode` {`nID`:697, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.7.0"})
create (_66017:`Module` {`nID`:698, `name`:"injector", `order`:7, `type`:"core", `version`:"0.7.0"})
create (_66018:`Module` {`nID`:699, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_66019:`FileNode` {`nID`:700, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66020:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:701, `name`:"base", `order`:1, `version`:"0.7.0"})
create (_66021:`FileNode` {`nID`:702, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66022:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:703, `name`:"wat", `order`:2, `version`:"0.7.0"})
create (_66023:`FileNode` {`nID`:704, `name`:"net.echinopsii.ariane.community.core.directory_0.7.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_66024:`FileNode` {`nID`:705, `name`:"ariane.community.core.directory-0.7.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_66025:`FileNode` {`nID`:706, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.7.0"})
create (_66026:`Module` {`nID`:707, `name`:"directory", `order`:6, `type`:"core", `version`:"0.7.0"})
create (_66027:`FileNode` {`nID`:708, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66028:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:709, `name`:"taitale", `order`:6, `version`:"0.7.0"})
create (_66029:`FileNode` {`nID`:710, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66030:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:711, `name`:"wat", `order`:7, `version`:"0.7.0"})
create (_66031:`FileNode` {`nID`:712, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66032:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:713, `name`:"blueprints", `order`:2, `version`:"0.7.0"})
create (_66033:`FileNode` {`nID`:714, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66034:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:715, `name`:"rim", `order`:3, `version`:"0.7.0"})
create (_66035:`FileNode` {`nID`:716, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66036:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:717, `name`:"api", `order`:1, `version`:"0.7.0"})
create (_66037:`FileNode` {`nID`:718, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66038:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:719, `name`:"dsl", `order`:4, `version`:"0.7.0"})
create (_66039:`FileNode` {`nID`:720, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66040:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:721, `name`:"ds", `order`:5, `version`:"0.7.0"})
create (_66041:`FileNode` {`nID`:722, `name`:"ariane.community.core.mapping-0.7.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_66042:`FileNode` {`nID`:723, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.7.0"})
create (_66043:`FileNode` {`nID`:724, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_66044:`Module` {`nID`:725, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.7.0"})
create (_66045:`FileNode` {`nID`:726, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.7.0"})
create (_66046:`Module` {`nID`:727, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.7.0"})
create (_66047:`FileNode` {`nID`:728, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_66048:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:729, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_66049:`FileNode` {`nID`:730, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_66050:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:731, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_66051:`FileNode` {`nID`:732, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_66052:`FileNode` {`nID`:733, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_66053:`FileNode` {`nID`:734, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_66054:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:559, `name`:"messaging", `order`:2, `version`:"0.6.3"})
create (_66055:`FileNode` {`nID`:560, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.3"})
create (_66056:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:561, `name`:"wat", `order`:3, `version`:"0.6.3"})
create (_66057:`FileNode` {`nID`:562, `name`:"ariane.community.core.injector-0.6.3.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_66058:`FileNode` {`nID`:563, `name`:"net.echinopsii.ariane.community.core.injector_0.6.3.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_66059:`FileNode` {`nID`:564, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.3"})
create (_66060:`Module` {`nID`:565, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.3"})
create (_66061:`FileNode` {`nID`:735, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_66062:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:736, `name`:"injector", `order`:3, `version`:"0.2.4"})
create (_66063:`FileNode` {`nID`:737, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_66064:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:738, `name`:"jsonparser", `order`:2, `version`:"0.2.4"})
create (_66065:`FileNode` {`nID`:739, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_66066:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:740, `name`:"directory", `order`:1, `version`:"0.2.4"})
create (_66067:`FileNode` {`nID`:741, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.4"})
create (_66068:`FileNode` {`nID`:742, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.4"})
create (_66069:`FileNode` {`nID`:743, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.4.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.4"})
create (_66070:`FileNode` {`nID`:744, `name`:"ariane.community.plugin.rabbitmq-0.2.4.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.4"})
create (_66071:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:745, `name`:"rabbitmq", `version`:"0.2.4"})
create (_66072:`FileNode` {`nID`:746, `name`:"ariane.community.distrib-0.7.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.4-SNAPSHOT"})
create (_66073:`FileNode` {`nID`:747, `name`:"ariane.community.git.repos-0.7.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.4-SNAPSHOT"})
create (_66074:`FileNode` {`nID`:748, `name`:"ariane.community.plugins-distrib-0.7.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.4-SNAPSHOT"})
create (_66075:`FileNode` {`nID`:749, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.4-SNAPSHOT"})
create (_66076:`FileNode` {`nID`:750, `name`:"pom-ariane.community.distrib-0.7.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.4-SNAPSHOT"})
create (_66077:`Distribution` {`editable`:"false", `nID`:751, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.7.0"})
create (_66162:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:836, `name`:"procos", `version`:"0.1.0"})
create (_66170:`FileNode` {`nID`:844, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_66171:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:845, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_66172:`FileNode` {`nID`:846, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_66173:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:847, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_66174:`FileNode` {`nID`:848, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_66175:`FileNode` {`nID`:849, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_66176:`FileNode` {`nID`:850, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_66177:`Module` {`nID`:851, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_66178:`FileNode` {`nID`:852, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.7.1"})
create (_66179:`Module` {`nID`:853, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.7.1"})
create (_66180:`FileNode` {`nID`:854, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66181:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:855, `name`:"base", `order`:1, `version`:"0.7.1"})
create (_66182:`FileNode` {`nID`:856, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66183:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:857, `name`:"wresources", `order`:5, `version`:"0.7.1"})
create (_66184:`FileNode` {`nID`:858, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66185:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:859, `name`:"idmwat", `order`:3, `version`:"0.7.1"})
create (_66186:`FileNode` {`nID`:860, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66187:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:861, `name`:"wat", `order`:2, `version`:"0.7.1"})
create (_66188:`FileNode` {`nID`:862, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66189:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:863, `name`:"wab", `order`:4, `version`:"0.7.1"})
create (_66190:`FileNode` {`nID`:864, `name`:"ariane.community.core.portal-0.7.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1"})
create (_66191:`FileNode` {`nID`:865, `name`:"net.echinopsii.ariane.community.core.portal_0.7.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1"})
create (_66192:`FileNode` {`nID`:866, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.7.1"})
create (_66193:`Module` {`nID`:867, `name`:"portal", `order`:4, `type`:"core", `version`:"0.7.1"})
create (_66194:`Module` {`nID`:868, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.3"})
create (_66195:`FileNode` {`nID`:869, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66196:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:870, `name`:"wat", `order`:7, `version`:"0.7.1"})
create (_66197:`FileNode` {`nID`:871, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66198:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:872, `name`:"taitale", `order`:6, `version`:"0.7.1"})
create (_66199:`FileNode` {`nID`:873, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66200:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:874, `name`:"blueprints", `order`:2, `version`:"0.7.1"})
create (_66201:`FileNode` {`nID`:875, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66202:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:876, `name`:"rim", `order`:3, `version`:"0.7.1"})
create (_66203:`FileNode` {`nID`:877, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66204:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:878, `name`:"api", `order`:1, `version`:"0.7.1"})
create (_66205:`FileNode` {`nID`:879, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66206:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:880, `name`:"dsl", `order`:4, `version`:"0.7.1"})
create (_66207:`FileNode` {`nID`:881, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66208:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:882, `name`:"ds", `order`:5, `version`:"0.7.1"})
create (_66209:`FileNode` {`nID`:883, `name`:"ariane.community.core.mapping-0.7.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1"})
create (_66210:`FileNode` {`nID`:884, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1"})
create (_66211:`FileNode` {`nID`:885, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.7.1"})
create (_66212:`Module` {`nID`:886, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.7.1"})
create (_66213:`FileNode` {`nID`:887, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66214:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:888, `name`:"wat", `order`:2, `version`:"0.7.1"})
create (_66215:`FileNode` {`nID`:889, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66216:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:890, `name`:"base", `order`:1, `version`:"0.7.1"})
create (_66217:`FileNode` {`nID`:891, `name`:"net.echinopsii.ariane.community.core.directory_0.7.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1"})
create (_66218:`FileNode` {`nID`:892, `name`:"ariane.community.core.directory-0.7.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1"})
create (_66219:`FileNode` {`nID`:893, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.7.1"})
create (_66220:`Module` {`nID`:894, `name`:"directory", `order`:6, `type`:"core", `version`:"0.7.1"})
create (_66221:`FileNode` {`nID`:895, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_66222:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:896, `name`:"base", `order`:1, `version`:"0.4.3"})
create (_66223:`FileNode` {`nID`:897, `name`:"ariane.community.core.idm-0.4.3.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.3"})
create (_66224:`FileNode` {`nID`:898, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.3"})
create (_66225:`FileNode` {`nID`:899, `name`:"net.echinopsii.ariane.community.core.idm_0.4.3.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.3"})
create (_66226:`FileNode` {`nID`:900, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66227:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:901, `name`:"base", `order`:1, `version`:"0.7.1"})
create (_66228:`FileNode` {`nID`:902, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66229:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:903, `name`:"messaging", `order`:2, `version`:"0.7.1"})
create (_66230:`FileNode` {`nID`:904, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66231:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:905, `name`:"wat", `order`:3, `version`:"0.7.1"})
create (_66232:`FileNode` {`nID`:906, `name`:"ariane.community.core.injector-0.7.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1"})
create (_66233:`FileNode` {`nID`:907, `name`:"net.echinopsii.ariane.community.core.injector_0.7.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1"})
create (_66234:`FileNode` {`nID`:908, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.7.1"})
create (_66235:`Module` {`nID`:909, `name`:"injector", `order`:7, `type`:"core", `version`:"0.7.1"})
create (_66236:`FileNode` {`nID`:910, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.1-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1"})
create (_66237:`FileNode` {`nID`:911, `name`:"net.echinopsii.ariane.community.core.idm_0.4.3-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1"})
create (_66238:`FileNode` {`nID`:912, `name`:"net.echinopsii.ariane.community.core.injector_0.7.1-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1"})
create (_66239:`FileNode` {`nID`:913, `name`:"net.echinopsii.ariane.community.core.portal_0.7.1-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1"})
create (_66240:`FileNode` {`nID`:914, `name`:"net.echinopsii.ariane.community.core.directory_0.7.1-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1"})
create (_66241:`FileNode` {`nID`:915, `name`:"net.echinopsii.ariane.community.messaging_0.1.1-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1"})
create (_66242:`Module` {`nID`:916, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.7.1"})
create (_66243:`FileNode` {`nID`:917, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_66244:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:918, `name`:"directory", `order`:1, `version`:"0.2.5-SNAPSHOT"})
create (_66245:`FileNode` {`nID`:919, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_66246:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:920, `name`:"injector", `order`:3, `version`:"0.2.5-SNAPSHOT"})
create (_66247:`FileNode` {`nID`:921, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_66248:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:922, `name`:"jsonparser", `order`:2, `version`:"0.2.5-SNAPSHOT"})
create (_66249:`FileNode` {`nID`:923, `name`:"ariane.community.plugin.rabbitmq-master.SNAPSHOT.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.5-SNAPSHOT"})
create (_66250:`FileNode` {`nID`:924, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.5-SNAPSHOT"})
create (_66251:`FileNode` {`nID`:925, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_master.SNAPSHOT.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.5-SNAPSHOT"})
create (_66252:`FileNode` {`nID`:926, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.5-SNAPSHOT"})
create (_66253:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:927, `name`:"rabbitmq", `version`:"0.2.5-SNAPSHOT"})
create (_66254:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:928, `name`:"procos", `version`:"0.1.1-b01"})
create (_66255:`FileNode` {`nID`:929, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.4-SNAPSHOT"})
create (_66256:`FileNode` {`nID`:930, `name`:"ariane.community.distrib-0.7.1.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.4-SNAPSHOT"})
create (_66257:`FileNode` {`nID`:931, `name`:"pom-ariane.community.distrib-0.7.1.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.4-SNAPSHOT"})
create (_66258:`FileNode` {`nID`:932, `name`:"ariane.community.plugins-distrib-0.7.1.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.4-SNAPSHOT"})
create (_66259:`FileNode` {`nID`:933, `name`:"ariane.community.git.repos-0.7.1.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.4-SNAPSHOT"})
create (_66260:`Distribution` {`editable`:"false", `nID`:934, `name`:"community", `url_repos`:"http://stash.echinopsii.net/scm/~srenia/", `version`:"0.7.1"})
create (_66269:`FileNode` {`nID`:935, `name`:"net.echinopsii.ariane.community.messaging_0.1.1.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.2-SNAPSHOT"})
create (_66270:`FileNode` {`nID`:936, `name`:"net.echinopsii.ariane.community.core.directory_0.7.2.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.2-SNAPSHOT"})
create (_66271:`FileNode` {`nID`:937, `name`:"net.echinopsii.ariane.community.core.portal_0.7.2.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.2-SNAPSHOT"})
create (_66272:`FileNode` {`nID`:938, `name`:"net.echinopsii.ariane.community.core.injector_0.7.2.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.2-SNAPSHOT"})
create (_66273:`FileNode` {`nID`:939, `name`:"net.echinopsii.ariane.community.core.idm_0.4.4.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.2-SNAPSHOT"})
create (_66274:`FileNode` {`nID`:940, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.2.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.2-SNAPSHOT"})
create (_66275:`Module` {`nID`:941, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.7.2-SNAPSHOT"})
create (_66276:`FileNode` {`nID`:942, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66277:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:943, `name`:"wat", `order`:3, `version`:"0.7.2-SNAPSHOT"})
create (_66278:`FileNode` {`nID`:944, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66279:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:945, `name`:"messaging", `order`:2, `version`:"0.7.2-SNAPSHOT"})
create (_66280:`FileNode` {`nID`:946, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66281:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:947, `name`:"base", `order`:1, `version`:"0.7.2-SNAPSHOT"})
create (_66282:`FileNode` {`nID`:948, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.7.2-SNAPSHOT"})
create (_66283:`FileNode` {`nID`:949, `name`:"net.echinopsii.ariane.community.core.injector_master.SNAPSHOT.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.2-SNAPSHOT"})
create (_66284:`FileNode` {`nID`:950, `name`:"ariane.community.core.injector-master.SNAPSHOT.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.2-SNAPSHOT"})
create (_66285:`Module` {`nID`:951, `name`:"injector", `order`:7, `type`:"core", `version`:"0.7.2-SNAPSHOT"})
create (_66286:`Module` {`nID`:952, `name`:"portal", `order`:4, `type`:"core", `version`:"0.7.2-SNAPSHOT"})
create (_66287:`Module` {`nID`:953, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.1-SNAPSHOT"})
create (_66288:`FileNode` {`nID`:954, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_66289:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:955, `name`:"base", `order`:1, `version`:"0.4.4-SNAPSHOT"})
create (_66290:`FileNode` {`nID`:956, `name`:"net.echinopsii.ariane.community.core.idm_master.SNAPSHOT.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.4-SNAPSHOT"})
create (_66291:`FileNode` {`nID`:957, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.4-SNAPSHOT"})
create (_66292:`FileNode` {`nID`:958, `name`:"ariane.community.core.idm-master.SNAPSHOT.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.4-SNAPSHOT"})
create (_66293:`Module` {`nID`:959, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.4-SNAPSHOT"})
create (_66294:`FileNode` {`nID`:960, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66295:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:961, `name`:"base", `order`:1, `version`:"0.7.2-SNAPSHOT"})
create (_66296:`FileNode` {`nID`:962, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66297:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:963, `name`:"wat", `order`:2, `version`:"0.7.2-SNAPSHOT"})
create (_66298:`FileNode` {`nID`:964, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.7.2-SNAPSHOT"})
create (_66299:`FileNode` {`nID`:965, `name`:"ariane.community.core.directory-master.SNAPSHOT.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.2-SNAPSHOT"})
create (_66300:`FileNode` {`nID`:966, `name`:"net.echinopsii.ariane.community.core.directory_master.SNAPSHOT.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.2-SNAPSHOT"})
create (_66301:`Module` {`nID`:967, `name`:"directory", `order`:6, `type`:"core", `version`:"0.7.2-SNAPSHOT"})
create (_66302:`FileNode` {`nID`:968, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66303:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:969, `name`:"taitale", `order`:6, `version`:"0.7.2-SNAPSHOT"})
create (_66304:`FileNode` {`nID`:970, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66305:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:971, `name`:"wat", `order`:7, `version`:"0.7.2-SNAPSHOT"})
create (_66306:`FileNode` {`nID`:972, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66307:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:973, `name`:"dsl", `order`:4, `version`:"0.7.2-SNAPSHOT"})
create (_66308:`FileNode` {`nID`:974, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66309:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:975, `name`:"api", `order`:1, `version`:"0.7.2-SNAPSHOT"})
create (_66310:`FileNode` {`nID`:976, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66311:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:977, `name`:"rim", `order`:3, `version`:"0.7.2-SNAPSHOT"})
create (_66312:`FileNode` {`nID`:978, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66313:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:979, `name`:"blueprints", `order`:2, `version`:"0.7.2-SNAPSHOT"})
create (_66314:`FileNode` {`nID`:980, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66315:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:981, `name`:"ds", `order`:5, `version`:"0.7.2-SNAPSHOT"})
create (_66316:`FileNode` {`nID`:982, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.7.2-SNAPSHOT"})
create (_66317:`FileNode` {`nID`:983, `name`:"net.echinopsii.ariane.community.core.mapping_master.SNAPSHOT.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.2-SNAPSHOT"})
create (_66318:`FileNode` {`nID`:984, `name`:"ariane.community.core.mapping-master.SNAPSHOT.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.2-SNAPSHOT"})
create (_66319:`Module` {`nID`:985, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.7.2-SNAPSHOT"})
create (_66320:`FileNode` {`nID`:986, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66321:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:987, `name`:"wab", `order`:4, `version`:"0.7.2-SNAPSHOT"})
create (_66322:`FileNode` {`nID`:988, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66323:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:989, `name`:"wat", `order`:2, `version`:"0.7.2-SNAPSHOT"})
create (_66324:`FileNode` {`nID`:990, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66325:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:991, `name`:"idmwat", `order`:3, `version`:"0.7.2-SNAPSHOT"})
create (_66326:`FileNode` {`nID`:992, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66327:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:993, `name`:"wresources", `order`:5, `version`:"0.7.2-SNAPSHOT"})
create (_66328:`FileNode` {`nID`:994, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66329:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:995, `name`:"base", `order`:1, `version`:"0.7.2-SNAPSHOT"})
create (_66330:`FileNode` {`nID`:996, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.7.2-SNAPSHOT"})
create (_66331:`FileNode` {`nID`:997, `name`:"net.echinopsii.ariane.community.core.portal_master.SNAPSHOT.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.2-SNAPSHOT"})
create (_66332:`FileNode` {`nID`:998, `name`:"ariane.community.core.portal-master.SNAPSHOT.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.2-SNAPSHOT"})
create (_66333:`FileNode` {`nID`:999, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.7.2-SNAPSHOT"})
create (_66334:`Module` {`nID`:1000, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.7.2-SNAPSHOT"})
create (_66335:`FileNode` {`nID`:1001, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_66336:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:1002, `name`:"rabbitmq", `order`:2, `version`:"0.1.1-SNAPSHOT"})
create (_66337:`FileNode` {`nID`:1003, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_66338:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:1004, `name`:"api", `order`:1, `version`:"0.1.1-SNAPSHOT"})
create (_66339:`FileNode` {`nID`:1005, `name`:"net.echinopsii.ariane.community.messaging_master.SNAPSHOT.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.1-SNAPSHOT"})
create (_66340:`FileNode` {`nID`:1006, `name`:"ariane.community.messaging-master.SNAPSHOT.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.1-SNAPSHOT"})
create (_66341:`FileNode` {`nID`:1007, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_66342:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:1008, `name`:"procos", `version`:"0.1.1-b01"})
create (_66343:`FileNode` {`nID`:1009, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_66344:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:1010, `name`:"jsonparser", `order`:2, `version`:"0.2.5-SNAPSHOT"})
create (_66345:`FileNode` {`nID`:1011, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_66346:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:1012, `name`:"injector", `order`:3, `version`:"0.2.5-SNAPSHOT"})
create (_66347:`FileNode` {`nID`:1013, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_66348:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:1014, `name`:"directory", `order`:1, `version`:"0.2.5-SNAPSHOT"})
create (_66349:`FileNode` {`nID`:1015, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.5-SNAPSHOT"})
create (_66350:`FileNode` {`nID`:1016, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_master.SNAPSHOT.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.5-SNAPSHOT"})
create (_66351:`FileNode` {`nID`:1017, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.5-SNAPSHOT"})
create (_66352:`FileNode` {`nID`:1018, `name`:"ariane.community.plugin.rabbitmq-master.SNAPSHOT.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.5-SNAPSHOT"})
create (_66353:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:1019, `name`:"rabbitmq", `version`:"0.2.5-SNAPSHOT"})
create (_66354:`FileNode` {`nID`:1020, `name`:"ariane.community.git.repos-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.4-SNAPSHOT"})
create (_66355:`FileNode` {`nID`:1021, `name`:"ariane.community.plugins-distrib-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.4-SNAPSHOT"})
create (_66356:`FileNode` {`nID`:1022, `name`:"pom-ariane.community.distrib-master.SNAPSHOT.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.4-SNAPSHOT"})
create (_66357:`FileNode` {`nID`:1023, `name`:"ariane.community.distrib-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.4-SNAPSHOT"})
create (_66358:`FileNode` {`nID`:1024, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.4-SNAPSHOT"})
create (_66359:`Distribution` {`editable`:"false", `nID`:1025, `name`:"copyTempcommunity", `url_repos`:"http://stash.echinopsii.net/scm/~srenia/", `version`:"copyTemp0.7.2-SNAPSHOT"})
create (_66360:`FileNode` {`nID`:1026, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_66361:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:1027, `name`:"api", `order`:1, `version`:"0.1.1-SNAPSHOT"})
create (_66362:`FileNode` {`nID`:1028, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_66363:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:1029, `name`:"rabbitmq", `order`:2, `version`:"0.1.1-SNAPSHOT"})
create (_66364:`FileNode` {`nID`:1030, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_66365:`FileNode` {`nID`:1031, `name`:"ariane.community.messaging-master.SNAPSHOT.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.1-SNAPSHOT"})
create (_66366:`FileNode` {`nID`:1032, `name`:"net.echinopsii.ariane.community.messaging_master.SNAPSHOT.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.1-SNAPSHOT"})
create (_66367:`Module` {`nID`:1033, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.1-SNAPSHOT"})
create (_66368:`FileNode` {`nID`:1034, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.7.2-SNAPSHOT"})
create (_66369:`Module` {`nID`:1035, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.7.2-SNAPSHOT"})
create (_66370:`FileNode` {`nID`:1036, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66371:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:1037, `name`:"base", `order`:1, `version`:"0.7.2-SNAPSHOT"})
create (_66372:`FileNode` {`nID`:1038, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66373:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:1039, `name`:"wresources", `order`:5, `version`:"0.7.2-SNAPSHOT"})
create (_66374:`FileNode` {`nID`:1040, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66375:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:1041, `name`:"idmwat", `order`:3, `version`:"0.7.2-SNAPSHOT"})
create (_66376:`FileNode` {`nID`:1042, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66377:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:1043, `name`:"wat", `order`:2, `version`:"0.7.2-SNAPSHOT"})
create (_66378:`FileNode` {`nID`:1044, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66379:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:1045, `name`:"wab", `order`:4, `version`:"0.7.2-SNAPSHOT"})
create (_66380:`FileNode` {`nID`:1046, `name`:"ariane.community.core.portal-master.SNAPSHOT.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.2-SNAPSHOT"})
create (_66381:`FileNode` {`nID`:1047, `name`:"net.echinopsii.ariane.community.core.portal_master.SNAPSHOT.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.2-SNAPSHOT"})
create (_66382:`FileNode` {`nID`:1048, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.7.2-SNAPSHOT"})
create (_66383:`Module` {`nID`:1049, `name`:"portal", `order`:4, `type`:"core", `version`:"0.7.2-SNAPSHOT"})
create (_66384:`Module` {`nID`:1050, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.4-SNAPSHOT"})
create (_66385:`FileNode` {`nID`:1051, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66386:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:1052, `name`:"wat", `order`:7, `version`:"0.7.2-SNAPSHOT"})
create (_66387:`FileNode` {`nID`:1053, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66388:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:1054, `name`:"taitale", `order`:6, `version`:"0.7.2-SNAPSHOT"})
create (_66389:`FileNode` {`nID`:1055, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66390:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:1056, `name`:"blueprints", `order`:2, `version`:"0.7.2-SNAPSHOT"})
create (_66391:`FileNode` {`nID`:1057, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66392:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:1058, `name`:"rim", `order`:3, `version`:"0.7.2-SNAPSHOT"})
create (_66393:`FileNode` {`nID`:1059, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66394:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:1060, `name`:"api", `order`:1, `version`:"0.7.2-SNAPSHOT"})
create (_66395:`FileNode` {`nID`:1061, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66396:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:1062, `name`:"dsl", `order`:4, `version`:"0.7.2-SNAPSHOT"})
create (_66397:`FileNode` {`nID`:1063, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66398:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:1064, `name`:"ds", `order`:5, `version`:"0.7.2-SNAPSHOT"})
create (_66399:`FileNode` {`nID`:1065, `name`:"ariane.community.core.mapping-master.SNAPSHOT.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.2-SNAPSHOT"})
create (_66400:`FileNode` {`nID`:1066, `name`:"net.echinopsii.ariane.community.core.mapping_master.SNAPSHOT.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.2-SNAPSHOT"})
create (_66401:`FileNode` {`nID`:1067, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.7.2-SNAPSHOT"})
create (_66402:`Module` {`nID`:1068, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.7.2-SNAPSHOT"})
create (_66403:`FileNode` {`nID`:1069, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66404:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:1070, `name`:"wat", `order`:2, `version`:"0.7.2-SNAPSHOT"})
create (_66405:`FileNode` {`nID`:1071, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66406:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:1072, `name`:"base", `order`:1, `version`:"0.7.2-SNAPSHOT"})
create (_66407:`FileNode` {`nID`:1073, `name`:"net.echinopsii.ariane.community.core.directory_master.SNAPSHOT.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.2-SNAPSHOT"})
create (_66408:`FileNode` {`nID`:1074, `name`:"ariane.community.core.directory-master.SNAPSHOT.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.2-SNAPSHOT"})
create (_66409:`FileNode` {`nID`:1075, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.7.2-SNAPSHOT"})
create (_66410:`Module` {`nID`:1076, `name`:"directory", `order`:6, `type`:"core", `version`:"0.7.2-SNAPSHOT"})
create (_66411:`FileNode` {`nID`:1077, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_66412:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:1078, `name`:"base", `order`:1, `version`:"0.4.4-SNAPSHOT"})
create (_66413:`FileNode` {`nID`:1079, `name`:"ariane.community.core.idm-master.SNAPSHOT.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.4-SNAPSHOT"})
create (_66414:`FileNode` {`nID`:1080, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.4-SNAPSHOT"})
create (_66415:`FileNode` {`nID`:1081, `name`:"net.echinopsii.ariane.community.core.idm_master.SNAPSHOT.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.4-SNAPSHOT"})
create (_66416:`FileNode` {`nID`:1082, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66417:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:1083, `name`:"base", `order`:1, `version`:"0.7.2-SNAPSHOT"})
create (_66418:`FileNode` {`nID`:1084, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66419:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:1085, `name`:"messaging", `order`:2, `version`:"0.7.2-SNAPSHOT"})
create (_66420:`FileNode` {`nID`:1086, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_66421:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:1087, `name`:"wat", `order`:3, `version`:"0.7.2-SNAPSHOT"})
create (_66422:`FileNode` {`nID`:1088, `name`:"ariane.community.core.injector-master.SNAPSHOT.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.2-SNAPSHOT"})
create (_66423:`FileNode` {`nID`:1089, `name`:"net.echinopsii.ariane.community.core.injector_master.SNAPSHOT.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.2-SNAPSHOT"})
create (_66424:`FileNode` {`nID`:1090, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.7.2-SNAPSHOT"})
create (_66425:`Module` {`nID`:1091, `name`:"injector", `order`:7, `type`:"core", `version`:"0.7.2-SNAPSHOT"})
create (_66426:`FileNode` {`nID`:1092, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.2.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.2-SNAPSHOT"})
create (_66427:`FileNode` {`nID`:1093, `name`:"net.echinopsii.ariane.community.core.idm_0.4.4.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.2-SNAPSHOT"})
create (_66428:`FileNode` {`nID`:1094, `name`:"net.echinopsii.ariane.community.core.injector_0.7.2.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.2-SNAPSHOT"})
create (_66429:`FileNode` {`nID`:1095, `name`:"net.echinopsii.ariane.community.core.portal_0.7.2.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.2-SNAPSHOT"})
create (_66430:`FileNode` {`nID`:1096, `name`:"net.echinopsii.ariane.community.core.directory_0.7.2.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.2-SNAPSHOT"})
create (_66431:`FileNode` {`nID`:1097, `name`:"net.echinopsii.ariane.community.messaging_0.1.1.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.2-SNAPSHOT"})
create (_66432:`Module` {`nID`:1098, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.7.2-SNAPSHOT"})
create (_66433:`FileNode` {`nID`:1099, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_66434:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:1100, `name`:"directory", `order`:1, `version`:"0.2.5-SNAPSHOT"})
create (_66435:`FileNode` {`nID`:1101, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_66436:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:1102, `name`:"injector", `order`:3, `version`:"0.2.5-SNAPSHOT"})
create (_66437:`FileNode` {`nID`:1103, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_66438:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:1104, `name`:"jsonparser", `order`:2, `version`:"0.2.5-SNAPSHOT"})
create (_66439:`FileNode` {`nID`:1105, `name`:"ariane.community.plugin.rabbitmq-master.SNAPSHOT.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.5-SNAPSHOT"})
create (_66440:`FileNode` {`nID`:1106, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.5-SNAPSHOT"})
create (_66441:`FileNode` {`nID`:1107, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_master.SNAPSHOT.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.5-SNAPSHOT"})
create (_66442:`FileNode` {`nID`:1108, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.5-SNAPSHOT"})
create (_66443:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:1109, `name`:"rabbitmq", `version`:"0.2.5-SNAPSHOT"})
create (_66444:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:1110, `name`:"procos", `version`:"0.1.1-b01"})
create (_66445:`FileNode` {`nID`:1111, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.4-SNAPSHOT"})
create (_66446:`FileNode` {`nID`:1112, `name`:"ariane.community.distrib-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.4-SNAPSHOT"})
create (_66447:`FileNode` {`nID`:1113, `name`:"pom-ariane.community.distrib-master.SNAPSHOT.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.4-SNAPSHOT"})
create (_66448:`FileNode` {`nID`:1114, `name`:"ariane.community.plugins-distrib-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.4-SNAPSHOT"})
create (_66449:`FileNode` {`nID`:1115, `name`:"ariane.community.git.repos-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.4-SNAPSHOT"})
create (_66450:`Distribution` {`editable`:"true", `nID`:1116, `name`:"community", `url_repos`:"http://stash.echinopsii.net/scm/~srenia/", `version`:"0.7.2-SNAPSHOT"})
create _65412-[:`CONTAINS`]->_65411
create _65412-[:`DEPENDS ON`]->_65473
create _65414-[:`CONTAINS`]->_65413
create _65418-[:`COMPOSED OF`]->_65414
create _65418-[:`CONTAINS`]->_65415
create _65418-[:`CONTAINS`]->_65416
create _65418-[:`CONTAINS`]->_65417
create _65418-[:`DEPENDS ON`]->_65473
create _65420-[:`CONTAINS`]->_65419
create _65422-[:`CONTAINS`]->_65421
create _65424-[:`CONTAINS`]->_65423
create _65426-[:`CONTAINS`]->_65425
create _65428-[:`CONTAINS`]->_65427
create _65432-[:`COMPOSED OF`]->_65426
create _65432-[:`COMPOSED OF`]->_65420
create _65432-[:`COMPOSED OF`]->_65428
create _65432-[:`COMPOSED OF`]->_65424
create _65432-[:`COMPOSED OF`]->_65422
create _65432-[:`CONTAINS`]->_65431
create _65432-[:`CONTAINS`]->_65430
create _65432-[:`CONTAINS`]->_65429
create _65432-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_65418
create _65432-[:`DEPENDS ON`]->_65473
create _65434-[:`CONTAINS`]->_65433
create _65436-[:`CONTAINS`]->_65435
create _65438-[:`CONTAINS`]->_65437
create _65440-[:`CONTAINS`]->_65439
create _65442-[:`COMPOSED OF`]->_65434
create _65442-[:`COMPOSED OF`]->_65438
create _65442-[:`COMPOSED OF`]->_65436
create _65442-[:`COMPOSED OF`]->_65440
create _65442-[:`CONTAINS`]->_65441
create _65444-[:`CONTAINS`]->_65443
create _65446-[:`CONTAINS`]->_65445
create _65450-[:`COMPOSED OF`]->_65444
create _65450-[:`COMPOSED OF`]->_65446
create _65450-[:`COMPOSED OF`]->_65442
create _65450-[:`CONTAINS`]->_65448
create _65450-[:`CONTAINS`]->_65447
create _65450-[:`CONTAINS`]->_65449
create _65450-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_65432
create _65450-[:`DEPENDS ON`]->_65473
create _65450-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_65418
create _65452-[:`CONTAINS`]->_65451
create _65454-[:`CONTAINS`]->_65453
create _65458-[:`COMPOSED OF`]->_65452
create _65458-[:`COMPOSED OF`]->_65454
create _65458-[:`CONTAINS`]->_65456
create _65458-[:`CONTAINS`]->_65457
create _65458-[:`CONTAINS`]->_65455
create _65458-[:`DEPENDS ON`]->_65473
create _65458-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_65432
create _65460-[:`CONTAINS`]->_65459
create _65462-[:`CONTAINS`]->_65461
create _65466-[:`COMPOSED OF`]->_65462
create _65466-[:`COMPOSED OF`]->_65460
create _65466-[:`CONTAINS`]->_65465
create _65466-[:`CONTAINS`]->_65464
create _65466-[:`CONTAINS`]->_65463
create _65466-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_65432
create _65466-[:`DEPENDS ON`]->_65473
create _65467-[:`DEPENDS ON`]->_65473
create _65473-[:`CONTAINS`]->_65471
create _65473-[:`CONTAINS`]->_65470
create _65473-[:`CONTAINS`]->_65469
create _65473-[:`CONTAINS`]->_65468
create _65473-[:`CONTAINS`]->_65472
create _65475-[:`CONTAINS`]->_65474
create _65475-[:`DEPENDS ON`]->_65536
create _65477-[:`CONTAINS`]->_65476
create _65481-[:`COMPOSED OF`]->_65477
create _65481-[:`CONTAINS`]->_65480
create _65481-[:`CONTAINS`]->_65478
create _65481-[:`CONTAINS`]->_65479
create _65481-[:`DEPENDS ON`]->_65536
create _65483-[:`CONTAINS`]->_65482
create _65485-[:`CONTAINS`]->_65484
create _65487-[:`CONTAINS`]->_65486
create _65489-[:`CONTAINS`]->_65488
create _65491-[:`CONTAINS`]->_65490
create _65495-[:`COMPOSED OF`]->_65483
create _65495-[:`COMPOSED OF`]->_65485
create _65495-[:`COMPOSED OF`]->_65489
create _65495-[:`COMPOSED OF`]->_65491
create _65495-[:`COMPOSED OF`]->_65487
create _65495-[:`CONTAINS`]->_65493
create _65495-[:`CONTAINS`]->_65494
create _65495-[:`CONTAINS`]->_65492
create _65495-[:`DEPENDS ON`]->_65536
create _65495-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_65481
create _65497-[:`CONTAINS`]->_65496
create _65499-[:`CONTAINS`]->_65498
create _65501-[:`CONTAINS`]->_65500
create _65503-[:`CONTAINS`]->_65502
create _65505-[:`COMPOSED OF`]->_65501
create _65505-[:`COMPOSED OF`]->_65497
create _65505-[:`COMPOSED OF`]->_65503
create _65505-[:`COMPOSED OF`]->_65499
create _65505-[:`CONTAINS`]->_65504
create _65507-[:`CONTAINS`]->_65506
create _65509-[:`CONTAINS`]->_65508
create _65513-[:`COMPOSED OF`]->_65505
create _65513-[:`COMPOSED OF`]->_65509
create _65513-[:`COMPOSED OF`]->_65507
create _65513-[:`CONTAINS`]->_65512
create _65513-[:`CONTAINS`]->_65510
create _65513-[:`CONTAINS`]->_65511
create _65513-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_65495
create _65513-[:`DEPENDS ON`]->_65536
create _65513-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_65481
create _65515-[:`CONTAINS`]->_65514
create _65517-[:`CONTAINS`]->_65516
create _65521-[:`COMPOSED OF`]->_65515
create _65521-[:`COMPOSED OF`]->_65517
create _65521-[:`CONTAINS`]->_65518
create _65521-[:`CONTAINS`]->_65519
create _65521-[:`CONTAINS`]->_65520
create _65521-[:`DEPENDS ON`]->_65536
create _65521-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_65495
create _65523-[:`CONTAINS`]->_65522
create _65525-[:`CONTAINS`]->_65524
create _65529-[:`COMPOSED OF`]->_65525
create _65529-[:`COMPOSED OF`]->_65523
create _65529-[:`CONTAINS`]->_65527
create _65529-[:`CONTAINS`]->_65528
create _65529-[:`CONTAINS`]->_65526
create _65529-[:`DEPENDS ON`]->_65536
create _65529-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_65495
create _65530-[:`DEPENDS ON`]->_65536
create _65536-[:`CONTAINS`]->_65533
create _65536-[:`CONTAINS`]->_65531
create _65536-[:`CONTAINS`]->_65534
create _65536-[:`CONTAINS`]->_65535
create _65536-[:`CONTAINS`]->_65532
create _65538-[:`CONTAINS`]->_65537
create _65538-[:`DEPENDS ON`]->_65599
create _65540-[:`CONTAINS`]->_65539
create _65544-[:`COMPOSED OF`]->_65540
create _65544-[:`CONTAINS`]->_65542
create _65544-[:`CONTAINS`]->_65541
create _65544-[:`CONTAINS`]->_65543
create _65544-[:`DEPENDS ON`]->_65599
create _65546-[:`CONTAINS`]->_65545
create _65548-[:`CONTAINS`]->_65547
create _65550-[:`CONTAINS`]->_65549
create _65552-[:`CONTAINS`]->_65551
create _65554-[:`CONTAINS`]->_65553
create _65558-[:`COMPOSED OF`]->_65552
create _65558-[:`COMPOSED OF`]->_65550
create _65558-[:`COMPOSED OF`]->_65546
create _65558-[:`COMPOSED OF`]->_65548
create _65558-[:`COMPOSED OF`]->_65554
create _65558-[:`CONTAINS`]->_65555
create _65558-[:`CONTAINS`]->_65557
create _65558-[:`CONTAINS`]->_65556
create _65558-[:`DEPENDS ON`]->_65599
create _65558-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_65544
create _65560-[:`CONTAINS`]->_65559
create _65562-[:`CONTAINS`]->_65561
create _65564-[:`CONTAINS`]->_65563
create _65566-[:`CONTAINS`]->_65565
create _65568-[:`COMPOSED OF`]->_65560
create _65568-[:`COMPOSED OF`]->_65564
create _65568-[:`COMPOSED OF`]->_65562
create _65568-[:`COMPOSED OF`]->_65566
create _65568-[:`CONTAINS`]->_65567
create _65570-[:`CONTAINS`]->_65569
create _65572-[:`CONTAINS`]->_65571
create _65576-[:`COMPOSED OF`]->_65568
create _65576-[:`COMPOSED OF`]->_65570
create _65576-[:`COMPOSED OF`]->_65572
create _65576-[:`CONTAINS`]->_65574
create _65576-[:`CONTAINS`]->_65573
create _65576-[:`CONTAINS`]->_65575
create _65576-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_65544
create _65576-[:`DEPENDS ON`]->_65599
create _65576-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_65558
create _65578-[:`CONTAINS`]->_65577
create _65580-[:`CONTAINS`]->_65579
create _65584-[:`COMPOSED OF`]->_65578
create _65584-[:`COMPOSED OF`]->_65580
create _65584-[:`CONTAINS`]->_65583
create _65584-[:`CONTAINS`]->_65581
create _65584-[:`CONTAINS`]->_65582
create _65584-[:`DEPENDS ON`]->_65599
create _65584-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_65558
create _65586-[:`CONTAINS`]->_65585
create _65588-[:`CONTAINS`]->_65587
create _65592-[:`COMPOSED OF`]->_65588
create _65592-[:`COMPOSED OF`]->_65586
create _65592-[:`CONTAINS`]->_65589
create _65592-[:`CONTAINS`]->_65591
create _65592-[:`CONTAINS`]->_65590
create _65592-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_65558
create _65592-[:`DEPENDS ON`]->_65599
create _65593-[:`DEPENDS ON`]->_65599
create _65599-[:`CONTAINS`]->_65595
create _65599-[:`CONTAINS`]->_65594
create _65599-[:`CONTAINS`]->_65597
create _65599-[:`CONTAINS`]->_65596
create _65599-[:`CONTAINS`]->_65598
create _65601-[:`CONTAINS`]->_65600
create _65601-[:`DEPENDS ON`]->_65673
create _65603-[:`CONTAINS`]->_65602
create _65607-[:`COMPOSED OF`]->_65603
create _65607-[:`CONTAINS`]->_65604
create _65607-[:`CONTAINS`]->_65606
create _65607-[:`CONTAINS`]->_65605
create _65607-[:`DEPENDS ON`]->_65673
create _65609-[:`CONTAINS`]->_65608
create _65611-[:`CONTAINS`]->_65610
create _65613-[:`CONTAINS`]->_65612
create _65615-[:`CONTAINS`]->_65614
create _65617-[:`CONTAINS`]->_65616
create _65621-[:`COMPOSED OF`]->_65617
create _65621-[:`COMPOSED OF`]->_65609
create _65621-[:`COMPOSED OF`]->_65611
create _65621-[:`COMPOSED OF`]->_65615
create _65621-[:`COMPOSED OF`]->_65613
create _65621-[:`CONTAINS`]->_65618
create _65621-[:`CONTAINS`]->_65619
create _65621-[:`CONTAINS`]->_65620
create _65621-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_65607
create _65621-[:`DEPENDS ON`]->_65673
create _65623-[:`CONTAINS`]->_65622
create _65625-[:`CONTAINS`]->_65624
create _65627-[:`CONTAINS`]->_65626
create _65629-[:`CONTAINS`]->_65628
create _65631-[:`COMPOSED OF`]->_65627
create _65631-[:`COMPOSED OF`]->_65623
create _65631-[:`COMPOSED OF`]->_65625
create _65631-[:`COMPOSED OF`]->_65629
create _65631-[:`CONTAINS`]->_65630
create _65633-[:`CONTAINS`]->_65632
create _65635-[:`CONTAINS`]->_65634
create _65639-[:`COMPOSED OF`]->_65631
create _65639-[:`COMPOSED OF`]->_65635
create _65639-[:`COMPOSED OF`]->_65633
create _65639-[:`CONTAINS`]->_65637
create _65639-[:`CONTAINS`]->_65638
create _65639-[:`CONTAINS`]->_65636
create _65639-[:`DEPENDS ON`]->_65673
create _65639-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_65621
create _65639-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_65607
create _65641-[:`CONTAINS`]->_65640
create _65643-[:`CONTAINS`]->_65642
create _65647-[:`COMPOSED OF`]->_65643
create _65647-[:`COMPOSED OF`]->_65641
create _65647-[:`CONTAINS`]->_65644
create _65647-[:`CONTAINS`]->_65646
create _65647-[:`CONTAINS`]->_65645
create _65647-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_65621
create _65647-[:`DEPENDS ON`]->_65673
create _65649-[:`CONTAINS`]->_65648
create _65651-[:`CONTAINS`]->_65650
create _65655-[:`COMPOSED OF`]->_65651
create _65655-[:`COMPOSED OF`]->_65649
create _65655-[:`CONTAINS`]->_65654
create _65655-[:`CONTAINS`]->_65652
create _65655-[:`CONTAINS`]->_65653
create _65655-[:`DEPENDS ON`]->_65673
create _65655-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_65621
create _65656-[:`DEPENDS ON`]->_65673
create _65658-[:`CONTAINS`]->_65657
create _65660-[:`CONTAINS`]->_65659
create _65662-[:`CONTAINS`]->_65661
create _65667-[:`COMPOSED OF`]->_65660
create _65667-[:`COMPOSED OF`]->_65658
create _65667-[:`COMPOSED OF`]->_65662
create _65667-[:`CONTAINS`]->_65664
create _65667-[:`CONTAINS`]->_65665
create _65667-[:`CONTAINS`]->_65666
create _65667-[:`CONTAINS`]->_65663
create _65667-[:`COMPATIBLE WITH`]->_65673
create _65667-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_65639
create _65667-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_65655
create _65667-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_65647
create _65667-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_65621
create _65673-[:`CONTAINS`]->_65670
create _65673-[:`CONTAINS`]->_65671
create _65673-[:`CONTAINS`]->_65672
create _65673-[:`CONTAINS`]->_65669
create _65673-[:`CONTAINS`]->_65668
create _65675-[:`CONTAINS`]->_65674
create _65675-[:`DEPENDS ON`]->_65749
create _65677-[:`CONTAINS`]->_65676
create _65681-[:`COMPOSED OF`]->_65677
create _65681-[:`CONTAINS`]->_65679
create _65681-[:`CONTAINS`]->_65680
create _65681-[:`CONTAINS`]->_65678
create _65681-[:`DEPENDS ON`]->_65749
create _65683-[:`CONTAINS`]->_65682
create _65685-[:`CONTAINS`]->_65684
create _65687-[:`CONTAINS`]->_65686
create _65689-[:`CONTAINS`]->_65688
create _65691-[:`CONTAINS`]->_65690
create _65695-[:`COMPOSED OF`]->_65687
create _65695-[:`COMPOSED OF`]->_65683
create _65695-[:`COMPOSED OF`]->_65685
create _65695-[:`COMPOSED OF`]->_65691
create _65695-[:`COMPOSED OF`]->_65689
create _65695-[:`CONTAINS`]->_65693
create _65695-[:`CONTAINS`]->_65694
create _65695-[:`CONTAINS`]->_65692
create _65695-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_65681
create _65695-[:`DEPENDS ON`]->_65749
create _65697-[:`CONTAINS`]->_65696
create _65699-[:`CONTAINS`]->_65698
create _65701-[:`CONTAINS`]->_65700
create _65703-[:`CONTAINS`]->_65702
create _65705-[:`COMPOSED OF`]->_65703
create _65705-[:`COMPOSED OF`]->_65697
create _65705-[:`COMPOSED OF`]->_65699
create _65705-[:`COMPOSED OF`]->_65701
create _65705-[:`CONTAINS`]->_65704
create _65707-[:`CONTAINS`]->_65706
create _65709-[:`CONTAINS`]->_65708
create _65713-[:`COMPOSED OF`]->_65705
create _65713-[:`COMPOSED OF`]->_65709
create _65713-[:`COMPOSED OF`]->_65707
create _65713-[:`CONTAINS`]->_65710
create _65713-[:`CONTAINS`]->_65712
create _65713-[:`CONTAINS`]->_65711
create _65713-[:`DEPENDS ON`]->_65749
create _65713-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65695
create _65713-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_65681
create _65715-[:`CONTAINS`]->_65714
create _65717-[:`CONTAINS`]->_65716
create _65721-[:`COMPOSED OF`]->_65715
create _65721-[:`COMPOSED OF`]->_65717
create _65721-[:`CONTAINS`]->_65720
create _65721-[:`CONTAINS`]->_65718
create _65721-[:`CONTAINS`]->_65719
create _65721-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65695
create _65721-[:`DEPENDS ON`]->_65749
create _65723-[:`CONTAINS`]->_65722
create _65725-[:`CONTAINS`]->_65724
create _65727-[:`CONTAINS`]->_65726
create _65731-[:`COMPOSED OF`]->_65723
create _65731-[:`COMPOSED OF`]->_65725
create _65731-[:`COMPOSED OF`]->_65727
create _65731-[:`CONTAINS`]->_65729
create _65731-[:`CONTAINS`]->_65730
create _65731-[:`CONTAINS`]->_65728
create _65731-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65695
create _65731-[:`DEPENDS ON`]->_65749
create _65732-[:`DEPENDS ON`]->_65749
create _65734-[:`CONTAINS`]->_65733
create _65736-[:`CONTAINS`]->_65735
create _65738-[:`CONTAINS`]->_65737
create _65743-[:`COMPOSED OF`]->_65736
create _65743-[:`COMPOSED OF`]->_65738
create _65743-[:`COMPOSED OF`]->_65734
create _65743-[:`CONTAINS`]->_65741
create _65743-[:`CONTAINS`]->_65740
create _65743-[:`CONTAINS`]->_65742
create _65743-[:`CONTAINS`]->_65739
create _65743-[:`COMPATIBLE WITH` {`version_max`:"0.2.1", `version_min`:"0.2.0"}]->_65749
create _65743-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65731
create _65743-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65695
create _65743-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65721
create _65743-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65713
create _65749-[:`CONTAINS`]->_65745
create _65749-[:`CONTAINS`]->_65744
create _65749-[:`CONTAINS`]->_65747
create _65749-[:`CONTAINS`]->_65746
create _65749-[:`CONTAINS`]->_65748
create _65751-[:`CONTAINS`]->_65750
create _65751-[:`DEPENDS ON`]->_65825
create _65753-[:`CONTAINS`]->_65752
create _65757-[:`COMPOSED OF`]->_65753
create _65757-[:`CONTAINS`]->_65754
create _65757-[:`CONTAINS`]->_65756
create _65757-[:`CONTAINS`]->_65755
create _65757-[:`DEPENDS ON`]->_65825
create _65759-[:`CONTAINS`]->_65758
create _65761-[:`CONTAINS`]->_65760
create _65763-[:`CONTAINS`]->_65762
create _65765-[:`CONTAINS`]->_65764
create _65767-[:`CONTAINS`]->_65766
create _65771-[:`COMPOSED OF`]->_65759
create _65771-[:`COMPOSED OF`]->_65763
create _65771-[:`COMPOSED OF`]->_65765
create _65771-[:`COMPOSED OF`]->_65767
create _65771-[:`COMPOSED OF`]->_65761
create _65771-[:`CONTAINS`]->_65768
create _65771-[:`CONTAINS`]->_65770
create _65771-[:`CONTAINS`]->_65769
create _65771-[:`DEPENDS ON`]->_65825
create _65771-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_65757
create _65773-[:`CONTAINS`]->_65772
create _65775-[:`CONTAINS`]->_65774
create _65777-[:`CONTAINS`]->_65776
create _65779-[:`CONTAINS`]->_65778
create _65781-[:`COMPOSED OF`]->_65775
create _65781-[:`COMPOSED OF`]->_65777
create _65781-[:`COMPOSED OF`]->_65779
create _65781-[:`COMPOSED OF`]->_65773
create _65781-[:`CONTAINS`]->_65780
create _65783-[:`CONTAINS`]->_65782
create _65785-[:`CONTAINS`]->_65784
create _65789-[:`COMPOSED OF`]->_65783
create _65789-[:`COMPOSED OF`]->_65785
create _65789-[:`COMPOSED OF`]->_65781
create _65789-[:`CONTAINS`]->_65788
create _65789-[:`CONTAINS`]->_65787
create _65789-[:`CONTAINS`]->_65786
create _65789-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_65757
create _65789-[:`DEPENDS ON`]->_65825
create _65789-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65771
create _65791-[:`CONTAINS`]->_65790
create _65793-[:`CONTAINS`]->_65792
create _65797-[:`COMPOSED OF`]->_65791
create _65797-[:`COMPOSED OF`]->_65793
create _65797-[:`CONTAINS`]->_65794
create _65797-[:`CONTAINS`]->_65795
create _65797-[:`CONTAINS`]->_65796
create _65797-[:`DEPENDS ON`]->_65825
create _65797-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65771
create _65799-[:`CONTAINS`]->_65798
create _65801-[:`CONTAINS`]->_65800
create _65803-[:`CONTAINS`]->_65802
create _65807-[:`COMPOSED OF`]->_65799
create _65807-[:`COMPOSED OF`]->_65803
create _65807-[:`COMPOSED OF`]->_65801
create _65807-[:`CONTAINS`]->_65805
create _65807-[:`CONTAINS`]->_65804
create _65807-[:`CONTAINS`]->_65806
create _65807-[:`DEPENDS ON`]->_65825
create _65807-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65771
create _65808-[:`DEPENDS ON`]->_65825
create _65810-[:`CONTAINS`]->_65809
create _65812-[:`CONTAINS`]->_65811
create _65814-[:`CONTAINS`]->_65813
create _65819-[:`COMPOSED OF`]->_65814
create _65819-[:`COMPOSED OF`]->_65812
create _65819-[:`COMPOSED OF`]->_65810
create _65819-[:`CONTAINS`]->_65817
create _65819-[:`CONTAINS`]->_65816
create _65819-[:`CONTAINS`]->_65818
create _65819-[:`CONTAINS`]->_65815
create _65819-[:`COMPATIBLE WITH`]->_65825
create _65819-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65797
create _65819-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65789
create _65819-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65771
create _65819-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65807
create _65825-[:`CONTAINS`]->_65821
create _65825-[:`CONTAINS`]->_65823
create _65825-[:`CONTAINS`]->_65820
create _65825-[:`CONTAINS`]->_65824
create _65825-[:`CONTAINS`]->_65822
create _65827-[:`CONTAINS`]->_65826
create _65827-[:`DEPENDS ON`]->_65909
create _65829-[:`CONTAINS`]->_65828
create _65831-[:`CONTAINS`]->_65830
create _65835-[:`COMPOSED OF`]->_65829
create _65835-[:`COMPOSED OF`]->_65831
create _65835-[:`CONTAINS`]->_65833
create _65835-[:`CONTAINS`]->_65834
create _65835-[:`CONTAINS`]->_65832
create _65835-[:`DEPENDS ON`]->_65909
create _65835-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65836
create _65836-[:`COMPOSED OF`]->_65844
create _65836-[:`COMPOSED OF`]->_65846
create _65836-[:`COMPOSED OF`]->_65850
create _65836-[:`COMPOSED OF`]->_65852
create _65836-[:`COMPOSED OF`]->_65848
create _65836-[:`CONTAINS`]->_65854
create _65836-[:`CONTAINS`]->_65855
create _65836-[:`CONTAINS`]->_65853
create _65836-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_65842
create _65836-[:`DEPENDS ON`]->_65909
create _65838-[:`CONTAINS`]->_65837
create _65842-[:`COMPOSED OF`]->_65838
create _65842-[:`CONTAINS`]->_65840
create _65842-[:`CONTAINS`]->_65839
create _65842-[:`CONTAINS`]->_65841
create _65842-[:`DEPENDS ON`]->_65909
create _65844-[:`CONTAINS`]->_65843
create _65846-[:`CONTAINS`]->_65845
create _65848-[:`CONTAINS`]->_65847
create _65850-[:`CONTAINS`]->_65849
create _65852-[:`CONTAINS`]->_65851
create _65857-[:`CONTAINS`]->_65856
create _65859-[:`CONTAINS`]->_65858
create _65861-[:`CONTAINS`]->_65860
create _65863-[:`CONTAINS`]->_65862
create _65865-[:`COMPOSED OF`]->_65857
create _65865-[:`COMPOSED OF`]->_65863
create _65865-[:`COMPOSED OF`]->_65861
create _65865-[:`COMPOSED OF`]->_65859
create _65865-[:`CONTAINS`]->_65864
create _65867-[:`CONTAINS`]->_65866
create _65869-[:`CONTAINS`]->_65868
create _65873-[:`COMPOSED OF`]->_65869
create _65873-[:`COMPOSED OF`]->_65865
create _65873-[:`COMPOSED OF`]->_65867
create _65873-[:`CONTAINS`]->_65872
create _65873-[:`CONTAINS`]->_65871
create _65873-[:`CONTAINS`]->_65870
create _65873-[:`DEPENDS ON`]->_65909
create _65873-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65836
create _65873-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_65842
create _65875-[:`CONTAINS`]->_65874
create _65877-[:`CONTAINS`]->_65876
create _65881-[:`COMPOSED OF`]->_65875
create _65881-[:`COMPOSED OF`]->_65877
create _65881-[:`CONTAINS`]->_65878
create _65881-[:`CONTAINS`]->_65880
create _65881-[:`CONTAINS`]->_65879
create _65881-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65836
create _65881-[:`DEPENDS ON`]->_65909
create _65883-[:`CONTAINS`]->_65882
create _65885-[:`CONTAINS`]->_65884
create _65887-[:`CONTAINS`]->_65886
create _65891-[:`COMPOSED OF`]->_65885
create _65891-[:`COMPOSED OF`]->_65883
create _65891-[:`COMPOSED OF`]->_65887
create _65891-[:`CONTAINS`]->_65889
create _65891-[:`CONTAINS`]->_65888
create _65891-[:`CONTAINS`]->_65890
create _65891-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_65835
create _65891-[:`DEPENDS ON`]->_65909
create _65891-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65836
create _65892-[:`DEPENDS ON`]->_65909
create _65894-[:`CONTAINS`]->_65893
create _65896-[:`CONTAINS`]->_65895
create _65898-[:`CONTAINS`]->_65897
create _65903-[:`COMPOSED OF`]->_65896
create _65903-[:`COMPOSED OF`]->_65898
create _65903-[:`COMPOSED OF`]->_65894
create _65903-[:`CONTAINS`]->_65900
create _65903-[:`CONTAINS`]->_65899
create _65903-[:`CONTAINS`]->_65902
create _65903-[:`CONTAINS`]->_65901
create _65903-[:`COMPATIBLE WITH`]->_65909
create _65903-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65881
create _65903-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65873
create _65903-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65891
create _65903-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65836
create _65909-[:`CONTAINS`]->_65906
create _65909-[:`CONTAINS`]->_65908
create _65909-[:`CONTAINS`]->_65905
create _65909-[:`CONTAINS`]->_65907
create _65909-[:`CONTAINS`]->_65904
create _65911-[:`CONTAINS`]->_65910
create _65911-[:`DEPENDS ON`]->_65986
create _65913-[:`CONTAINS`]->_65912
create _65915-[:`CONTAINS`]->_65914
create _65919-[:`COMPOSED OF`]->_65913
create _65919-[:`COMPOSED OF`]->_65915
create _65919-[:`CONTAINS`]->_65918
create _65919-[:`CONTAINS`]->_65916
create _65919-[:`CONTAINS`]->_65917
create _65919-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65920
create _65919-[:`DEPENDS ON`]->_65986
create _65920-[:`COMPOSED OF`]->_65934
create _65920-[:`COMPOSED OF`]->_65932
create _65920-[:`COMPOSED OF`]->_65930
create _65920-[:`COMPOSED OF`]->_65936
create _65920-[:`COMPOSED OF`]->_65928
create _65920-[:`CONTAINS`]->_65939
create _65920-[:`CONTAINS`]->_65938
create _65920-[:`CONTAINS`]->_65937
create _65920-[:`DEPENDS ON`]->_65986
create _65920-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_65926
create _65922-[:`CONTAINS`]->_65921
create _65926-[:`COMPOSED OF`]->_65922
create _65926-[:`CONTAINS`]->_65924
create _65926-[:`CONTAINS`]->_65923
create _65926-[:`CONTAINS`]->_65925
create _65926-[:`DEPENDS ON`]->_65986
create _65928-[:`CONTAINS`]->_65927
create _65930-[:`CONTAINS`]->_65929
create _65932-[:`CONTAINS`]->_65931
create _65934-[:`CONTAINS`]->_65933
create _65936-[:`CONTAINS`]->_65935
create _65941-[:`CONTAINS`]->_65940
create _65943-[:`CONTAINS`]->_65942
create _65945-[:`CONTAINS`]->_65944
create _65947-[:`CONTAINS`]->_65946
create _65949-[:`COMPOSED OF`]->_65947
create _65949-[:`COMPOSED OF`]->_65941
create _65949-[:`COMPOSED OF`]->_65945
create _65949-[:`COMPOSED OF`]->_65943
create _65949-[:`CONTAINS`]->_65948
create _65951-[:`CONTAINS`]->_65950
create _65953-[:`CONTAINS`]->_65952
create _65957-[:`COMPOSED OF`]->_65953
create _65957-[:`COMPOSED OF`]->_65949
create _65957-[:`COMPOSED OF`]->_65951
create _65957-[:`CONTAINS`]->_65955
create _65957-[:`CONTAINS`]->_65954
create _65957-[:`CONTAINS`]->_65956
create _65957-[:`DEPENDS ON`]->_65986
create _65957-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65920
create _65957-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_65926
create _65959-[:`CONTAINS`]->_65958
create _65961-[:`CONTAINS`]->_65960
create _65965-[:`COMPOSED OF`]->_65961
create _65965-[:`COMPOSED OF`]->_65959
create _65965-[:`CONTAINS`]->_65964
create _65965-[:`CONTAINS`]->_65963
create _65965-[:`CONTAINS`]->_65962
create _65965-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65920
create _65965-[:`DEPENDS ON`]->_65986
create _65967-[:`CONTAINS`]->_65966
create _65969-[:`DEPENDS ON`]->_65986
create _65971-[:`CONTAINS`]->_65970
create _65973-[:`CONTAINS`]->_65972
create _65975-[:`CONTAINS`]->_65974
create _65980-[:`COMPOSED OF`]->_65971
create _65980-[:`COMPOSED OF`]->_65975
create _65980-[:`COMPOSED OF`]->_65973
create _65980-[:`CONTAINS`]->_65978
create _65980-[:`CONTAINS`]->_65976
create _65980-[:`CONTAINS`]->_65977
create _65980-[:`CONTAINS`]->_65979
create _65980-[:`COMPATIBLE WITH`]->_65986
create _65980-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65965
create _65980-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_66060
create _65980-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65920
create _65980-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65957
create _65986-[:`CONTAINS`]->_65982
create _65986-[:`CONTAINS`]->_65983
create _65986-[:`CONTAINS`]->_65985
create _65986-[:`CONTAINS`]->_65984
create _65986-[:`CONTAINS`]->_65981
create _65988-[:`CONTAINS`]->_65987
create _65990-[:`CONTAINS`]->_65989
create _65992-[:`CONTAINS`]->_65991
create _65994-[:`CONTAINS`]->_65993
create _65996-[:`CONTAINS`]->_65995
create _66000-[:`COMPOSED OF`]->_65992
create _66000-[:`COMPOSED OF`]->_65990
create _66000-[:`COMPOSED OF`]->_65996
create _66000-[:`COMPOSED OF`]->_65994
create _66000-[:`COMPOSED OF`]->_65988
create _66000-[:`CONTAINS`]->_65998
create _66000-[:`CONTAINS`]->_65999
create _66000-[:`CONTAINS`]->_65997
create _66000-[:`DEPENDS ON`]->_66077
create _66000-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_66001
create _66001-[:`COMPOSED OF`]->_66003
create _66001-[:`CONTAINS`]->_66006
create _66001-[:`CONTAINS`]->_66005
create _66001-[:`CONTAINS`]->_66004
create _66001-[:`DEPENDS ON`]->_66077
create _66003-[:`CONTAINS`]->_66002
create _66007-[:`DEPENDS ON`]->_66077
create _66009-[:`CONTAINS`]->_66008
create _66011-[:`CONTAINS`]->_66010
create _66013-[:`CONTAINS`]->_66012
create _66017-[:`COMPOSED OF`]->_66009
create _66017-[:`COMPOSED OF`]->_66011
create _66017-[:`COMPOSED OF`]->_66013
create _66017-[:`CONTAINS`]->_66015
create _66017-[:`CONTAINS`]->_66016
create _66017-[:`CONTAINS`]->_66014
create _66017-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66000
create _66017-[:`DEPENDS ON`]->_66077
create _66017-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_66018
create _66018-[:`COMPOSED OF`]->_66050
create _66018-[:`COMPOSED OF`]->_66048
create _66018-[:`CONTAINS`]->_66051
create _66018-[:`CONTAINS`]->_66053
create _66018-[:`CONTAINS`]->_66052
create _66018-[:`DEPENDS ON`]->_66077
create _66020-[:`CONTAINS`]->_66019
create _66022-[:`CONTAINS`]->_66021
create _66026-[:`COMPOSED OF`]->_66022
create _66026-[:`COMPOSED OF`]->_66020
create _66026-[:`CONTAINS`]->_66023
create _66026-[:`CONTAINS`]->_66025
create _66026-[:`CONTAINS`]->_66024
create _66026-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66000
create _66026-[:`DEPENDS ON`]->_66077
create _66028-[:`CONTAINS`]->_66027
create _66030-[:`CONTAINS`]->_66029
create _66032-[:`CONTAINS`]->_66031
create _66034-[:`CONTAINS`]->_66033
create _66036-[:`CONTAINS`]->_66035
create _66038-[:`CONTAINS`]->_66037
create _66040-[:`COMPOSED OF`]->_66036
create _66040-[:`COMPOSED OF`]->_66038
create _66040-[:`COMPOSED OF`]->_66034
create _66040-[:`COMPOSED OF`]->_66032
create _66040-[:`CONTAINS`]->_66039
create _66044-[:`COMPOSED OF`]->_66040
create _66044-[:`COMPOSED OF`]->_66030
create _66044-[:`COMPOSED OF`]->_66028
create _66044-[:`CONTAINS`]->_66042
create _66044-[:`CONTAINS`]->_66043
create _66044-[:`CONTAINS`]->_66041
create _66044-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_66001
create _66044-[:`DEPENDS ON`]->_66077
create _66044-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66000
create _66046-[:`CONTAINS`]->_66045
create _66046-[:`DEPENDS ON`]->_66077
create _66048-[:`CONTAINS`]->_66047
create _66050-[:`CONTAINS`]->_66049
create _66054-[:`CONTAINS`]->_65968
create _66056-[:`CONTAINS`]->_66055
create _66060-[:`COMPOSED OF`]->_66056
create _66060-[:`COMPOSED OF`]->_65967
create _66060-[:`COMPOSED OF`]->_66054
create _66060-[:`CONTAINS`]->_66058
create _66060-[:`CONTAINS`]->_66057
create _66060-[:`CONTAINS`]->_66059
create _66060-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_65919
create _66060-[:`DEPENDS ON`]->_65986
create _66060-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65920
create _66062-[:`CONTAINS`]->_66061
create _66064-[:`CONTAINS`]->_66063
create _66066-[:`CONTAINS`]->_66065
create _66071-[:`COMPOSED OF`]->_66066
create _66071-[:`COMPOSED OF`]->_66064
create _66071-[:`COMPOSED OF`]->_66062
create _66071-[:`CONTAINS`]->_66070
create _66071-[:`CONTAINS`]->_66068
create _66071-[:`CONTAINS`]->_66067
create _66071-[:`CONTAINS`]->_66069
create _66071-[:`COMPATIBLE WITH`]->_66077
create _66071-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66017
create _66071-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66000
create _66071-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66044
create _66071-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66026
create _66077-[:`CONTAINS`]->_66074
create _66077-[:`CONTAINS`]->_66073
create _66077-[:`CONTAINS`]->_66075
create _66077-[:`CONTAINS`]->_66072
create _66077-[:`CONTAINS`]->_66076
create _66162-[:`COMPATIBLE WITH`]->_66077
create _66171-[:`CONTAINS`]->_66170
create _66173-[:`CONTAINS`]->_66172
create _66177-[:`COMPOSED OF`]->_66173
create _66177-[:`COMPOSED OF`]->_66171
create _66177-[:`CONTAINS`]->_66176
create _66177-[:`CONTAINS`]->_66175
create _66177-[:`CONTAINS`]->_66174
create _66177-[:`DEPENDS ON`]->_66260
create _66179-[:`CONTAINS`]->_66178
create _66179-[:`DEPENDS ON`]->_66260
create _66181-[:`CONTAINS`]->_66180
create _66183-[:`CONTAINS`]->_66182
create _66185-[:`CONTAINS`]->_66184
create _66187-[:`CONTAINS`]->_66186
create _66189-[:`CONTAINS`]->_66188
create _66193-[:`COMPOSED OF`]->_66189
create _66193-[:`COMPOSED OF`]->_66187
create _66193-[:`COMPOSED OF`]->_66185
create _66193-[:`COMPOSED OF`]->_66183
create _66193-[:`COMPOSED OF`]->_66181
create _66193-[:`CONTAINS`]->_66192
create _66193-[:`CONTAINS`]->_66191
create _66193-[:`CONTAINS`]->_66190
create _66193-[:`DEPENDS ON`]->_66260
create _66193-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_66194
create _66194-[:`COMPOSED OF`]->_66222
create _66194-[:`CONTAINS`]->_66225
create _66194-[:`CONTAINS`]->_66224
create _66194-[:`CONTAINS`]->_66223
create _66194-[:`DEPENDS ON`]->_66260
create _66196-[:`CONTAINS`]->_66195
create _66198-[:`CONTAINS`]->_66197
create _66200-[:`CONTAINS`]->_66199
create _66202-[:`CONTAINS`]->_66201
create _66204-[:`CONTAINS`]->_66203
create _66206-[:`CONTAINS`]->_66205
create _66208-[:`COMPOSED OF`]->_66206
create _66208-[:`COMPOSED OF`]->_66204
create _66208-[:`COMPOSED OF`]->_66202
create _66208-[:`COMPOSED OF`]->_66200
create _66208-[:`CONTAINS`]->_66207
create _66212-[:`COMPOSED OF`]->_66208
create _66212-[:`COMPOSED OF`]->_66198
create _66212-[:`COMPOSED OF`]->_66196
create _66212-[:`CONTAINS`]->_66211
create _66212-[:`CONTAINS`]->_66210
create _66212-[:`CONTAINS`]->_66209
create _66212-[:`DEPENDS ON`]->_66260
create _66212-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_66194
create _66212-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66193
create _66214-[:`CONTAINS`]->_66213
create _66216-[:`CONTAINS`]->_66215
create _66220-[:`COMPOSED OF`]->_66216
create _66220-[:`COMPOSED OF`]->_66214
create _66220-[:`CONTAINS`]->_66219
create _66220-[:`CONTAINS`]->_66218
create _66220-[:`CONTAINS`]->_66217
create _66220-[:`DEPENDS ON`]->_66260
create _66220-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66193
create _66222-[:`CONTAINS`]->_66221
create _66227-[:`CONTAINS`]->_66226
create _66229-[:`CONTAINS`]->_66228
create _66231-[:`CONTAINS`]->_66230
create _66235-[:`COMPOSED OF`]->_66231
create _66235-[:`COMPOSED OF`]->_66229
create _66235-[:`COMPOSED OF`]->_66227
create _66235-[:`CONTAINS`]->_66234
create _66235-[:`CONTAINS`]->_66233
create _66235-[:`CONTAINS`]->_66232
create _66235-[:`DEPENDS ON`]->_66260
create _66235-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66193
create _66235-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_66177
create _66242-[:`CONTAINS`]->_66241
create _66242-[:`CONTAINS`]->_66240
create _66242-[:`CONTAINS`]->_66239
create _66242-[:`CONTAINS`]->_66238
create _66242-[:`CONTAINS`]->_66237
create _66242-[:`CONTAINS`]->_66236
create _66242-[:`DEPENDS ON`]->_66260
create _66244-[:`CONTAINS`]->_66243
create _66246-[:`CONTAINS`]->_66245
create _66248-[:`CONTAINS`]->_66247
create _66253-[:`COMPOSED OF`]->_66248
create _66253-[:`COMPOSED OF`]->_66246
create _66253-[:`COMPOSED OF`]->_66244
create _66253-[:`CONTAINS`]->_66252
create _66253-[:`CONTAINS`]->_66251
create _66253-[:`CONTAINS`]->_66250
create _66253-[:`CONTAINS`]->_66249
create _66253-[:`COMPATIBLE WITH`]->_66260
create _66253-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66235
create _66253-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66193
create _66253-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66220
create _66253-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66212
create _66254-[:`COMPATIBLE WITH`]->_66260
create _66260-[:`CONTAINS`]->_66259
create _66260-[:`CONTAINS`]->_66258
create _66260-[:`CONTAINS`]->_66257
create _66260-[:`CONTAINS`]->_66256
create _66260-[:`CONTAINS`]->_66255
create _66275-[:`CONTAINS`]->_66274
create _66275-[:`CONTAINS`]->_66273
create _66275-[:`CONTAINS`]->_66272
create _66275-[:`CONTAINS`]->_66271
create _66275-[:`CONTAINS`]->_66270
create _66275-[:`CONTAINS`]->_66269
create _66275-[:`DEPENDS ON`]->_66359
create _66277-[:`CONTAINS`]->_66276
create _66279-[:`CONTAINS`]->_66278
create _66281-[:`CONTAINS`]->_66280
create _66285-[:`COMPOSED OF`]->_66281
create _66285-[:`COMPOSED OF`]->_66279
create _66285-[:`COMPOSED OF`]->_66277
create _66285-[:`CONTAINS`]->_66284
create _66285-[:`CONTAINS`]->_66283
create _66285-[:`CONTAINS`]->_66282
create _66285-[:`DEPENDS ON`]->_66359
create _66285-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_66287
create _66285-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66286
create _66286-[:`COMPOSED OF`]->_66329
create _66286-[:`COMPOSED OF`]->_66327
create _66286-[:`COMPOSED OF`]->_66325
create _66286-[:`COMPOSED OF`]->_66323
create _66286-[:`COMPOSED OF`]->_66321
create _66286-[:`CONTAINS`]->_66332
create _66286-[:`CONTAINS`]->_66331
create _66286-[:`CONTAINS`]->_66330
create _66286-[:`DEPENDS ON`]->_66359
create _66286-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_66293
create _66287-[:`COMPOSED OF`]->_66338
create _66287-[:`COMPOSED OF`]->_66336
create _66287-[:`CONTAINS`]->_66341
create _66287-[:`CONTAINS`]->_66340
create _66287-[:`CONTAINS`]->_66339
create _66287-[:`DEPENDS ON`]->_66359
create _66289-[:`CONTAINS`]->_66288
create _66293-[:`COMPOSED OF`]->_66289
create _66293-[:`CONTAINS`]->_66292
create _66293-[:`CONTAINS`]->_66291
create _66293-[:`CONTAINS`]->_66290
create _66293-[:`DEPENDS ON`]->_66359
create _66295-[:`CONTAINS`]->_66294
create _66297-[:`CONTAINS`]->_66296
create _66301-[:`COMPOSED OF`]->_66297
create _66301-[:`COMPOSED OF`]->_66295
create _66301-[:`CONTAINS`]->_66300
create _66301-[:`CONTAINS`]->_66299
create _66301-[:`CONTAINS`]->_66298
create _66301-[:`DEPENDS ON`]->_66359
create _66301-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66286
create _66303-[:`CONTAINS`]->_66302
create _66305-[:`CONTAINS`]->_66304
create _66307-[:`CONTAINS`]->_66306
create _66309-[:`CONTAINS`]->_66308
create _66311-[:`CONTAINS`]->_66310
create _66313-[:`CONTAINS`]->_66312
create _66315-[:`COMPOSED OF`]->_66313
create _66315-[:`COMPOSED OF`]->_66311
create _66315-[:`COMPOSED OF`]->_66309
create _66315-[:`COMPOSED OF`]->_66307
create _66315-[:`CONTAINS`]->_66314
create _66319-[:`COMPOSED OF`]->_66315
create _66319-[:`COMPOSED OF`]->_66305
create _66319-[:`COMPOSED OF`]->_66303
create _66319-[:`CONTAINS`]->_66318
create _66319-[:`CONTAINS`]->_66317
create _66319-[:`CONTAINS`]->_66316
create _66319-[:`DEPENDS ON`]->_66359
create _66319-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66286
create _66319-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_66293
create _66321-[:`CONTAINS`]->_66320
create _66323-[:`CONTAINS`]->_66322
create _66325-[:`CONTAINS`]->_66324
create _66327-[:`CONTAINS`]->_66326
create _66329-[:`CONTAINS`]->_66328
create _66334-[:`CONTAINS`]->_66333
create _66334-[:`DEPENDS ON`]->_66359
create _66336-[:`CONTAINS`]->_66335
create _66338-[:`CONTAINS`]->_66337
create _66342-[:`COMPATIBLE WITH`]->_66359
create _66344-[:`CONTAINS`]->_66343
create _66346-[:`CONTAINS`]->_66345
create _66348-[:`CONTAINS`]->_66347
create _66353-[:`COMPOSED OF`]->_66348
create _66353-[:`COMPOSED OF`]->_66346
create _66353-[:`COMPOSED OF`]->_66344
create _66353-[:`CONTAINS`]->_66352
create _66353-[:`CONTAINS`]->_66351
create _66353-[:`CONTAINS`]->_66350
create _66353-[:`CONTAINS`]->_66349
create _66353-[:`COMPATIBLE WITH`]->_66359
create _66353-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66319
create _66353-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66301
create _66353-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66286
create _66353-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66285
create _66359-[:`CONTAINS`]->_66358
create _66359-[:`CONTAINS`]->_66357
create _66359-[:`CONTAINS`]->_66356
create _66359-[:`CONTAINS`]->_66355
create _66359-[:`CONTAINS`]->_66354
create _66361-[:`CONTAINS`]->_66360
create _66363-[:`CONTAINS`]->_66362
create _66367-[:`COMPOSED OF`]->_66363
create _66367-[:`COMPOSED OF`]->_66361
create _66367-[:`CONTAINS`]->_66366
create _66367-[:`CONTAINS`]->_66365
create _66367-[:`CONTAINS`]->_66364
create _66367-[:`DEPENDS ON`]->_66450
create _66369-[:`CONTAINS`]->_66368
create _66369-[:`DEPENDS ON`]->_66450
create _66371-[:`CONTAINS`]->_66370
create _66373-[:`CONTAINS`]->_66372
create _66375-[:`CONTAINS`]->_66374
create _66377-[:`CONTAINS`]->_66376
create _66379-[:`CONTAINS`]->_66378
create _66383-[:`COMPOSED OF`]->_66379
create _66383-[:`COMPOSED OF`]->_66377
create _66383-[:`COMPOSED OF`]->_66375
create _66383-[:`COMPOSED OF`]->_66373
create _66383-[:`COMPOSED OF`]->_66371
create _66383-[:`CONTAINS`]->_66382
create _66383-[:`CONTAINS`]->_66381
create _66383-[:`CONTAINS`]->_66380
create _66383-[:`DEPENDS ON`]->_66450
create _66383-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_66384
create _66384-[:`COMPOSED OF`]->_66412
create _66384-[:`CONTAINS`]->_66415
create _66384-[:`CONTAINS`]->_66414
create _66384-[:`CONTAINS`]->_66413
create _66384-[:`DEPENDS ON`]->_66450
create _66386-[:`CONTAINS`]->_66385
create _66388-[:`CONTAINS`]->_66387
create _66390-[:`CONTAINS`]->_66389
create _66392-[:`CONTAINS`]->_66391
create _66394-[:`CONTAINS`]->_66393
create _66396-[:`CONTAINS`]->_66395
create _66398-[:`COMPOSED OF`]->_66396
create _66398-[:`COMPOSED OF`]->_66394
create _66398-[:`COMPOSED OF`]->_66392
create _66398-[:`COMPOSED OF`]->_66390
create _66398-[:`CONTAINS`]->_66397
create _66402-[:`COMPOSED OF`]->_66398
create _66402-[:`COMPOSED OF`]->_66388
create _66402-[:`COMPOSED OF`]->_66386
create _66402-[:`CONTAINS`]->_66401
create _66402-[:`CONTAINS`]->_66400
create _66402-[:`CONTAINS`]->_66399
create _66402-[:`DEPENDS ON`]->_66450
create _66402-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_66384
create _66402-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66383
create _66404-[:`CONTAINS`]->_66403
create _66406-[:`CONTAINS`]->_66405
create _66410-[:`COMPOSED OF`]->_66406
create _66410-[:`COMPOSED OF`]->_66404
create _66410-[:`CONTAINS`]->_66409
create _66410-[:`CONTAINS`]->_66408
create _66410-[:`CONTAINS`]->_66407
create _66410-[:`DEPENDS ON`]->_66450
create _66410-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66383
create _66412-[:`CONTAINS`]->_66411
create _66417-[:`CONTAINS`]->_66416
create _66419-[:`CONTAINS`]->_66418
create _66421-[:`CONTAINS`]->_66420
create _66425-[:`COMPOSED OF`]->_66421
create _66425-[:`COMPOSED OF`]->_66419
create _66425-[:`COMPOSED OF`]->_66417
create _66425-[:`CONTAINS`]->_66424
create _66425-[:`CONTAINS`]->_66423
create _66425-[:`CONTAINS`]->_66422
create _66425-[:`DEPENDS ON`]->_66450
create _66425-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66383
create _66425-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_66367
create _66432-[:`CONTAINS`]->_66431
create _66432-[:`CONTAINS`]->_66430
create _66432-[:`CONTAINS`]->_66429
create _66432-[:`CONTAINS`]->_66428
create _66432-[:`CONTAINS`]->_66427
create _66432-[:`CONTAINS`]->_66426
create _66432-[:`DEPENDS ON`]->_66450
create _66434-[:`CONTAINS`]->_66433
create _66436-[:`CONTAINS`]->_66435
create _66438-[:`CONTAINS`]->_66437
create _66443-[:`COMPOSED OF`]->_66438
create _66443-[:`COMPOSED OF`]->_66436
create _66443-[:`COMPOSED OF`]->_66434
create _66443-[:`CONTAINS`]->_66442
create _66443-[:`CONTAINS`]->_66441
create _66443-[:`CONTAINS`]->_66440
create _66443-[:`CONTAINS`]->_66439
create _66443-[:`COMPATIBLE WITH`]->_66450
create _66443-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66425
create _66443-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66383
create _66443-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66410
create _66443-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_66402
create _66444-[:`COMPATIBLE WITH`]->_66450
create _66450-[:`CONTAINS`]->_66449
create _66450-[:`CONTAINS`]->_66448
create _66450-[:`CONTAINS`]->_66447
create _66450-[:`CONTAINS`]->_66446
create _66450-[:`CONTAINS`]->_66445
;
commit
