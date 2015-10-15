begin
create (_303781:`FileNode` {`nID`:1, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.0"})
create (_303782:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:2, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.0"})
create (_303783:`FileNode` {`nID`:3, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_303784:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:4, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_303785:`FileNode` {`nID`:5, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_303786:`FileNode` {`nID`:6, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_303787:`FileNode` {`nID`:7, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_303788:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:8, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_303789:`FileNode` {`nID`:9, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.0"})
create (_303790:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:10, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_303791:`FileNode` {`nID`:11, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.0"})
create (_303792:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:12, `name`:"idmwat", `order`:2, `version`:"0.5.0"})
create (_303793:`FileNode` {`nID`:13, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.0"})
create (_303794:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:14, `name`:"wab", `order`:3, `version`:"0.5.0"})
create (_303795:`FileNode` {`nID`:15, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.0"})
create (_303796:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:16, `name`:"wat", `order`:4, `version`:"0.5.0"})
create (_303797:`FileNode` {`nID`:17, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.0"})
create (_303798:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:18, `name`:"wresources", `order`:5, `version`:"0.5.0"})
create (_303799:`FileNode` {`nID`:19, `name`:"ariane.community.core.portal-0.5.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_303800:`FileNode` {`nID`:20, `name`:"net.echinopsii.ariane.community.core.portal_0.5.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_303801:`FileNode` {`nID`:21, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.0"})
create (_303802:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:22, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.0"})
create (_303803:`FileNode` {`nID`:23, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.0"})
create (_303804:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:24, `name`:"api", `order`:1, `version`:"0.5.0"})
create (_303805:`FileNode` {`nID`:25, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.0"})
create (_303806:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:26, `name`:"blueprints", `order`:2, `version`:"0.5.0"})
create (_303807:`FileNode` {`nID`:27, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.0"})
create (_303808:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:28, `name`:"dsl", `order`:3, `version`:"0.5.0"})
create (_303809:`FileNode` {`nID`:29, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.0"})
create (_303810:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:30, `name`:"rim", `order`:4, `version`:"0.5.0"})
create (_303811:`FileNode` {`nID`:31, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.0"})
create (_303812:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:32, `name`:"ds", `order`:5, `version`:"0.5.0"})
create (_303813:`FileNode` {`nID`:33, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.0"})
create (_303814:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:34, `name`:"taitale", `order`:6, `version`:"0.5.0"})
create (_303815:`FileNode` {`nID`:35, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.0"})
create (_303816:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:36, `name`:"wat", `order`:7, `version`:"0.5.0"})
create (_303817:`FileNode` {`nID`:37, `name`:"ariane.community.core.mapping-0.5.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_303818:`FileNode` {`nID`:38, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_303819:`FileNode` {`nID`:39, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.0"})
create (_303820:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:40, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.0"})
create (_303821:`FileNode` {`nID`:41, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.0"})
create (_303822:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:42, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_303823:`FileNode` {`nID`:43, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.0"})
create (_303824:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:44, `name`:"wat", `order`:2, `version`:"0.5.0"})
create (_303825:`FileNode` {`nID`:45, `name`:"ariane.community.core.directory-0.5.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_303826:`FileNode` {`nID`:46, `name`:"net.echinopsii.ariane.community.core.directory_0.5.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_303827:`FileNode` {`nID`:47, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.0"})
create (_303828:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:48, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.0"})
create (_303829:`FileNode` {`nID`:49, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.0"})
create (_303830:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:50, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_303831:`FileNode` {`nID`:51, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.0"})
create (_303832:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:52, `name`:"wat", `order`:2, `version`:"0.5.0"})
create (_303833:`FileNode` {`nID`:53, `name`:"ariane.community.core.injector-0.5.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_303834:`FileNode` {`nID`:54, `name`:"net.echinopsii.ariane.community.core.injector_0.5.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_303835:`FileNode` {`nID`:55, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.0"})
create (_303836:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:56, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.0"})
create (_303837:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:57, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.0"})
create (_303838:`FileNode` {`nID`:58, `name`:"ariane.community.distrib-0.5.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.0"})
create (_303839:`FileNode` {`nID`:59, `name`:"pom-ariane.community.distrib-0.5.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.0"})
create (_303840:`FileNode` {`nID`:60, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.0"})
create (_303841:`FileNode` {`nID`:61, `name`:"ariane.community.plugins-distrib-0.5.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.0"})
create (_303842:`FileNode` {`nID`:62, `name`:"ariane.community.git.repos-0.5.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.0"})
create (_303843:`Distribution` {`editable`:"false", `nID`:63, `name`:"community", `version`:"0.5.0"})
create (_303845:`FileNode` {`nID`:64, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.1"})
create (_303846:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:65, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.1"})
create (_303847:`FileNode` {`nID`:66, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_303848:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:67, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_303849:`FileNode` {`nID`:68, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_303850:`FileNode` {`nID`:69, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_303851:`FileNode` {`nID`:70, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_303852:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:71, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_303853:`FileNode` {`nID`:72, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_303854:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:73, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_303855:`FileNode` {`nID`:74, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_303856:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:75, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_303857:`FileNode` {`nID`:76, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_303858:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:77, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_303859:`FileNode` {`nID`:78, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_303860:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:79, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_303861:`FileNode` {`nID`:80, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_303862:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:81, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_303863:`FileNode` {`nID`:82, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_303864:`FileNode` {`nID`:83, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_303865:`FileNode` {`nID`:84, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_303866:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:85, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_303867:`FileNode` {`nID`:86, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.1"})
create (_303868:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:87, `name`:"api", `order`:1, `version`:"0.5.1"})
create (_303869:`FileNode` {`nID`:88, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.1"})
create (_303870:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:89, `name`:"blueprints", `order`:2, `version`:"0.5.1"})
create (_303871:`FileNode` {`nID`:90, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.1"})
create (_303872:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:91, `name`:"dsl", `order`:3, `version`:"0.5.1"})
create (_303873:`FileNode` {`nID`:92, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.1"})
create (_303874:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:93, `name`:"rim", `order`:4, `version`:"0.5.1"})
create (_303875:`FileNode` {`nID`:94, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.1"})
create (_303876:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:95, `name`:"ds", `order`:5, `version`:"0.5.1"})
create (_303877:`FileNode` {`nID`:96, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.1"})
create (_303878:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:97, `name`:"taitale", `order`:6, `version`:"0.5.1"})
create (_303879:`FileNode` {`nID`:98, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.1"})
create (_303880:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:99, `name`:"wat", `order`:7, `version`:"0.5.1"})
create (_303881:`FileNode` {`nID`:100, `name`:"ariane.community.core.mapping-0.5.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_303882:`FileNode` {`nID`:101, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_303883:`FileNode` {`nID`:102, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.1"})
create (_303884:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:103, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.1"})
create (_303885:`FileNode` {`nID`:104, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_303886:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:105, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_303887:`FileNode` {`nID`:106, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_303888:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:107, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_303889:`FileNode` {`nID`:108, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_303890:`FileNode` {`nID`:109, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_303891:`FileNode` {`nID`:110, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_303892:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:111, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_303893:`FileNode` {`nID`:112, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.1"})
create (_303894:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:113, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_303895:`FileNode` {`nID`:114, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.1"})
create (_303896:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:115, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_303897:`FileNode` {`nID`:116, `name`:"ariane.community.core.injector-0.5.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_303898:`FileNode` {`nID`:117, `name`:"net.echinopsii.ariane.community.core.injector_0.5.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_303899:`FileNode` {`nID`:118, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.1"})
create (_303900:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:119, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.1"})
create (_303901:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:120, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.1"})
create (_303902:`FileNode` {`nID`:121, `name`:"ariane.community.distrib-0.5.1.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.1"})
create (_303903:`FileNode` {`nID`:122, `name`:"pom-ariane.community.distrib-0.5.1.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.1"})
create (_303904:`FileNode` {`nID`:123, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.1"})
create (_303905:`FileNode` {`nID`:124, `name`:"ariane.community.plugins-distrib-0.5.1.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.1"})
create (_303906:`FileNode` {`nID`:125, `name`:"ariane.community.git.repos-0.5.1.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.1"})
create (_303907:`Distribution` {`editable`:"false", `nID`:126, `name`:"community", `version`:"0.5.1"})
create (_303909:`FileNode` {`nID`:127, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.2"})
create (_303910:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:128, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.2"})
create (_303911:`FileNode` {`nID`:129, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_303912:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:130, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_303913:`FileNode` {`nID`:131, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_303914:`FileNode` {`nID`:132, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_303915:`FileNode` {`nID`:133, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_303916:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:134, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_303917:`FileNode` {`nID`:135, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_303918:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:136, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_303919:`FileNode` {`nID`:137, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_303920:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:138, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_303921:`FileNode` {`nID`:139, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_303922:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:140, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_303923:`FileNode` {`nID`:141, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_303924:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:142, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_303925:`FileNode` {`nID`:143, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_303926:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:144, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_303927:`FileNode` {`nID`:145, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_303928:`FileNode` {`nID`:146, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_303929:`FileNode` {`nID`:147, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_303930:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:148, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_303931:`FileNode` {`nID`:149, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.1"})
create (_303932:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:150, `name`:"api", `order`:1, `version`:"0.5.1"})
create (_303933:`FileNode` {`nID`:151, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.1"})
create (_303934:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:152, `name`:"blueprints", `order`:2, `version`:"0.5.1"})
create (_303935:`FileNode` {`nID`:153, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.1"})
create (_303936:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:154, `name`:"dsl", `order`:3, `version`:"0.5.1"})
create (_303937:`FileNode` {`nID`:155, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.1"})
create (_303938:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:156, `name`:"rim", `order`:4, `version`:"0.5.1"})
create (_303939:`FileNode` {`nID`:157, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.1"})
create (_303940:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:158, `name`:"ds", `order`:5, `version`:"0.5.1"})
create (_303941:`FileNode` {`nID`:159, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.1"})
create (_303942:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:160, `name`:"taitale", `order`:6, `version`:"0.5.1"})
create (_303943:`FileNode` {`nID`:161, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.1"})
create (_303944:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:162, `name`:"wat", `order`:7, `version`:"0.5.1"})
create (_303945:`FileNode` {`nID`:163, `name`:"ariane.community.core.mapping-0.5.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_303946:`FileNode` {`nID`:164, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_303947:`FileNode` {`nID`:165, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.1"})
create (_303948:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:166, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.1"})
create (_303949:`FileNode` {`nID`:167, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_303950:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:168, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_303951:`FileNode` {`nID`:169, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_303952:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:170, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_303953:`FileNode` {`nID`:171, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_303954:`FileNode` {`nID`:172, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_303955:`FileNode` {`nID`:173, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_303956:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:174, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_303957:`FileNode` {`nID`:175, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.2"})
create (_303958:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:176, `name`:"base", `order`:1, `version`:"0.5.2"})
create (_303959:`FileNode` {`nID`:177, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.2"})
create (_303960:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:178, `name`:"wat", `order`:2, `version`:"0.5.2"})
create (_303961:`FileNode` {`nID`:179, `name`:"ariane.community.core.injector-0.5.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_303962:`FileNode` {`nID`:180, `name`:"net.echinopsii.ariane.community.core.injector_0.5.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_303963:`FileNode` {`nID`:181, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.2"})
create (_303964:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:182, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.2"})
create (_303965:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:183, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.2"})
create (_303966:`FileNode` {`nID`:184, `name`:"ariane.community.distrib-0.5.2.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.2"})
create (_303967:`FileNode` {`nID`:185, `name`:"pom-ariane.community.distrib-0.5.2.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.2"})
create (_303968:`FileNode` {`nID`:186, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.2"})
create (_303969:`FileNode` {`nID`:187, `name`:"ariane.community.plugins-distrib-0.5.2.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.2"})
create (_303970:`FileNode` {`nID`:188, `name`:"ariane.community.git.repos-0.5.2.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.2"})
create (_303971:`Distribution` {`editable`:"false", `nID`:189, `name`:"community", `version`:"0.5.2"})
create (_303973:`FileNode` {`nID`:190, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.3"})
create (_303974:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:191, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.3"})
create (_303975:`FileNode` {`nID`:192, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_303976:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:193, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_303977:`FileNode` {`nID`:194, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_303978:`FileNode` {`nID`:195, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_303979:`FileNode` {`nID`:196, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_303980:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:197, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_303981:`FileNode` {`nID`:198, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_303982:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:199, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_303983:`FileNode` {`nID`:200, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_303984:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:201, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_303985:`FileNode` {`nID`:202, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_303986:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:203, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_303987:`FileNode` {`nID`:204, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_303988:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:205, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_303989:`FileNode` {`nID`:206, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_303990:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:207, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_303991:`FileNode` {`nID`:208, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_303992:`FileNode` {`nID`:209, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_303993:`FileNode` {`nID`:210, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_303994:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:211, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_303995:`FileNode` {`nID`:212, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.2"})
create (_303996:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:213, `name`:"api", `order`:1, `version`:"0.5.2"})
create (_303997:`FileNode` {`nID`:214, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.2"})
create (_303998:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:215, `name`:"blueprints", `order`:2, `version`:"0.5.2"})
create (_303999:`FileNode` {`nID`:216, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.2"})
create (_304000:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:217, `name`:"dsl", `order`:3, `version`:"0.5.2"})
create (_304001:`FileNode` {`nID`:218, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.2"})
create (_304002:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:219, `name`:"rim", `order`:4, `version`:"0.5.2"})
create (_304003:`FileNode` {`nID`:220, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.2"})
create (_304004:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:221, `name`:"ds", `order`:5, `version`:"0.5.2"})
create (_304005:`FileNode` {`nID`:222, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.2"})
create (_304006:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:223, `name`:"taitale", `order`:6, `version`:"0.5.2"})
create (_304007:`FileNode` {`nID`:224, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.2"})
create (_304008:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:225, `name`:"wat", `order`:7, `version`:"0.5.2"})
create (_304009:`FileNode` {`nID`:226, `name`:"ariane.community.core.mapping-0.5.2.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_304010:`FileNode` {`nID`:227, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.2.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_304011:`FileNode` {`nID`:228, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.2"})
create (_304012:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:229, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.2"})
create (_304013:`FileNode` {`nID`:230, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_304014:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:231, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_304015:`FileNode` {`nID`:232, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_304016:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:233, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_304017:`FileNode` {`nID`:234, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_304018:`FileNode` {`nID`:235, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_304019:`FileNode` {`nID`:236, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_304020:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:237, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_304021:`FileNode` {`nID`:238, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.2"})
create (_304022:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:239, `name`:"base", `order`:1, `version`:"0.5.2"})
create (_304023:`FileNode` {`nID`:240, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.2"})
create (_304024:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:241, `name`:"wat", `order`:2, `version`:"0.5.2"})
create (_304025:`FileNode` {`nID`:242, `name`:"ariane.community.core.injector-0.5.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_304026:`FileNode` {`nID`:243, `name`:"net.echinopsii.ariane.community.core.injector_0.5.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_304027:`FileNode` {`nID`:244, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.2"})
create (_304028:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:245, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.2"})
create (_304029:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:246, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.2"})
create (_304030:`FileNode` {`nID`:247, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.1.0"})
create (_304031:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:248, `name`:"directory", `order`:1, `version`:"0.1.0"})
create (_304032:`FileNode` {`nID`:249, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.1.0"})
create (_304033:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:250, `name`:"jsonparser", `order`:2, `version`:"0.1.0"})
create (_304034:`FileNode` {`nID`:251, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.1.0"})
create (_304035:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:252, `name`:"injector", `order`:3, `version`:"0.1.0"})
create (_304036:`FileNode` {`nID`:253, `name`:"ariane.community.plugin.rabbitmq-0.1.0.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_304037:`FileNode` {`nID`:254, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.1.0.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.1.0"})
create (_304038:`FileNode` {`nID`:255, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_304039:`FileNode` {`nID`:256, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.1.0"})
create (_304040:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:257, `name`:"rabbitmq", `version`:"0.1.0"})
create (_304041:`FileNode` {`nID`:258, `name`:"ariane.community.distrib-0.5.3.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.3"})
create (_304042:`FileNode` {`nID`:259, `name`:"pom-ariane.community.distrib-0.5.3.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.3"})
create (_304043:`FileNode` {`nID`:260, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.3"})
create (_304044:`FileNode` {`nID`:261, `name`:"ariane.community.plugins-distrib-0.5.3.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.3"})
create (_304045:`FileNode` {`nID`:262, `name`:"ariane.community.git.repos-0.5.3.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.3"})
create (_304046:`Distribution` {`editable`:"false", `nID`:263, `name`:"community", `version`:"0.5.3"})
create (_304048:`FileNode` {`nID`:264, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.0"})
create (_304049:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:265, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.0"})
create (_304050:`FileNode` {`nID`:266, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_304051:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:267, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_304052:`FileNode` {`nID`:268, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_304053:`FileNode` {`nID`:269, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_304054:`FileNode` {`nID`:270, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_304055:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:271, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_304056:`FileNode` {`nID`:272, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.0"})
create (_304057:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:273, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_304058:`FileNode` {`nID`:274, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.0"})
create (_304059:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:275, `name`:"wat", `order`:2, `version`:"0.6.0"})
create (_304060:`FileNode` {`nID`:276, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.0"})
create (_304061:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:277, `name`:"idmwat", `order`:3, `version`:"0.6.0"})
create (_304062:`FileNode` {`nID`:278, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.0"})
create (_304063:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:279, `name`:"wab", `order`:4, `version`:"0.6.0"})
create (_304064:`FileNode` {`nID`:280, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.0"})
create (_304065:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:281, `name`:"wresources", `order`:5, `version`:"0.6.0"})
create (_304066:`FileNode` {`nID`:282, `name`:"ariane.community.core.portal-0.6.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_304067:`FileNode` {`nID`:283, `name`:"net.echinopsii.ariane.community.core.portal_0.6.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_304068:`FileNode` {`nID`:284, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.0"})
create (_304069:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:285, `name`:"portal", `order`:3, `type`:"core", `version`:"0.6.0"})
create (_304070:`FileNode` {`nID`:286, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.0"})
create (_304071:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:287, `name`:"api", `order`:1, `version`:"0.6.0"})
create (_304072:`FileNode` {`nID`:288, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.0"})
create (_304073:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:289, `name`:"blueprints", `order`:2, `version`:"0.6.0"})
create (_304074:`FileNode` {`nID`:290, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.0"})
create (_304075:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:291, `name`:"rim", `order`:3, `version`:"0.6.0"})
create (_304076:`FileNode` {`nID`:292, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.0"})
create (_304077:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:293, `name`:"dsl", `order`:4, `version`:"0.6.0"})
create (_304078:`FileNode` {`nID`:294, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.0"})
create (_304079:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:295, `name`:"ds", `order`:5, `version`:"0.6.0"})
create (_304080:`FileNode` {`nID`:296, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.0"})
create (_304081:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:297, `name`:"wat", `order`:6, `version`:"0.6.0"})
create (_304082:`FileNode` {`nID`:298, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.0"})
create (_304083:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:299, `name`:"taitale", `order`:7, `version`:"0.6.0"})
create (_304084:`FileNode` {`nID`:300, `name`:"ariane.community.core.mapping-0.6.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_304085:`FileNode` {`nID`:301, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_304086:`FileNode` {`nID`:302, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.0"})
create (_304087:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:303, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.6.0"})
create (_304088:`FileNode` {`nID`:304, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.0"})
create (_304089:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:305, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_304090:`FileNode` {`nID`:306, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.0"})
create (_304091:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:307, `name`:"wat", `order`:2, `version`:"0.6.0"})
create (_304092:`FileNode` {`nID`:308, `name`:"ariane.community.core.directory-0.6.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_304093:`FileNode` {`nID`:309, `name`:"net.echinopsii.ariane.community.core.directory_0.6.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_304094:`FileNode` {`nID`:310, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.0"})
create (_304095:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:311, `name`:"directory", `order`:5, `type`:"core", `version`:"0.6.0"})
create (_304096:`FileNode` {`nID`:312, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.0"})
create (_304097:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:313, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_304098:`FileNode` {`nID`:314, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.0"})
create (_304099:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:315, `name`:"messaging", `order`:2, `version`:"0.6.0"})
create (_304100:`FileNode` {`nID`:316, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.0"})
create (_304101:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:317, `name`:"wat", `order`:3, `version`:"0.6.0"})
create (_304102:`FileNode` {`nID`:318, `name`:"ariane.community.core.injector-0.6.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_304103:`FileNode` {`nID`:319, `name`:"net.echinopsii.ariane.community.core.injector_0.6.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_304104:`FileNode` {`nID`:320, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.0"})
create (_304105:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:321, `name`:"injector", `order`:6, `type`:"core", `version`:"0.6.0"})
create (_304106:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:322, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.6.0"})
create (_304107:`FileNode` {`nID`:323, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.0"})
create (_304108:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:324, `name`:"directory", `order`:1, `version`:"0.2.0"})
create (_304109:`FileNode` {`nID`:325, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.0"})
create (_304110:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:326, `name`:"jsonparser", `order`:2, `version`:"0.2.0"})
create (_304111:`FileNode` {`nID`:327, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.0"})
create (_304112:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:328, `name`:"injector", `order`:3, `version`:"0.2.0"})
create (_304113:`FileNode` {`nID`:329, `name`:"ariane.community.plugin.rabbitmq-0.2.0.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.0"})
create (_304114:`FileNode` {`nID`:330, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.0.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.0"})
create (_304115:`FileNode` {`nID`:331, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.0"})
create (_304116:`FileNode` {`nID`:332, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.0"})
create (_304117:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:333, `name`:"rabbitmq", `version`:"0.2.0"})
create (_304118:`FileNode` {`nID`:334, `name`:"ariane.community.distrib-0.6.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.0"})
create (_304119:`FileNode` {`nID`:335, `name`:"pom-ariane.community.distrib-0.6.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.0"})
create (_304120:`FileNode` {`nID`:336, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.0"})
create (_304121:`FileNode` {`nID`:337, `name`:"ariane.community.plugins-distrib-0.6.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.0"})
create (_304122:`FileNode` {`nID`:338, `name`:"ariane.community.git.repos-0.6.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.0"})
create (_304123:`Distribution` {`editable`:"false", `nID`:339, `name`:"community", `version`:"0.6.0"})
create (_304125:`FileNode` {`nID`:340, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.1"})
create (_304126:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:341, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.1"})
create (_304127:`FileNode` {`nID`:342, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_304128:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:343, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_304129:`FileNode` {`nID`:344, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_304130:`FileNode` {`nID`:345, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_304131:`FileNode` {`nID`:346, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_304132:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:347, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_304133:`FileNode` {`nID`:348, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.1"})
create (_304134:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:349, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_304135:`FileNode` {`nID`:350, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.1"})
create (_304136:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:351, `name`:"wat", `order`:2, `version`:"0.6.1"})
create (_304137:`FileNode` {`nID`:352, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.1"})
create (_304138:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:353, `name`:"idmwat", `order`:3, `version`:"0.6.1"})
create (_304139:`FileNode` {`nID`:354, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.1"})
create (_304140:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:355, `name`:"wab", `order`:4, `version`:"0.6.1"})
create (_304141:`FileNode` {`nID`:356, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.1"})
create (_304142:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:357, `name`:"wresources", `order`:5, `version`:"0.6.1"})
create (_304143:`FileNode` {`nID`:358, `name`:"ariane.community.core.portal-0.6.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_304144:`FileNode` {`nID`:359, `name`:"net.echinopsii.ariane.community.core.portal_0.6.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_304145:`FileNode` {`nID`:360, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.1"})
create (_304146:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:361, `name`:"portal", `order`:3, `type`:"core", `version`:"0.6.1"})
create (_304147:`FileNode` {`nID`:362, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.1"})
create (_304148:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:363, `name`:"api", `order`:1, `version`:"0.6.1"})
create (_304149:`FileNode` {`nID`:364, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.1"})
create (_304150:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:365, `name`:"blueprints", `order`:2, `version`:"0.6.1"})
create (_304151:`FileNode` {`nID`:366, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.1"})
create (_304152:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:367, `name`:"rim", `order`:3, `version`:"0.6.1"})
create (_304153:`FileNode` {`nID`:368, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.1"})
create (_304154:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:369, `name`:"dsl", `order`:4, `version`:"0.6.1"})
create (_304155:`FileNode` {`nID`:370, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.1"})
create (_304156:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:371, `name`:"ds", `order`:5, `version`:"0.6.1"})
create (_304157:`FileNode` {`nID`:372, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.1"})
create (_304158:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:373, `name`:"wat", `order`:6, `version`:"0.6.1"})
create (_304159:`FileNode` {`nID`:374, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.1"})
create (_304160:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:375, `name`:"taitale", `order`:7, `version`:"0.6.1"})
create (_304161:`FileNode` {`nID`:376, `name`:"ariane.community.core.mapping-0.6.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_304162:`FileNode` {`nID`:377, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_304163:`FileNode` {`nID`:378, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.1"})
create (_304164:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:379, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.6.1"})
create (_304165:`FileNode` {`nID`:380, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.1"})
create (_304166:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:381, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_304167:`FileNode` {`nID`:382, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.1"})
create (_304168:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:383, `name`:"wat", `order`:2, `version`:"0.6.1"})
create (_304169:`FileNode` {`nID`:384, `name`:"ariane.community.core.directory-0.6.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_304170:`FileNode` {`nID`:385, `name`:"net.echinopsii.ariane.community.core.directory_0.6.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_304171:`FileNode` {`nID`:386, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.1"})
create (_304172:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:387, `name`:"directory", `order`:5, `type`:"core", `version`:"0.6.1"})
create (_304173:`FileNode` {`nID`:388, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.1"})
create (_304174:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:389, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_304175:`FileNode` {`nID`:390, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.1"})
create (_304176:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:391, `name`:"messaging", `order`:2, `version`:"0.6.1"})
create (_304177:`FileNode` {`nID`:392, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.1"})
create (_304178:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:393, `name`:"wat", `order`:3, `version`:"0.6.1"})
create (_304179:`FileNode` {`nID`:394, `name`:"ariane.community.core.injector-0.6.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_304180:`FileNode` {`nID`:395, `name`:"net.echinopsii.ariane.community.core.injector_0.6.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_304181:`FileNode` {`nID`:396, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.1"})
create (_304182:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:397, `name`:"injector", `order`:6, `type`:"core", `version`:"0.6.1"})
create (_304183:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:398, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.6.1"})
create (_304184:`FileNode` {`nID`:399, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.1"})
create (_304185:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:400, `name`:"directory", `order`:1, `version`:"0.2.1"})
create (_304186:`FileNode` {`nID`:401, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.1"})
create (_304187:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:402, `name`:"jsonparser", `order`:2, `version`:"0.2.1"})
create (_304188:`FileNode` {`nID`:403, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.1"})
create (_304189:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:404, `name`:"injector", `order`:3, `version`:"0.2.1"})
create (_304190:`FileNode` {`nID`:405, `name`:"ariane.community.plugin.rabbitmq-0.2.1.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.1"})
create (_304191:`FileNode` {`nID`:406, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.1.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.1"})
create (_304192:`FileNode` {`nID`:407, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.1"})
create (_304193:`FileNode` {`nID`:408, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.1"})
create (_304194:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:409, `name`:"rabbitmq", `version`:"0.2.1"})
create (_304195:`FileNode` {`nID`:410, `name`:"ariane.community.distrib-0.6.1.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.1"})
create (_304196:`FileNode` {`nID`:411, `name`:"pom-ariane.community.distrib-0.6.1.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.1"})
create (_304197:`FileNode` {`nID`:412, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.1"})
create (_304198:`FileNode` {`nID`:413, `name`:"ariane.community.plugins-distrib-0.6.1.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.1"})
create (_304199:`FileNode` {`nID`:414, `name`:"ariane.community.git.repos-0.6.1.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.1"})
create (_304200:`Distribution` {`editable`:"false", `nID`:415, `name`:"community", `version`:"0.6.1"})
create (_304202:`FileNode` {`nID`:416, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.2"})
create (_304203:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:417, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.2"})
create (_304204:`FileNode` {`nID`:418, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_304205:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:419, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_304206:`FileNode` {`nID`:420, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_304207:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:421, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_304208:`FileNode` {`nID`:422, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_304209:`FileNode` {`nID`:423, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_304210:`FileNode` {`nID`:424, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_304211:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:425, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_304212:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:426, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.2"})
create (_304213:`FileNode` {`nID`:427, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.1"})
create (_304214:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:428, `name`:"base", `order`:1, `version`:"0.4.1"})
create (_304215:`FileNode` {`nID`:429, `name`:"ariane.community.core.idm-0.4.1.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.1"})
create (_304216:`FileNode` {`nID`:430, `name`:"net.echinopsii.ariane.community.core.idm_0.4.1.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.1"})
create (_304217:`FileNode` {`nID`:431, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.1"})
create (_304218:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:432, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.1"})
create (_304219:`FileNode` {`nID`:433, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.2"})
create (_304220:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:434, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_304221:`FileNode` {`nID`:435, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.2"})
create (_304222:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:436, `name`:"wat", `order`:2, `version`:"0.6.2"})
create (_304223:`FileNode` {`nID`:437, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.2"})
create (_304224:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:438, `name`:"idmwat", `order`:3, `version`:"0.6.2"})
create (_304225:`FileNode` {`nID`:439, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.2"})
create (_304226:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:440, `name`:"wab", `order`:4, `version`:"0.6.2"})
create (_304227:`FileNode` {`nID`:441, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.2"})
create (_304228:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:442, `name`:"wresources", `order`:5, `version`:"0.6.2"})
create (_304229:`FileNode` {`nID`:443, `name`:"ariane.community.core.portal-0.6.2.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_304230:`FileNode` {`nID`:444, `name`:"net.echinopsii.ariane.community.core.portal_0.6.2.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_304231:`FileNode` {`nID`:445, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.2"})
create (_304232:`FileNode` {`nID`:446, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.2"})
create (_304233:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:447, `name`:"api", `order`:1, `version`:"0.6.2"})
create (_304234:`FileNode` {`nID`:448, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.2"})
create (_304235:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:449, `name`:"blueprints", `order`:2, `version`:"0.6.2"})
create (_304236:`FileNode` {`nID`:450, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.2"})
create (_304237:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:451, `name`:"rim", `order`:3, `version`:"0.6.2"})
create (_304238:`FileNode` {`nID`:452, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.2"})
create (_304239:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:453, `name`:"dsl", `order`:4, `version`:"0.6.2"})
create (_304240:`FileNode` {`nID`:454, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.2"})
create (_304241:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:455, `name`:"ds", `order`:5, `version`:"0.6.2"})
create (_304242:`FileNode` {`nID`:456, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.2"})
create (_304243:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:457, `name`:"wat", `order`:6, `version`:"0.6.2"})
create (_304244:`FileNode` {`nID`:458, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.2"})
create (_304245:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:459, `name`:"taitale", `order`:7, `version`:"0.6.2"})
create (_304246:`FileNode` {`nID`:460, `name`:"ariane.community.core.mapping-0.6.2.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_304247:`FileNode` {`nID`:461, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.2.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_304248:`FileNode` {`nID`:462, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.2"})
create (_304249:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:463, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.2"})
create (_304250:`FileNode` {`nID`:464, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.2"})
create (_304251:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:465, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_304252:`FileNode` {`nID`:466, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.2"})
create (_304253:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:467, `name`:"wat", `order`:2, `version`:"0.6.2"})
create (_304254:`FileNode` {`nID`:468, `name`:"ariane.community.core.directory-0.6.2.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_304255:`FileNode` {`nID`:469, `name`:"net.echinopsii.ariane.community.core.directory_0.6.2.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_304256:`FileNode` {`nID`:470, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.2"})
create (_304257:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:471, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.2"})
create (_304258:`FileNode` {`nID`:472, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.2"})
create (_304259:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:473, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_304260:`FileNode` {`nID`:474, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.2"})
create (_304261:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:475, `name`:"messaging", `order`:2, `version`:"0.6.2"})
create (_304262:`FileNode` {`nID`:476, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.2"})
create (_304263:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:477, `name`:"wat", `order`:3, `version`:"0.6.2"})
create (_304264:`FileNode` {`nID`:478, `name`:"ariane.community.core.injector-0.6.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_304265:`FileNode` {`nID`:479, `name`:"net.echinopsii.ariane.community.core.injector_0.6.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_304266:`FileNode` {`nID`:480, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.2"})
create (_304267:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:481, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.2"})
create (_304268:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:482, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.2"})
create (_304269:`FileNode` {`nID`:483, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.2"})
create (_304270:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:484, `name`:"directory", `order`:1, `version`:"0.2.2"})
create (_304271:`FileNode` {`nID`:485, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.2"})
create (_304272:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:486, `name`:"jsonparser", `order`:2, `version`:"0.2.2"})
create (_304273:`FileNode` {`nID`:487, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.2"})
create (_304274:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:488, `name`:"injector", `order`:3, `version`:"0.2.2"})
create (_304275:`FileNode` {`nID`:489, `name`:"ariane.community.plugin.rabbitmq-0.2.2.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.2"})
create (_304276:`FileNode` {`nID`:490, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.2.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.2"})
create (_304277:`FileNode` {`nID`:491, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.2"})
create (_304278:`FileNode` {`nID`:492, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.2"})
create (_304279:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:493, `name`:"rabbitmq", `version`:"0.2.2"})
create (_304280:`FileNode` {`nID`:494, `name`:"ariane.community.distrib-0.6.2.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.2"})
create (_304281:`FileNode` {`nID`:495, `name`:"pom-ariane.community.distrib-0.6.2.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.2"})
create (_304282:`FileNode` {`nID`:496, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.2"})
create (_304283:`FileNode` {`nID`:497, `name`:"ariane.community.plugins-distrib-0.6.2.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.2"})
create (_304284:`FileNode` {`nID`:498, `name`:"ariane.community.git.repos-0.6.2.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.2"})
create (_304285:`Distribution` {`editable`:"false", `nID`:499, `name`:"community", `version`:"0.6.2"})
create (_304287:`FileNode` {`nID`:500, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.3"})
create (_304288:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:501, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.3"})
create (_304289:`FileNode` {`nID`:502, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_304290:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:503, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_304291:`FileNode` {`nID`:504, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_304292:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:505, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_304293:`FileNode` {`nID`:506, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_304294:`FileNode` {`nID`:507, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_304295:`FileNode` {`nID`:508, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_304296:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:509, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_304297:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:510, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.3"})
create (_304298:`FileNode` {`nID`:511, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2"})
create (_304299:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:512, `name`:"base", `order`:1, `version`:"0.4.2"})
create (_304300:`FileNode` {`nID`:513, `name`:"ariane.community.core.idm-0.4.2.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2"})
create (_304301:`FileNode` {`nID`:514, `name`:"net.echinopsii.ariane.community.core.idm_0.4.2.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2"})
create (_304302:`FileNode` {`nID`:515, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2"})
create (_304303:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:516, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2"})
create (_304304:`FileNode` {`nID`:517, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.3"})
create (_304305:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:518, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_304306:`FileNode` {`nID`:519, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.3"})
create (_304307:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:520, `name`:"wat", `order`:2, `version`:"0.6.3"})
create (_304308:`FileNode` {`nID`:521, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.3"})
create (_304309:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:522, `name`:"idmwat", `order`:3, `version`:"0.6.3"})
create (_304310:`FileNode` {`nID`:523, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.3"})
create (_304311:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:524, `name`:"wab", `order`:4, `version`:"0.6.3"})
create (_304312:`FileNode` {`nID`:525, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.3"})
create (_304313:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:526, `name`:"wresources", `order`:5, `version`:"0.6.3"})
create (_304314:`FileNode` {`nID`:527, `name`:"ariane.community.core.portal-0.6.3.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_304315:`FileNode` {`nID`:528, `name`:"net.echinopsii.ariane.community.core.portal_0.6.3.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_304316:`FileNode` {`nID`:529, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.3"})
create (_304317:`FileNode` {`nID`:530, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.3"})
create (_304318:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:531, `name`:"api", `order`:1, `version`:"0.6.3"})
create (_304319:`FileNode` {`nID`:532, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.3"})
create (_304320:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:533, `name`:"blueprints", `order`:2, `version`:"0.6.3"})
create (_304321:`FileNode` {`nID`:534, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.3"})
create (_304322:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:535, `name`:"rim", `order`:3, `version`:"0.6.3"})
create (_304323:`FileNode` {`nID`:536, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.3"})
create (_304324:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:537, `name`:"dsl", `order`:4, `version`:"0.6.3"})
create (_304325:`FileNode` {`nID`:538, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.3"})
create (_304326:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:539, `name`:"ds", `order`:5, `version`:"0.6.3"})
create (_304327:`FileNode` {`nID`:540, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.3"})
create (_304328:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:541, `name`:"wat", `order`:6, `version`:"0.6.3"})
create (_304329:`FileNode` {`nID`:542, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.3"})
create (_304330:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:543, `name`:"taitale", `order`:7, `version`:"0.6.3"})
create (_304331:`FileNode` {`nID`:544, `name`:"ariane.community.core.mapping-0.6.3.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_304332:`FileNode` {`nID`:545, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.3.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_304333:`FileNode` {`nID`:546, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.3"})
create (_304334:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:547, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.3"})
create (_304335:`FileNode` {`nID`:548, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.3"})
create (_304336:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:549, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_304337:`FileNode` {`nID`:550, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.3"})
create (_304338:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:551, `name`:"wat", `order`:2, `version`:"0.6.3"})
create (_304339:`FileNode` {`nID`:552, `name`:"ariane.community.core.directory-0.6.3.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_304340:`FileNode` {`nID`:553, `name`:"net.echinopsii.ariane.community.core.directory_0.6.3.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_304341:`FileNode` {`nID`:554, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.3"})
create (_304342:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:555, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.3"})
create (_304343:`FileNode` {`nID`:556, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.3"})
create (_304344:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:557, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_304345:`FileNode` {`nID`:558, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.3"})
create (_304346:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:559, `name`:"messaging", `order`:2, `version`:"0.6.3"})
create (_304347:`FileNode` {`nID`:560, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.3"})
create (_304348:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:561, `name`:"wat", `order`:3, `version`:"0.6.3"})
create (_304349:`FileNode` {`nID`:562, `name`:"ariane.community.core.injector-0.6.3.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_304350:`FileNode` {`nID`:563, `name`:"net.echinopsii.ariane.community.core.injector_0.6.3.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_304351:`FileNode` {`nID`:564, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.3"})
create (_304352:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:565, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.3"})
create (_304353:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:566, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.3"})
create (_304354:`FileNode` {`nID`:567, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.3"})
create (_304355:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:568, `name`:"directory", `order`:1, `version`:"0.2.3"})
create (_304356:`FileNode` {`nID`:569, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.3"})
create (_304357:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:570, `name`:"jsonparser", `order`:2, `version`:"0.2.3"})
create (_304358:`FileNode` {`nID`:571, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.3"})
create (_304359:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:572, `name`:"injector", `order`:3, `version`:"0.2.3"})
create (_304360:`FileNode` {`nID`:573, `name`:"ariane.community.plugin.rabbitmq-0.2.3.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.3"})
create (_304361:`FileNode` {`nID`:574, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.3.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.3"})
create (_304362:`FileNode` {`nID`:575, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.3"})
create (_304363:`FileNode` {`nID`:576, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.3"})
create (_304364:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:577, `name`:"rabbitmq", `version`:"0.2.3"})
create (_304365:`FileNode` {`nID`:578, `name`:"ariane.community.distrib-0.6.3.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.3"})
create (_304366:`FileNode` {`nID`:579, `name`:"pom-ariane.community.distrib-0.6.3.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.3"})
create (_304367:`FileNode` {`nID`:580, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.3"})
create (_304368:`FileNode` {`nID`:581, `name`:"ariane.community.plugins-distrib-0.6.3.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.3"})
create (_304369:`FileNode` {`nID`:582, `name`:"ariane.community.git.repos-0.6.3.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.3"})
create (_304370:`Distribution` {`editable`:"false", `nID`:583, `name`:"community", `version`:"0.6.3"})
create (_304372:`FileNode` {`nID`:584, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.4-SNAPSHOT"})
create (_304373:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:585, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.4-SNAPSHOT"})
create (_304374:`FileNode` {`nID`:586, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_304375:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:587, `name`:"api", `order`:1, `version`:"0.1.1-SNAPSHOT"})
create (_304376:`FileNode` {`nID`:588, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_304377:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:589, `name`:"rabbitmq", `order`:2, `version`:"0.1.1-SNAPSHOT"})
create (_304378:`FileNode` {`nID`:590, `name`:"ariane.community.messaging-master.SNAPSHOT.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.1-SNAPSHOT"})
create (_304379:`FileNode` {`nID`:591, `name`:"net.echinopsii.ariane.community.messaging_master.SNAPSHOT.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.1-SNAPSHOT"})
create (_304380:`FileNode` {`nID`:592, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_304381:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:593, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.1-SNAPSHOT"})
create (_304382:`FileNode` {`nID`:594, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_304383:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:595, `name`:"base", `order`:1, `version`:"0.4.2-SNAPSHOT"})
create (_304384:`FileNode` {`nID`:596, `name`:"ariane.community.core.idm-master.SNAPSHOT.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2-SNAPSHOT"})
create (_304385:`FileNode` {`nID`:597, `name`:"net.echinopsii.ariane.community.core.idm_master.SNAPSHOT.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2-SNAPSHOT"})
create (_304386:`FileNode` {`nID`:598, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_304387:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:599, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2-SNAPSHOT"})
create (_304388:`FileNode` {`nID`:600, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_304389:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:601, `name`:"base", `order`:1, `version`:"0.6.4-SNAPSHOT"})
create (_304390:`FileNode` {`nID`:602, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_304391:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:603, `name`:"wat", `order`:2, `version`:"0.6.4-SNAPSHOT"})
create (_304392:`FileNode` {`nID`:604, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_304393:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:605, `name`:"idmwat", `order`:3, `version`:"0.6.4-SNAPSHOT"})
create (_304394:`FileNode` {`nID`:606, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_304395:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:607, `name`:"wab", `order`:4, `version`:"0.6.4-SNAPSHOT"})
create (_304396:`FileNode` {`nID`:608, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_304397:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:609, `name`:"wresources", `order`:5, `version`:"0.6.4-SNAPSHOT"})
create (_304398:`FileNode` {`nID`:610, `name`:"ariane.community.core.portal-master.SNAPSHOT.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.4-SNAPSHOT"})
create (_304399:`FileNode` {`nID`:611, `name`:"net.echinopsii.ariane.community.core.portal_master.SNAPSHOT.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.4-SNAPSHOT"})
create (_304400:`FileNode` {`nID`:612, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_304401:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:613, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.4-SNAPSHOT"})
create (_304402:`FileNode` {`nID`:614, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_304403:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:615, `name`:"api", `order`:1, `version`:"0.6.4-SNAPSHOT"})
create (_304404:`FileNode` {`nID`:616, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_304405:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:617, `name`:"blueprints", `order`:2, `version`:"0.6.4-SNAPSHOT"})
create (_304406:`FileNode` {`nID`:618, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_304407:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:619, `name`:"rim", `order`:3, `version`:"0.6.4-SNAPSHOT"})
create (_304408:`FileNode` {`nID`:620, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_304409:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:621, `name`:"dsl", `order`:4, `version`:"0.6.4-SNAPSHOT"})
create (_304410:`FileNode` {`nID`:622, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_304411:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:623, `name`:"ds", `order`:5, `version`:"0.6.4-SNAPSHOT"})
create (_304412:`FileNode` {`nID`:624, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_304413:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:625, `name`:"taitale", `order`:6, `version`:"0.6.4-SNAPSHOT"})
create (_304414:`FileNode` {`nID`:626, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_304415:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:627, `name`:"wat", `order`:7, `version`:"0.6.4-SNAPSHOT"})
create (_304416:`FileNode` {`nID`:628, `name`:"ariane.community.core.mapping-master.SNAPSHOT.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.4-SNAPSHOT"})
create (_304417:`FileNode` {`nID`:629, `name`:"net.echinopsii.ariane.community.core.mapping_master.SNAPSHOT.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.4-SNAPSHOT"})
create (_304418:`FileNode` {`nID`:630, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_304419:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:631, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.4-SNAPSHOT"})
create (_304420:`FileNode` {`nID`:632, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_304421:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:633, `name`:"base", `order`:1, `version`:"0.6.4-SNAPSHOT"})
create (_304422:`FileNode` {`nID`:634, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_304423:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:635, `name`:"wat", `order`:2, `version`:"0.6.4-SNAPSHOT"})
create (_304424:`FileNode` {`nID`:636, `name`:"ariane.community.core.directory-master.SNAPSHOT.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.4-SNAPSHOT"})
create (_304425:`FileNode` {`nID`:637, `name`:"net.echinopsii.ariane.community.core.directory_master.SNAPSHOT.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.4-SNAPSHOT"})
create (_304426:`FileNode` {`nID`:638, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_304427:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:639, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.4-SNAPSHOT"})
create (_304428:`FileNode` {`nID`:640, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_304429:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:641, `name`:"base", `order`:1, `version`:"0.6.4-SNAPSHOT"})
create (_304430:`FileNode` {`nID`:642, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_304431:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:643, `name`:"messaging", `order`:2, `version`:"0.6.4-SNAPSHOT"})
create (_304432:`FileNode` {`nID`:644, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_304433:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:645, `name`:"wat", `order`:3, `version`:"0.6.4-SNAPSHOT"})
create (_304434:`FileNode` {`nID`:646, `name`:"ariane.community.core.injector-master.SNAPSHOT.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.4-SNAPSHOT"})
create (_304435:`FileNode` {`nID`:647, `name`:"net.echinopsii.ariane.community.core.injector_master.SNAPSHOT.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.4-SNAPSHOT"})
create (_304436:`FileNode` {`nID`:648, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_304437:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:649, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.4-SNAPSHOT"})
create (_304438:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:650, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.4-SNAPSHOT"})
create (_304439:`FileNode` {`nID`:651, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_304440:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:652, `name`:"directory", `order`:1, `version`:"0.2.4-SNAPSHOT"})
create (_304441:`FileNode` {`nID`:653, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_304442:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:654, `name`:"jsonparser", `order`:2, `version`:"0.2.4-SNAPSHOT"})
create (_304443:`FileNode` {`nID`:655, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_304444:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:656, `name`:"injector", `order`:3, `version`:"0.2.4-SNAPSHOT"})
create (_304445:`FileNode` {`nID`:657, `name`:"ariane.community.plugin.rabbitmq-master.SNAPSHOT.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.4-SNAPSHOT"})
create (_304446:`FileNode` {`nID`:658, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_master.SNAPSHOT.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.4-SNAPSHOT"})
create (_304447:`FileNode` {`nID`:659, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_304448:`FileNode` {`nID`:660, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.4-SNAPSHOT"})
create (_304449:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:661, `name`:"rabbitmq", `version`:"0.2.4-SNAPSHOT"})
create (_304450:`FileNode` {`nID`:662, `name`:"ariane.community.distrib-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.4-SNAPSHOT"})
create (_304451:`FileNode` {`nID`:663, `name`:"pom-ariane.community.distrib-master.SNAPSHOT.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.4-SNAPSHOT"})
create (_304452:`FileNode` {`nID`:664, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.4-SNAPSHOT"})
create (_304453:`FileNode` {`nID`:665, `name`:"ariane.community.plugins-distrib-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.4-SNAPSHOT"})
create (_304454:`FileNode` {`nID`:666, `name`:"ariane.community.git.repos-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.4-SNAPSHOT"})
create (_304455:`Distribution` {`editable`:"false", `nID`:667, `name`:"community", `version`:"0.6.4-SNAPSHOT"})
create _303782-[:`DEPENDS ON`]->_303843
create _303782-[:`CONTAINS`]->_303781
create _303784-[:`CONTAINS`]->_303783
create _303788-[:`COMPOSED OF`]->_303784
create _303788-[:`DEPENDS ON`]->_303843
create _303788-[:`CONTAINS`]->_303787
create _303788-[:`CONTAINS`]->_303786
create _303788-[:`CONTAINS`]->_303785
create _303790-[:`CONTAINS`]->_303789
create _303792-[:`CONTAINS`]->_303791
create _303794-[:`CONTAINS`]->_303793
create _303796-[:`CONTAINS`]->_303795
create _303798-[:`CONTAINS`]->_303797
create _303802-[:`COMPOSED OF`]->_303798
create _303802-[:`COMPOSED OF`]->_303796
create _303802-[:`COMPOSED OF`]->_303794
create _303802-[:`COMPOSED OF`]->_303792
create _303802-[:`COMPOSED OF`]->_303790
create _303802-[:`DEPENDS ON`]->_303843
create _303802-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_303788
create _303802-[:`CONTAINS`]->_303801
create _303802-[:`CONTAINS`]->_303800
create _303802-[:`CONTAINS`]->_303799
create _303804-[:`CONTAINS`]->_303803
create _303806-[:`CONTAINS`]->_303805
create _303808-[:`CONTAINS`]->_303807
create _303810-[:`CONTAINS`]->_303809
create _303812-[:`COMPOSED OF`]->_303810
create _303812-[:`COMPOSED OF`]->_303808
create _303812-[:`COMPOSED OF`]->_303806
create _303812-[:`COMPOSED OF`]->_303804
create _303812-[:`CONTAINS`]->_303811
create _303814-[:`CONTAINS`]->_303813
create _303816-[:`CONTAINS`]->_303815
create _303820-[:`COMPOSED OF`]->_303816
create _303820-[:`COMPOSED OF`]->_303814
create _303820-[:`COMPOSED OF`]->_303812
create _303820-[:`DEPENDS ON`]->_303843
create _303820-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_303788
create _303820-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_303802
create _303820-[:`CONTAINS`]->_303819
create _303820-[:`CONTAINS`]->_303818
create _303820-[:`CONTAINS`]->_303817
create _303822-[:`CONTAINS`]->_303821
create _303824-[:`CONTAINS`]->_303823
create _303828-[:`COMPOSED OF`]->_303824
create _303828-[:`COMPOSED OF`]->_303822
create _303828-[:`DEPENDS ON`]->_303843
create _303828-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_303802
create _303828-[:`CONTAINS`]->_303827
create _303828-[:`CONTAINS`]->_303826
create _303828-[:`CONTAINS`]->_303825
create _303830-[:`CONTAINS`]->_303829
create _303832-[:`CONTAINS`]->_303831
create _303836-[:`COMPOSED OF`]->_303832
create _303836-[:`COMPOSED OF`]->_303830
create _303836-[:`DEPENDS ON`]->_303843
create _303836-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_303802
create _303836-[:`CONTAINS`]->_303835
create _303836-[:`CONTAINS`]->_303834
create _303836-[:`CONTAINS`]->_303833
create _303837-[:`DEPENDS ON`]->_303843
create _303843-[:`CONTAINS`]->_303842
create _303843-[:`CONTAINS`]->_303841
create _303843-[:`CONTAINS`]->_303840
create _303843-[:`CONTAINS`]->_303839
create _303843-[:`CONTAINS`]->_303838
create _303846-[:`DEPENDS ON`]->_303907
create _303846-[:`CONTAINS`]->_303845
create _303848-[:`CONTAINS`]->_303847
create _303852-[:`COMPOSED OF`]->_303848
create _303852-[:`DEPENDS ON`]->_303907
create _303852-[:`CONTAINS`]->_303851
create _303852-[:`CONTAINS`]->_303850
create _303852-[:`CONTAINS`]->_303849
create _303854-[:`CONTAINS`]->_303853
create _303856-[:`CONTAINS`]->_303855
create _303858-[:`CONTAINS`]->_303857
create _303860-[:`CONTAINS`]->_303859
create _303862-[:`CONTAINS`]->_303861
create _303866-[:`COMPOSED OF`]->_303862
create _303866-[:`COMPOSED OF`]->_303860
create _303866-[:`COMPOSED OF`]->_303858
create _303866-[:`COMPOSED OF`]->_303856
create _303866-[:`COMPOSED OF`]->_303854
create _303866-[:`DEPENDS ON`]->_303907
create _303866-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_303852
create _303866-[:`CONTAINS`]->_303865
create _303866-[:`CONTAINS`]->_303864
create _303866-[:`CONTAINS`]->_303863
create _303868-[:`CONTAINS`]->_303867
create _303870-[:`CONTAINS`]->_303869
create _303872-[:`CONTAINS`]->_303871
create _303874-[:`CONTAINS`]->_303873
create _303876-[:`COMPOSED OF`]->_303874
create _303876-[:`COMPOSED OF`]->_303872
create _303876-[:`COMPOSED OF`]->_303870
create _303876-[:`COMPOSED OF`]->_303868
create _303876-[:`CONTAINS`]->_303875
create _303878-[:`CONTAINS`]->_303877
create _303880-[:`CONTAINS`]->_303879
create _303884-[:`COMPOSED OF`]->_303880
create _303884-[:`COMPOSED OF`]->_303878
create _303884-[:`COMPOSED OF`]->_303876
create _303884-[:`DEPENDS ON`]->_303907
create _303884-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_303852
create _303884-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_303866
create _303884-[:`CONTAINS`]->_303883
create _303884-[:`CONTAINS`]->_303882
create _303884-[:`CONTAINS`]->_303881
create _303886-[:`CONTAINS`]->_303885
create _303888-[:`CONTAINS`]->_303887
create _303892-[:`COMPOSED OF`]->_303888
create _303892-[:`COMPOSED OF`]->_303886
create _303892-[:`DEPENDS ON`]->_303907
create _303892-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_303866
create _303892-[:`CONTAINS`]->_303891
create _303892-[:`CONTAINS`]->_303890
create _303892-[:`CONTAINS`]->_303889
create _303894-[:`CONTAINS`]->_303893
create _303896-[:`CONTAINS`]->_303895
create _303900-[:`COMPOSED OF`]->_303896
create _303900-[:`COMPOSED OF`]->_303894
create _303900-[:`DEPENDS ON`]->_303907
create _303900-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_303866
create _303900-[:`CONTAINS`]->_303899
create _303900-[:`CONTAINS`]->_303898
create _303900-[:`CONTAINS`]->_303897
create _303901-[:`DEPENDS ON`]->_303907
create _303907-[:`CONTAINS`]->_303906
create _303907-[:`CONTAINS`]->_303905
create _303907-[:`CONTAINS`]->_303904
create _303907-[:`CONTAINS`]->_303903
create _303907-[:`CONTAINS`]->_303902
create _303910-[:`DEPENDS ON`]->_303971
create _303910-[:`CONTAINS`]->_303909
create _303912-[:`CONTAINS`]->_303911
create _303916-[:`COMPOSED OF`]->_303912
create _303916-[:`DEPENDS ON`]->_303971
create _303916-[:`CONTAINS`]->_303915
create _303916-[:`CONTAINS`]->_303914
create _303916-[:`CONTAINS`]->_303913
create _303918-[:`CONTAINS`]->_303917
create _303920-[:`CONTAINS`]->_303919
create _303922-[:`CONTAINS`]->_303921
create _303924-[:`CONTAINS`]->_303923
create _303926-[:`CONTAINS`]->_303925
create _303930-[:`COMPOSED OF`]->_303926
create _303930-[:`COMPOSED OF`]->_303924
create _303930-[:`COMPOSED OF`]->_303922
create _303930-[:`COMPOSED OF`]->_303920
create _303930-[:`COMPOSED OF`]->_303918
create _303930-[:`DEPENDS ON`]->_303971
create _303930-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_303916
create _303930-[:`CONTAINS`]->_303929
create _303930-[:`CONTAINS`]->_303928
create _303930-[:`CONTAINS`]->_303927
create _303932-[:`CONTAINS`]->_303931
create _303934-[:`CONTAINS`]->_303933
create _303936-[:`CONTAINS`]->_303935
create _303938-[:`CONTAINS`]->_303937
create _303940-[:`COMPOSED OF`]->_303938
create _303940-[:`COMPOSED OF`]->_303936
create _303940-[:`COMPOSED OF`]->_303934
create _303940-[:`COMPOSED OF`]->_303932
create _303940-[:`CONTAINS`]->_303939
create _303942-[:`CONTAINS`]->_303941
create _303944-[:`CONTAINS`]->_303943
create _303948-[:`COMPOSED OF`]->_303944
create _303948-[:`COMPOSED OF`]->_303942
create _303948-[:`COMPOSED OF`]->_303940
create _303948-[:`DEPENDS ON`]->_303971
create _303948-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_303916
create _303948-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_303930
create _303948-[:`CONTAINS`]->_303947
create _303948-[:`CONTAINS`]->_303946
create _303948-[:`CONTAINS`]->_303945
create _303950-[:`CONTAINS`]->_303949
create _303952-[:`CONTAINS`]->_303951
create _303956-[:`COMPOSED OF`]->_303952
create _303956-[:`COMPOSED OF`]->_303950
create _303956-[:`DEPENDS ON`]->_303971
create _303956-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_303930
create _303956-[:`CONTAINS`]->_303955
create _303956-[:`CONTAINS`]->_303954
create _303956-[:`CONTAINS`]->_303953
create _303958-[:`CONTAINS`]->_303957
create _303960-[:`CONTAINS`]->_303959
create _303964-[:`COMPOSED OF`]->_303960
create _303964-[:`COMPOSED OF`]->_303958
create _303964-[:`DEPENDS ON`]->_303971
create _303964-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_303930
create _303964-[:`CONTAINS`]->_303963
create _303964-[:`CONTAINS`]->_303962
create _303964-[:`CONTAINS`]->_303961
create _303965-[:`DEPENDS ON`]->_303971
create _303971-[:`CONTAINS`]->_303970
create _303971-[:`CONTAINS`]->_303969
create _303971-[:`CONTAINS`]->_303968
create _303971-[:`CONTAINS`]->_303967
create _303971-[:`CONTAINS`]->_303966
create _303974-[:`DEPENDS ON`]->_304046
create _303974-[:`CONTAINS`]->_303973
create _303976-[:`CONTAINS`]->_303975
create _303980-[:`COMPOSED OF`]->_303976
create _303980-[:`DEPENDS ON`]->_304046
create _303980-[:`CONTAINS`]->_303979
create _303980-[:`CONTAINS`]->_303978
create _303980-[:`CONTAINS`]->_303977
create _303982-[:`CONTAINS`]->_303981
create _303984-[:`CONTAINS`]->_303983
create _303986-[:`CONTAINS`]->_303985
create _303988-[:`CONTAINS`]->_303987
create _303990-[:`CONTAINS`]->_303989
create _303994-[:`COMPOSED OF`]->_303990
create _303994-[:`COMPOSED OF`]->_303988
create _303994-[:`COMPOSED OF`]->_303986
create _303994-[:`COMPOSED OF`]->_303984
create _303994-[:`COMPOSED OF`]->_303982
create _303994-[:`DEPENDS ON`]->_304046
create _303994-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_303980
create _303994-[:`CONTAINS`]->_303993
create _303994-[:`CONTAINS`]->_303992
create _303994-[:`CONTAINS`]->_303991
create _303996-[:`CONTAINS`]->_303995
create _303998-[:`CONTAINS`]->_303997
create _304000-[:`CONTAINS`]->_303999
create _304002-[:`CONTAINS`]->_304001
create _304004-[:`COMPOSED OF`]->_304002
create _304004-[:`COMPOSED OF`]->_304000
create _304004-[:`COMPOSED OF`]->_303998
create _304004-[:`COMPOSED OF`]->_303996
create _304004-[:`CONTAINS`]->_304003
create _304006-[:`CONTAINS`]->_304005
create _304008-[:`CONTAINS`]->_304007
create _304012-[:`COMPOSED OF`]->_304008
create _304012-[:`COMPOSED OF`]->_304006
create _304012-[:`COMPOSED OF`]->_304004
create _304012-[:`DEPENDS ON`]->_304046
create _304012-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_303980
create _304012-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_303994
create _304012-[:`CONTAINS`]->_304011
create _304012-[:`CONTAINS`]->_304010
create _304012-[:`CONTAINS`]->_304009
create _304014-[:`CONTAINS`]->_304013
create _304016-[:`CONTAINS`]->_304015
create _304020-[:`COMPOSED OF`]->_304016
create _304020-[:`COMPOSED OF`]->_304014
create _304020-[:`DEPENDS ON`]->_304046
create _304020-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_303994
create _304020-[:`CONTAINS`]->_304019
create _304020-[:`CONTAINS`]->_304018
create _304020-[:`CONTAINS`]->_304017
create _304022-[:`CONTAINS`]->_304021
create _304024-[:`CONTAINS`]->_304023
create _304028-[:`COMPOSED OF`]->_304024
create _304028-[:`COMPOSED OF`]->_304022
create _304028-[:`DEPENDS ON`]->_304046
create _304028-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_303994
create _304028-[:`CONTAINS`]->_304027
create _304028-[:`CONTAINS`]->_304026
create _304028-[:`CONTAINS`]->_304025
create _304029-[:`DEPENDS ON`]->_304046
create _304031-[:`CONTAINS`]->_304030
create _304033-[:`CONTAINS`]->_304032
create _304035-[:`CONTAINS`]->_304034
create _304040-[:`COMPOSED OF`]->_304035
create _304040-[:`COMPOSED OF`]->_304033
create _304040-[:`COMPOSED OF`]->_304031
create _304040-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_304028
create _304040-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_303994
create _304040-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_304020
create _304040-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_304012
create _304040-[:`COMPATIBLE WITH`]->_304046
create _304040-[:`CONTAINS`]->_304039
create _304040-[:`CONTAINS`]->_304038
create _304040-[:`CONTAINS`]->_304037
create _304040-[:`CONTAINS`]->_304036
create _304046-[:`CONTAINS`]->_304045
create _304046-[:`CONTAINS`]->_304044
create _304046-[:`CONTAINS`]->_304043
create _304046-[:`CONTAINS`]->_304042
create _304046-[:`CONTAINS`]->_304041
create _304049-[:`DEPENDS ON`]->_304123
create _304049-[:`CONTAINS`]->_304048
create _304051-[:`CONTAINS`]->_304050
create _304055-[:`COMPOSED OF`]->_304051
create _304055-[:`DEPENDS ON`]->_304123
create _304055-[:`CONTAINS`]->_304054
create _304055-[:`CONTAINS`]->_304053
create _304055-[:`CONTAINS`]->_304052
create _304057-[:`CONTAINS`]->_304056
create _304059-[:`CONTAINS`]->_304058
create _304061-[:`CONTAINS`]->_304060
create _304063-[:`CONTAINS`]->_304062
create _304065-[:`CONTAINS`]->_304064
create _304069-[:`COMPOSED OF`]->_304065
create _304069-[:`COMPOSED OF`]->_304063
create _304069-[:`COMPOSED OF`]->_304061
create _304069-[:`COMPOSED OF`]->_304059
create _304069-[:`COMPOSED OF`]->_304057
create _304069-[:`DEPENDS ON`]->_304123
create _304069-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_304055
create _304069-[:`CONTAINS`]->_304068
create _304069-[:`CONTAINS`]->_304067
create _304069-[:`CONTAINS`]->_304066
create _304071-[:`CONTAINS`]->_304070
create _304073-[:`CONTAINS`]->_304072
create _304075-[:`CONTAINS`]->_304074
create _304077-[:`CONTAINS`]->_304076
create _304079-[:`COMPOSED OF`]->_304077
create _304079-[:`COMPOSED OF`]->_304075
create _304079-[:`COMPOSED OF`]->_304073
create _304079-[:`COMPOSED OF`]->_304071
create _304079-[:`CONTAINS`]->_304078
create _304081-[:`CONTAINS`]->_304080
create _304083-[:`CONTAINS`]->_304082
create _304087-[:`COMPOSED OF`]->_304083
create _304087-[:`COMPOSED OF`]->_304081
create _304087-[:`COMPOSED OF`]->_304079
create _304087-[:`DEPENDS ON`]->_304123
create _304087-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_304055
create _304087-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304069
create _304087-[:`CONTAINS`]->_304086
create _304087-[:`CONTAINS`]->_304085
create _304087-[:`CONTAINS`]->_304084
create _304089-[:`CONTAINS`]->_304088
create _304091-[:`CONTAINS`]->_304090
create _304095-[:`COMPOSED OF`]->_304091
create _304095-[:`COMPOSED OF`]->_304089
create _304095-[:`DEPENDS ON`]->_304123
create _304095-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304069
create _304095-[:`CONTAINS`]->_304094
create _304095-[:`CONTAINS`]->_304093
create _304095-[:`CONTAINS`]->_304092
create _304097-[:`CONTAINS`]->_304096
create _304099-[:`CONTAINS`]->_304098
create _304101-[:`CONTAINS`]->_304100
create _304105-[:`COMPOSED OF`]->_304101
create _304105-[:`COMPOSED OF`]->_304099
create _304105-[:`COMPOSED OF`]->_304097
create _304105-[:`DEPENDS ON`]->_304123
create _304105-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304069
create _304105-[:`CONTAINS`]->_304104
create _304105-[:`CONTAINS`]->_304103
create _304105-[:`CONTAINS`]->_304102
create _304106-[:`DEPENDS ON`]->_304123
create _304108-[:`CONTAINS`]->_304107
create _304110-[:`CONTAINS`]->_304109
create _304112-[:`CONTAINS`]->_304111
create _304117-[:`COMPOSED OF`]->_304112
create _304117-[:`COMPOSED OF`]->_304110
create _304117-[:`COMPOSED OF`]->_304108
create _304117-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304105
create _304117-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304069
create _304117-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304095
create _304117-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304087
create _304117-[:`COMPATIBLE WITH` {`version_max`:"0.2.1", `version_min`:"0.2.0"}]->_304123
create _304117-[:`CONTAINS`]->_304116
create _304117-[:`CONTAINS`]->_304115
create _304117-[:`CONTAINS`]->_304114
create _304117-[:`CONTAINS`]->_304113
create _304123-[:`CONTAINS`]->_304122
create _304123-[:`CONTAINS`]->_304121
create _304123-[:`CONTAINS`]->_304120
create _304123-[:`CONTAINS`]->_304119
create _304123-[:`CONTAINS`]->_304118
create _304126-[:`DEPENDS ON`]->_304200
create _304126-[:`CONTAINS`]->_304125
create _304128-[:`CONTAINS`]->_304127
create _304132-[:`COMPOSED OF`]->_304128
create _304132-[:`DEPENDS ON`]->_304200
create _304132-[:`CONTAINS`]->_304131
create _304132-[:`CONTAINS`]->_304130
create _304132-[:`CONTAINS`]->_304129
create _304134-[:`CONTAINS`]->_304133
create _304136-[:`CONTAINS`]->_304135
create _304138-[:`CONTAINS`]->_304137
create _304140-[:`CONTAINS`]->_304139
create _304142-[:`CONTAINS`]->_304141
create _304146-[:`COMPOSED OF`]->_304142
create _304146-[:`COMPOSED OF`]->_304140
create _304146-[:`COMPOSED OF`]->_304138
create _304146-[:`COMPOSED OF`]->_304136
create _304146-[:`COMPOSED OF`]->_304134
create _304146-[:`DEPENDS ON`]->_304200
create _304146-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_304132
create _304146-[:`CONTAINS`]->_304145
create _304146-[:`CONTAINS`]->_304144
create _304146-[:`CONTAINS`]->_304143
create _304148-[:`CONTAINS`]->_304147
create _304150-[:`CONTAINS`]->_304149
create _304152-[:`CONTAINS`]->_304151
create _304154-[:`CONTAINS`]->_304153
create _304156-[:`COMPOSED OF`]->_304154
create _304156-[:`COMPOSED OF`]->_304152
create _304156-[:`COMPOSED OF`]->_304150
create _304156-[:`COMPOSED OF`]->_304148
create _304156-[:`CONTAINS`]->_304155
create _304158-[:`CONTAINS`]->_304157
create _304160-[:`CONTAINS`]->_304159
create _304164-[:`COMPOSED OF`]->_304160
create _304164-[:`COMPOSED OF`]->_304158
create _304164-[:`COMPOSED OF`]->_304156
create _304164-[:`DEPENDS ON`]->_304200
create _304164-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_304132
create _304164-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304146
create _304164-[:`CONTAINS`]->_304163
create _304164-[:`CONTAINS`]->_304162
create _304164-[:`CONTAINS`]->_304161
create _304166-[:`CONTAINS`]->_304165
create _304168-[:`CONTAINS`]->_304167
create _304172-[:`COMPOSED OF`]->_304168
create _304172-[:`COMPOSED OF`]->_304166
create _304172-[:`DEPENDS ON`]->_304200
create _304172-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304146
create _304172-[:`CONTAINS`]->_304171
create _304172-[:`CONTAINS`]->_304170
create _304172-[:`CONTAINS`]->_304169
create _304174-[:`CONTAINS`]->_304173
create _304176-[:`CONTAINS`]->_304175
create _304178-[:`CONTAINS`]->_304177
create _304182-[:`COMPOSED OF`]->_304178
create _304182-[:`COMPOSED OF`]->_304176
create _304182-[:`COMPOSED OF`]->_304174
create _304182-[:`DEPENDS ON`]->_304200
create _304182-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304146
create _304182-[:`CONTAINS`]->_304181
create _304182-[:`CONTAINS`]->_304180
create _304182-[:`CONTAINS`]->_304179
create _304183-[:`DEPENDS ON`]->_304200
create _304185-[:`CONTAINS`]->_304184
create _304187-[:`CONTAINS`]->_304186
create _304189-[:`CONTAINS`]->_304188
create _304194-[:`COMPOSED OF`]->_304189
create _304194-[:`COMPOSED OF`]->_304187
create _304194-[:`COMPOSED OF`]->_304185
create _304194-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304182
create _304194-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304146
create _304194-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304172
create _304194-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304164
create _304194-[:`COMPATIBLE WITH`]->_304200
create _304194-[:`CONTAINS`]->_304193
create _304194-[:`CONTAINS`]->_304192
create _304194-[:`CONTAINS`]->_304191
create _304194-[:`CONTAINS`]->_304190
create _304200-[:`CONTAINS`]->_304199
create _304200-[:`CONTAINS`]->_304198
create _304200-[:`CONTAINS`]->_304197
create _304200-[:`CONTAINS`]->_304196
create _304200-[:`CONTAINS`]->_304195
create _304203-[:`DEPENDS ON`]->_304285
create _304203-[:`CONTAINS`]->_304202
create _304205-[:`CONTAINS`]->_304204
create _304207-[:`CONTAINS`]->_304206
create _304211-[:`COMPOSED OF`]->_304207
create _304211-[:`COMPOSED OF`]->_304205
create _304211-[:`DEPENDS ON`]->_304285
create _304211-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304212
create _304211-[:`CONTAINS`]->_304210
create _304211-[:`CONTAINS`]->_304209
create _304211-[:`CONTAINS`]->_304208
create _304212-[:`COMPOSED OF`]->_304228
create _304212-[:`COMPOSED OF`]->_304226
create _304212-[:`COMPOSED OF`]->_304224
create _304212-[:`COMPOSED OF`]->_304222
create _304212-[:`COMPOSED OF`]->_304220
create _304212-[:`DEPENDS ON`]->_304285
create _304212-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_304218
create _304212-[:`CONTAINS`]->_304231
create _304212-[:`CONTAINS`]->_304230
create _304212-[:`CONTAINS`]->_304229
create _304214-[:`CONTAINS`]->_304213
create _304218-[:`COMPOSED OF`]->_304214
create _304218-[:`DEPENDS ON`]->_304285
create _304218-[:`CONTAINS`]->_304217
create _304218-[:`CONTAINS`]->_304216
create _304218-[:`CONTAINS`]->_304215
create _304220-[:`CONTAINS`]->_304219
create _304222-[:`CONTAINS`]->_304221
create _304224-[:`CONTAINS`]->_304223
create _304226-[:`CONTAINS`]->_304225
create _304228-[:`CONTAINS`]->_304227
create _304233-[:`CONTAINS`]->_304232
create _304235-[:`CONTAINS`]->_304234
create _304237-[:`CONTAINS`]->_304236
create _304239-[:`CONTAINS`]->_304238
create _304241-[:`COMPOSED OF`]->_304239
create _304241-[:`COMPOSED OF`]->_304237
create _304241-[:`COMPOSED OF`]->_304235
create _304241-[:`COMPOSED OF`]->_304233
create _304241-[:`CONTAINS`]->_304240
create _304243-[:`CONTAINS`]->_304242
create _304245-[:`CONTAINS`]->_304244
create _304249-[:`COMPOSED OF`]->_304245
create _304249-[:`COMPOSED OF`]->_304243
create _304249-[:`COMPOSED OF`]->_304241
create _304249-[:`DEPENDS ON`]->_304285
create _304249-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_304218
create _304249-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304212
create _304249-[:`CONTAINS`]->_304248
create _304249-[:`CONTAINS`]->_304247
create _304249-[:`CONTAINS`]->_304246
create _304251-[:`CONTAINS`]->_304250
create _304253-[:`CONTAINS`]->_304252
create _304257-[:`COMPOSED OF`]->_304253
create _304257-[:`COMPOSED OF`]->_304251
create _304257-[:`DEPENDS ON`]->_304285
create _304257-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304212
create _304257-[:`CONTAINS`]->_304256
create _304257-[:`CONTAINS`]->_304255
create _304257-[:`CONTAINS`]->_304254
create _304259-[:`CONTAINS`]->_304258
create _304261-[:`CONTAINS`]->_304260
create _304263-[:`CONTAINS`]->_304262
create _304267-[:`COMPOSED OF`]->_304263
create _304267-[:`COMPOSED OF`]->_304261
create _304267-[:`COMPOSED OF`]->_304259
create _304267-[:`DEPENDS ON`]->_304285
create _304267-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_304211
create _304267-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304212
create _304267-[:`CONTAINS`]->_304266
create _304267-[:`CONTAINS`]->_304265
create _304267-[:`CONTAINS`]->_304264
create _304268-[:`DEPENDS ON`]->_304285
create _304270-[:`CONTAINS`]->_304269
create _304272-[:`CONTAINS`]->_304271
create _304274-[:`CONTAINS`]->_304273
create _304279-[:`COMPOSED OF`]->_304274
create _304279-[:`COMPOSED OF`]->_304272
create _304279-[:`COMPOSED OF`]->_304270
create _304279-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304267
create _304279-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304212
create _304279-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304257
create _304279-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304249
create _304279-[:`COMPATIBLE WITH`]->_304285
create _304279-[:`CONTAINS`]->_304278
create _304279-[:`CONTAINS`]->_304277
create _304279-[:`CONTAINS`]->_304276
create _304279-[:`CONTAINS`]->_304275
create _304285-[:`CONTAINS`]->_304284
create _304285-[:`CONTAINS`]->_304283
create _304285-[:`CONTAINS`]->_304282
create _304285-[:`CONTAINS`]->_304281
create _304285-[:`CONTAINS`]->_304280
create _304288-[:`DEPENDS ON`]->_304370
create _304288-[:`CONTAINS`]->_304287
create _304290-[:`CONTAINS`]->_304289
create _304292-[:`CONTAINS`]->_304291
create _304296-[:`COMPOSED OF`]->_304292
create _304296-[:`COMPOSED OF`]->_304290
create _304296-[:`DEPENDS ON`]->_304370
create _304296-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304297
create _304296-[:`CONTAINS`]->_304295
create _304296-[:`CONTAINS`]->_304294
create _304296-[:`CONTAINS`]->_304293
create _304297-[:`COMPOSED OF`]->_304313
create _304297-[:`COMPOSED OF`]->_304311
create _304297-[:`COMPOSED OF`]->_304309
create _304297-[:`COMPOSED OF`]->_304307
create _304297-[:`COMPOSED OF`]->_304305
create _304297-[:`DEPENDS ON`]->_304370
create _304297-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_304303
create _304297-[:`CONTAINS`]->_304316
create _304297-[:`CONTAINS`]->_304315
create _304297-[:`CONTAINS`]->_304314
create _304299-[:`CONTAINS`]->_304298
create _304303-[:`COMPOSED OF`]->_304299
create _304303-[:`DEPENDS ON`]->_304370
create _304303-[:`CONTAINS`]->_304302
create _304303-[:`CONTAINS`]->_304301
create _304303-[:`CONTAINS`]->_304300
create _304305-[:`CONTAINS`]->_304304
create _304307-[:`CONTAINS`]->_304306
create _304309-[:`CONTAINS`]->_304308
create _304311-[:`CONTAINS`]->_304310
create _304313-[:`CONTAINS`]->_304312
create _304318-[:`CONTAINS`]->_304317
create _304320-[:`CONTAINS`]->_304319
create _304322-[:`CONTAINS`]->_304321
create _304324-[:`CONTAINS`]->_304323
create _304326-[:`COMPOSED OF`]->_304324
create _304326-[:`COMPOSED OF`]->_304322
create _304326-[:`COMPOSED OF`]->_304320
create _304326-[:`COMPOSED OF`]->_304318
create _304326-[:`CONTAINS`]->_304325
create _304328-[:`CONTAINS`]->_304327
create _304330-[:`CONTAINS`]->_304329
create _304334-[:`COMPOSED OF`]->_304330
create _304334-[:`COMPOSED OF`]->_304328
create _304334-[:`COMPOSED OF`]->_304326
create _304334-[:`DEPENDS ON`]->_304370
create _304334-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_304303
create _304334-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304297
create _304334-[:`CONTAINS`]->_304333
create _304334-[:`CONTAINS`]->_304332
create _304334-[:`CONTAINS`]->_304331
create _304336-[:`CONTAINS`]->_304335
create _304338-[:`CONTAINS`]->_304337
create _304342-[:`COMPOSED OF`]->_304338
create _304342-[:`COMPOSED OF`]->_304336
create _304342-[:`DEPENDS ON`]->_304370
create _304342-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304297
create _304342-[:`CONTAINS`]->_304341
create _304342-[:`CONTAINS`]->_304340
create _304342-[:`CONTAINS`]->_304339
create _304344-[:`CONTAINS`]->_304343
create _304346-[:`CONTAINS`]->_304345
create _304348-[:`CONTAINS`]->_304347
create _304352-[:`COMPOSED OF`]->_304348
create _304352-[:`COMPOSED OF`]->_304346
create _304352-[:`COMPOSED OF`]->_304344
create _304352-[:`DEPENDS ON`]->_304370
create _304352-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_304296
create _304352-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304297
create _304352-[:`CONTAINS`]->_304351
create _304352-[:`CONTAINS`]->_304350
create _304352-[:`CONTAINS`]->_304349
create _304353-[:`DEPENDS ON`]->_304370
create _304355-[:`CONTAINS`]->_304354
create _304357-[:`CONTAINS`]->_304356
create _304359-[:`CONTAINS`]->_304358
create _304364-[:`COMPOSED OF`]->_304359
create _304364-[:`COMPOSED OF`]->_304357
create _304364-[:`COMPOSED OF`]->_304355
create _304364-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304352
create _304364-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304297
create _304364-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304342
create _304364-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304334
create _304364-[:`COMPATIBLE WITH`]->_304370
create _304364-[:`CONTAINS`]->_304363
create _304364-[:`CONTAINS`]->_304362
create _304364-[:`CONTAINS`]->_304361
create _304364-[:`CONTAINS`]->_304360
create _304370-[:`CONTAINS`]->_304369
create _304370-[:`CONTAINS`]->_304368
create _304370-[:`CONTAINS`]->_304367
create _304370-[:`CONTAINS`]->_304366
create _304370-[:`CONTAINS`]->_304365
create _304373-[:`DEPENDS ON`]->_304455
create _304373-[:`CONTAINS`]->_304372
create _304375-[:`CONTAINS`]->_304374
create _304377-[:`CONTAINS`]->_304376
create _304381-[:`COMPOSED OF`]->_304377
create _304381-[:`COMPOSED OF`]->_304375
create _304381-[:`DEPENDS ON`]->_304455
create _304381-[:`CONTAINS`]->_304380
create _304381-[:`CONTAINS`]->_304379
create _304381-[:`CONTAINS`]->_304378
create _304383-[:`CONTAINS`]->_304382
create _304387-[:`COMPOSED OF`]->_304383
create _304387-[:`DEPENDS ON`]->_304455
create _304387-[:`CONTAINS`]->_304386
create _304387-[:`CONTAINS`]->_304385
create _304387-[:`CONTAINS`]->_304384
create _304389-[:`CONTAINS`]->_304388
create _304391-[:`CONTAINS`]->_304390
create _304393-[:`CONTAINS`]->_304392
create _304395-[:`CONTAINS`]->_304394
create _304397-[:`CONTAINS`]->_304396
create _304401-[:`COMPOSED OF`]->_304397
create _304401-[:`COMPOSED OF`]->_304395
create _304401-[:`COMPOSED OF`]->_304393
create _304401-[:`COMPOSED OF`]->_304391
create _304401-[:`COMPOSED OF`]->_304389
create _304401-[:`DEPENDS ON`]->_304455
create _304401-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_304387
create _304401-[:`CONTAINS`]->_304400
create _304401-[:`CONTAINS`]->_304399
create _304401-[:`CONTAINS`]->_304398
create _304403-[:`CONTAINS`]->_304402
create _304405-[:`CONTAINS`]->_304404
create _304407-[:`CONTAINS`]->_304406
create _304409-[:`CONTAINS`]->_304408
create _304411-[:`COMPOSED OF`]->_304409
create _304411-[:`COMPOSED OF`]->_304407
create _304411-[:`COMPOSED OF`]->_304405
create _304411-[:`COMPOSED OF`]->_304403
create _304411-[:`CONTAINS`]->_304410
create _304413-[:`CONTAINS`]->_304412
create _304415-[:`CONTAINS`]->_304414
create _304419-[:`COMPOSED OF`]->_304415
create _304419-[:`COMPOSED OF`]->_304413
create _304419-[:`COMPOSED OF`]->_304411
create _304419-[:`DEPENDS ON`]->_304455
create _304419-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_304387
create _304419-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304401
create _304419-[:`CONTAINS`]->_304418
create _304419-[:`CONTAINS`]->_304417
create _304419-[:`CONTAINS`]->_304416
create _304421-[:`CONTAINS`]->_304420
create _304423-[:`CONTAINS`]->_304422
create _304427-[:`COMPOSED OF`]->_304423
create _304427-[:`COMPOSED OF`]->_304421
create _304427-[:`DEPENDS ON`]->_304455
create _304427-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304401
create _304427-[:`CONTAINS`]->_304426
create _304427-[:`CONTAINS`]->_304425
create _304427-[:`CONTAINS`]->_304424
create _304429-[:`CONTAINS`]->_304428
create _304431-[:`CONTAINS`]->_304430
create _304433-[:`CONTAINS`]->_304432
create _304437-[:`COMPOSED OF`]->_304433
create _304437-[:`COMPOSED OF`]->_304431
create _304437-[:`COMPOSED OF`]->_304429
create _304437-[:`DEPENDS ON`]->_304455
create _304437-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_304381
create _304437-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304401
create _304437-[:`CONTAINS`]->_304436
create _304437-[:`CONTAINS`]->_304435
create _304437-[:`CONTAINS`]->_304434
create _304438-[:`DEPENDS ON`]->_304455
create _304440-[:`CONTAINS`]->_304439
create _304442-[:`CONTAINS`]->_304441
create _304444-[:`CONTAINS`]->_304443
create _304449-[:`COMPOSED OF`]->_304444
create _304449-[:`COMPOSED OF`]->_304442
create _304449-[:`COMPOSED OF`]->_304440
create _304449-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304437
create _304449-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304401
create _304449-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304427
create _304449-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_304419
create _304449-[:`COMPATIBLE WITH`]->_304455
create _304449-[:`CONTAINS`]->_304448
create _304449-[:`CONTAINS`]->_304447
create _304449-[:`CONTAINS`]->_304446
create _304449-[:`CONTAINS`]->_304445
create _304455-[:`CONTAINS`]->_304454
create _304455-[:`CONTAINS`]->_304453
create _304455-[:`CONTAINS`]->_304452
create _304455-[:`CONTAINS`]->_304451
create _304455-[:`CONTAINS`]->_304450
;
commit
