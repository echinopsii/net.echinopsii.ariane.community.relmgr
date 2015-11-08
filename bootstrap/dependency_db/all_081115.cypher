begin
create (_55444:`FileNode` {`nID`:1, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.0"})
create (_55445:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:2, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.0"})
create (_55446:`FileNode` {`nID`:3, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_55447:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:4, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_55448:`FileNode` {`nID`:5, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_55449:`FileNode` {`nID`:6, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_55450:`FileNode` {`nID`:7, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_55451:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:8, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_55452:`FileNode` {`nID`:9, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.0"})
create (_55453:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:10, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_55454:`FileNode` {`nID`:11, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.0"})
create (_55455:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:12, `name`:"idmwat", `order`:2, `version`:"0.5.0"})
create (_55456:`FileNode` {`nID`:13, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.0"})
create (_55457:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:14, `name`:"wab", `order`:3, `version`:"0.5.0"})
create (_55458:`FileNode` {`nID`:15, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.0"})
create (_55459:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:16, `name`:"wat", `order`:4, `version`:"0.5.0"})
create (_55460:`FileNode` {`nID`:17, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.0"})
create (_55461:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:18, `name`:"wresources", `order`:5, `version`:"0.5.0"})
create (_55462:`FileNode` {`nID`:19, `name`:"ariane.community.core.portal-0.5.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_55463:`FileNode` {`nID`:20, `name`:"net.echinopsii.ariane.community.core.portal_0.5.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_55464:`FileNode` {`nID`:21, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.0"})
create (_55465:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:22, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.0"})
create (_55466:`FileNode` {`nID`:23, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.0"})
create (_55467:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:24, `name`:"api", `order`:1, `version`:"0.5.0"})
create (_55468:`FileNode` {`nID`:25, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.0"})
create (_55469:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:26, `name`:"blueprints", `order`:2, `version`:"0.5.0"})
create (_55470:`FileNode` {`nID`:27, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.0"})
create (_55471:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:28, `name`:"dsl", `order`:3, `version`:"0.5.0"})
create (_55472:`FileNode` {`nID`:29, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.0"})
create (_55473:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:30, `name`:"rim", `order`:4, `version`:"0.5.0"})
create (_55474:`FileNode` {`nID`:31, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.0"})
create (_55475:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:32, `name`:"ds", `order`:5, `version`:"0.5.0"})
create (_55476:`FileNode` {`nID`:33, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.0"})
create (_55477:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:34, `name`:"taitale", `order`:6, `version`:"0.5.0"})
create (_55478:`FileNode` {`nID`:35, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.0"})
create (_55479:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:36, `name`:"wat", `order`:7, `version`:"0.5.0"})
create (_55480:`FileNode` {`nID`:37, `name`:"ariane.community.core.mapping-0.5.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_55481:`FileNode` {`nID`:38, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_55482:`FileNode` {`nID`:39, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.0"})
create (_55483:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:40, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.0"})
create (_55484:`FileNode` {`nID`:41, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.0"})
create (_55485:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:42, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_55486:`FileNode` {`nID`:43, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.0"})
create (_55487:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:44, `name`:"wat", `order`:2, `version`:"0.5.0"})
create (_55488:`FileNode` {`nID`:45, `name`:"ariane.community.core.directory-0.5.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_55489:`FileNode` {`nID`:46, `name`:"net.echinopsii.ariane.community.core.directory_0.5.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_55490:`FileNode` {`nID`:47, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.0"})
create (_55491:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:48, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.0"})
create (_55492:`FileNode` {`nID`:49, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.0"})
create (_55493:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:50, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_55494:`FileNode` {`nID`:51, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.0"})
create (_55495:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:52, `name`:"wat", `order`:2, `version`:"0.5.0"})
create (_55496:`FileNode` {`nID`:53, `name`:"ariane.community.core.injector-0.5.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_55497:`FileNode` {`nID`:54, `name`:"net.echinopsii.ariane.community.core.injector_0.5.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_55498:`FileNode` {`nID`:55, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.0"})
create (_55499:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:56, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.0"})
create (_55500:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:57, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.0"})
create (_55501:`FileNode` {`nID`:58, `name`:"ariane.community.distrib-0.5.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.0"})
create (_55502:`FileNode` {`nID`:59, `name`:"pom-ariane.community.distrib-0.5.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.0"})
create (_55503:`FileNode` {`nID`:60, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.0"})
create (_55504:`FileNode` {`nID`:61, `name`:"ariane.community.plugins-distrib-0.5.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.0"})
create (_55505:`FileNode` {`nID`:62, `name`:"ariane.community.git.repos-0.5.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.0"})
create (_55506:`Distribution` {`editable`:"false", `nID`:63, `name`:"community", `version`:"0.5.0"})
create (_55507:`FileNode` {`nID`:64, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.1"})
create (_55508:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:65, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.1"})
create (_55509:`FileNode` {`nID`:66, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_55510:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:67, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_55511:`FileNode` {`nID`:68, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_55512:`FileNode` {`nID`:69, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_55513:`FileNode` {`nID`:70, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_55514:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:71, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_55515:`FileNode` {`nID`:72, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_55516:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:73, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_55517:`FileNode` {`nID`:74, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_55518:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:75, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_55519:`FileNode` {`nID`:76, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_55520:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:77, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_55521:`FileNode` {`nID`:78, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_55522:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:79, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_55523:`FileNode` {`nID`:80, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_55524:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:81, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_55525:`FileNode` {`nID`:82, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_55526:`FileNode` {`nID`:83, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_55527:`FileNode` {`nID`:84, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_55528:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:85, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_55529:`FileNode` {`nID`:86, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.1"})
create (_55530:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:87, `name`:"api", `order`:1, `version`:"0.5.1"})
create (_55531:`FileNode` {`nID`:88, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.1"})
create (_55532:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:89, `name`:"blueprints", `order`:2, `version`:"0.5.1"})
create (_55533:`FileNode` {`nID`:90, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.1"})
create (_55534:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:91, `name`:"dsl", `order`:3, `version`:"0.5.1"})
create (_55538:`FileNode` {`nID`:92, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.1"})
create (_55539:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:93, `name`:"rim", `order`:4, `version`:"0.5.1"})
create (_55540:`FileNode` {`nID`:94, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.1"})
create (_55541:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:95, `name`:"ds", `order`:5, `version`:"0.5.1"})
create (_55542:`FileNode` {`nID`:96, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.1"})
create (_55543:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:97, `name`:"taitale", `order`:6, `version`:"0.5.1"})
create (_55544:`FileNode` {`nID`:98, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.1"})
create (_55545:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:99, `name`:"wat", `order`:7, `version`:"0.5.1"})
create (_55546:`FileNode` {`nID`:100, `name`:"ariane.community.core.mapping-0.5.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_55547:`FileNode` {`nID`:101, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_55548:`FileNode` {`nID`:102, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.1"})
create (_55549:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:103, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.1"})
create (_55550:`FileNode` {`nID`:104, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_55551:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:105, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_55552:`FileNode` {`nID`:106, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_55553:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:107, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_55554:`FileNode` {`nID`:108, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_55555:`FileNode` {`nID`:109, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_55556:`FileNode` {`nID`:110, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_55557:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:111, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_55558:`FileNode` {`nID`:112, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.1"})
create (_55559:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:113, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_55560:`FileNode` {`nID`:114, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.1"})
create (_55561:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:115, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_55562:`FileNode` {`nID`:116, `name`:"ariane.community.core.injector-0.5.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_55563:`FileNode` {`nID`:117, `name`:"net.echinopsii.ariane.community.core.injector_0.5.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_55564:`FileNode` {`nID`:118, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.1"})
create (_55565:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:119, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.1"})
create (_55566:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:120, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.1"})
create (_55567:`FileNode` {`nID`:121, `name`:"ariane.community.distrib-0.5.1.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.1"})
create (_55568:`FileNode` {`nID`:122, `name`:"pom-ariane.community.distrib-0.5.1.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.1"})
create (_55569:`FileNode` {`nID`:123, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.1"})
create (_55570:`FileNode` {`nID`:124, `name`:"ariane.community.plugins-distrib-0.5.1.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.1"})
create (_55571:`FileNode` {`nID`:125, `name`:"ariane.community.git.repos-0.5.1.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.1"})
create (_55572:`Distribution` {`editable`:"false", `nID`:126, `name`:"community", `version`:"0.5.1"})
create (_55573:`FileNode` {`nID`:127, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.2"})
create (_55574:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:128, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.2"})
create (_55575:`FileNode` {`nID`:129, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_55576:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:130, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_55577:`FileNode` {`nID`:131, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_55578:`FileNode` {`nID`:132, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_55579:`FileNode` {`nID`:133, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_55580:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:134, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_55581:`FileNode` {`nID`:135, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_55582:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:136, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_55583:`FileNode` {`nID`:137, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_55584:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:138, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_55585:`FileNode` {`nID`:139, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_55586:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:140, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_55587:`FileNode` {`nID`:141, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_55588:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:142, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_55589:`FileNode` {`nID`:143, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_55590:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:144, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_55591:`FileNode` {`nID`:145, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_55592:`FileNode` {`nID`:146, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_55593:`FileNode` {`nID`:147, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_55594:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:148, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_55595:`FileNode` {`nID`:149, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.1"})
create (_55596:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:150, `name`:"api", `order`:1, `version`:"0.5.1"})
create (_55597:`FileNode` {`nID`:151, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.1"})
create (_55598:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:152, `name`:"blueprints", `order`:2, `version`:"0.5.1"})
create (_55599:`FileNode` {`nID`:153, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.1"})
create (_55600:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:154, `name`:"dsl", `order`:3, `version`:"0.5.1"})
create (_55601:`FileNode` {`nID`:155, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.1"})
create (_55602:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:156, `name`:"rim", `order`:4, `version`:"0.5.1"})
create (_55603:`FileNode` {`nID`:157, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.1"})
create (_55604:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:158, `name`:"ds", `order`:5, `version`:"0.5.1"})
create (_55605:`FileNode` {`nID`:159, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.1"})
create (_55606:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:160, `name`:"taitale", `order`:6, `version`:"0.5.1"})
create (_55607:`FileNode` {`nID`:161, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.1"})
create (_55608:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:162, `name`:"wat", `order`:7, `version`:"0.5.1"})
create (_55702:`FileNode` {`nID`:163, `name`:"ariane.community.core.mapping-0.5.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_55703:`FileNode` {`nID`:164, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_55704:`FileNode` {`nID`:165, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.1"})
create (_55705:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:166, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.1"})
create (_55706:`FileNode` {`nID`:167, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_55707:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:168, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_55708:`FileNode` {`nID`:169, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_55709:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:170, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_55710:`FileNode` {`nID`:171, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_55711:`FileNode` {`nID`:172, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_55712:`FileNode` {`nID`:173, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_55713:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:174, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_55714:`FileNode` {`nID`:175, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.2"})
create (_55715:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:176, `name`:"base", `order`:1, `version`:"0.5.2"})
create (_55716:`FileNode` {`nID`:177, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.2"})
create (_55717:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:178, `name`:"wat", `order`:2, `version`:"0.5.2"})
create (_55718:`FileNode` {`nID`:179, `name`:"ariane.community.core.injector-0.5.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_55719:`FileNode` {`nID`:180, `name`:"net.echinopsii.ariane.community.core.injector_0.5.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_55720:`FileNode` {`nID`:181, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.2"})
create (_55721:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:182, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.2"})
create (_55722:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:183, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.2"})
create (_55723:`FileNode` {`nID`:184, `name`:"ariane.community.distrib-0.5.2.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.2"})
create (_55724:`FileNode` {`nID`:185, `name`:"pom-ariane.community.distrib-0.5.2.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.2"})
create (_55725:`FileNode` {`nID`:186, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.2"})
create (_55726:`FileNode` {`nID`:187, `name`:"ariane.community.plugins-distrib-0.5.2.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.2"})
create (_55727:`FileNode` {`nID`:188, `name`:"ariane.community.git.repos-0.5.2.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.2"})
create (_55728:`Distribution` {`editable`:"false", `nID`:189, `name`:"community", `version`:"0.5.2"})
create (_55729:`FileNode` {`nID`:190, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.3"})
create (_55730:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:191, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.3"})
create (_55731:`FileNode` {`nID`:192, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_55732:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:193, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_55733:`FileNode` {`nID`:194, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_55734:`FileNode` {`nID`:195, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_55735:`FileNode` {`nID`:196, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_55736:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:197, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_55737:`FileNode` {`nID`:198, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_55738:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:199, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_55739:`FileNode` {`nID`:200, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_55740:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:201, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_55741:`FileNode` {`nID`:202, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_55742:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:203, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_55743:`FileNode` {`nID`:204, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_55744:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:205, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_55745:`FileNode` {`nID`:206, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_55746:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:207, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_55747:`FileNode` {`nID`:208, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_55748:`FileNode` {`nID`:209, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_55749:`FileNode` {`nID`:210, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_55750:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:211, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_55751:`FileNode` {`nID`:212, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.2"})
create (_55752:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:213, `name`:"api", `order`:1, `version`:"0.5.2"})
create (_55753:`FileNode` {`nID`:214, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.2"})
create (_55754:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:215, `name`:"blueprints", `order`:2, `version`:"0.5.2"})
create (_55755:`FileNode` {`nID`:216, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.2"})
create (_55756:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:217, `name`:"dsl", `order`:3, `version`:"0.5.2"})
create (_55757:`FileNode` {`nID`:218, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.2"})
create (_55758:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:219, `name`:"rim", `order`:4, `version`:"0.5.2"})
create (_55759:`FileNode` {`nID`:220, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.2"})
create (_55760:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:221, `name`:"ds", `order`:5, `version`:"0.5.2"})
create (_55761:`FileNode` {`nID`:222, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.2"})
create (_55762:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:223, `name`:"taitale", `order`:6, `version`:"0.5.2"})
create (_55763:`FileNode` {`nID`:224, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.2"})
create (_55764:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:225, `name`:"wat", `order`:7, `version`:"0.5.2"})
create (_55765:`FileNode` {`nID`:226, `name`:"ariane.community.core.mapping-0.5.2.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_55766:`FileNode` {`nID`:227, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.2.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_55767:`FileNode` {`nID`:228, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.2"})
create (_55768:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:229, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.2"})
create (_55769:`FileNode` {`nID`:230, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_55770:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:231, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_55771:`FileNode` {`nID`:232, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_55772:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:233, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_55773:`FileNode` {`nID`:234, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_55774:`FileNode` {`nID`:235, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_55775:`FileNode` {`nID`:236, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_55776:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:237, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_55777:`FileNode` {`nID`:238, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.2"})
create (_55778:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:239, `name`:"base", `order`:1, `version`:"0.5.2"})
create (_55779:`FileNode` {`nID`:240, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.2"})
create (_55780:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:241, `name`:"wat", `order`:2, `version`:"0.5.2"})
create (_55781:`FileNode` {`nID`:242, `name`:"ariane.community.core.injector-0.5.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_55782:`FileNode` {`nID`:243, `name`:"net.echinopsii.ariane.community.core.injector_0.5.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_55783:`FileNode` {`nID`:244, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.2"})
create (_55784:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:245, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.2"})
create (_55785:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:246, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.2"})
create (_55786:`FileNode` {`nID`:247, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.1.0"})
create (_55787:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:248, `name`:"directory", `order`:1, `version`:"0.1.0"})
create (_55788:`FileNode` {`nID`:249, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.1.0"})
create (_55789:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:250, `name`:"jsonparser", `order`:2, `version`:"0.1.0"})
create (_55790:`FileNode` {`nID`:251, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.1.0"})
create (_55791:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:252, `name`:"injector", `order`:3, `version`:"0.1.0"})
create (_55792:`FileNode` {`nID`:253, `name`:"ariane.community.plugin.rabbitmq-0.1.0.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_55794:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:442, `name`:"wresources", `order`:5, `version`:"0.6.2"})
create (_55795:`FileNode` {`nID`:443, `name`:"ariane.community.core.portal-0.6.2.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_55796:`FileNode` {`nID`:444, `name`:"net.echinopsii.ariane.community.core.portal_0.6.2.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_55797:`FileNode` {`nID`:445, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.2"})
create (_55798:`FileNode` {`nID`:446, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.2"})
create (_55799:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:447, `name`:"api", `order`:1, `version`:"0.6.2"})
create (_55800:`FileNode` {`nID`:448, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.2"})
create (_55801:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:449, `name`:"blueprints", `order`:2, `version`:"0.6.2"})
create (_55802:`FileNode` {`nID`:450, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.2"})
create (_55803:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:451, `name`:"rim", `order`:3, `version`:"0.6.2"})
create (_55804:`FileNode` {`nID`:452, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.2"})
create (_55805:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:453, `name`:"dsl", `order`:4, `version`:"0.6.2"})
create (_55806:`FileNode` {`nID`:454, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.2"})
create (_55807:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:455, `name`:"ds", `order`:5, `version`:"0.6.2"})
create (_55808:`FileNode` {`nID`:456, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.2"})
create (_55809:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:457, `name`:"wat", `order`:6, `version`:"0.6.2"})
create (_55810:`FileNode` {`nID`:458, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.2"})
create (_55811:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:459, `name`:"taitale", `order`:7, `version`:"0.6.2"})
create (_55812:`FileNode` {`nID`:460, `name`:"ariane.community.core.mapping-0.6.2.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_55813:`FileNode` {`nID`:461, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.2.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_55814:`FileNode` {`nID`:462, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.2"})
create (_55815:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:463, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.2"})
create (_55816:`FileNode` {`nID`:464, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.2"})
create (_55817:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:465, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_55818:`FileNode` {`nID`:466, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.2"})
create (_55819:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:467, `name`:"wat", `order`:2, `version`:"0.6.2"})
create (_55820:`FileNode` {`nID`:468, `name`:"ariane.community.core.directory-0.6.2.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_55821:`FileNode` {`nID`:469, `name`:"net.echinopsii.ariane.community.core.directory_0.6.2.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_55822:`FileNode` {`nID`:470, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.2"})
create (_55823:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:471, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.2"})
create (_55824:`FileNode` {`nID`:472, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.2"})
create (_55825:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:473, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_55826:`FileNode` {`nID`:474, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.2"})
create (_55827:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:475, `name`:"messaging", `order`:2, `version`:"0.6.2"})
create (_55828:`FileNode` {`nID`:476, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.2"})
create (_55829:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:477, `name`:"wat", `order`:3, `version`:"0.6.2"})
create (_55830:`FileNode` {`nID`:478, `name`:"ariane.community.core.injector-0.6.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_55831:`FileNode` {`nID`:479, `name`:"net.echinopsii.ariane.community.core.injector_0.6.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_55832:`FileNode` {`nID`:480, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.2"})
create (_55833:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:481, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.2"})
create (_55834:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:482, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.2"})
create (_55835:`FileNode` {`nID`:483, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.2"})
create (_55836:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:484, `name`:"directory", `order`:1, `version`:"0.2.2"})
create (_55837:`FileNode` {`nID`:485, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.2"})
create (_55838:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:486, `name`:"jsonparser", `order`:2, `version`:"0.2.2"})
create (_55839:`FileNode` {`nID`:487, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.2"})
create (_55840:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:488, `name`:"injector", `order`:3, `version`:"0.2.2"})
create (_55841:`FileNode` {`nID`:489, `name`:"ariane.community.plugin.rabbitmq-0.2.2.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.2"})
create (_55842:`FileNode` {`nID`:490, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.2.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.2"})
create (_55843:`FileNode` {`nID`:491, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.2"})
create (_55844:`FileNode` {`nID`:492, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.2"})
create (_55845:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:493, `name`:"rabbitmq", `version`:"0.2.2"})
create (_55846:`FileNode` {`nID`:494, `name`:"ariane.community.distrib-0.6.2.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.2"})
create (_55847:`FileNode` {`nID`:495, `name`:"pom-ariane.community.distrib-0.6.2.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.2"})
create (_55848:`FileNode` {`nID`:496, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.2"})
create (_55849:`FileNode` {`nID`:497, `name`:"ariane.community.plugins-distrib-0.6.2.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.2"})
create (_55850:`FileNode` {`nID`:498, `name`:"ariane.community.git.repos-0.6.2.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.2"})
create (_55851:`Distribution` {`editable`:"false", `nID`:499, `name`:"community", `version`:"0.6.2"})
create (_55852:`FileNode` {`nID`:500, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.3"})
create (_55853:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:501, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.3"})
create (_55854:`FileNode` {`nID`:502, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_55855:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:503, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_55856:`FileNode` {`nID`:504, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_55857:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:505, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_55858:`FileNode` {`nID`:506, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_55859:`FileNode` {`nID`:507, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_55860:`FileNode` {`nID`:508, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_55861:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:509, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_55862:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:510, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.3"})
create (_55863:`FileNode` {`nID`:511, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2"})
create (_55864:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:512, `name`:"base", `order`:1, `version`:"0.4.2"})
create (_55865:`FileNode` {`nID`:513, `name`:"ariane.community.core.idm-0.4.2.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2"})
create (_55866:`FileNode` {`nID`:514, `name`:"net.echinopsii.ariane.community.core.idm_0.4.2.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2"})
create (_55867:`FileNode` {`nID`:515, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2"})
create (_55868:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:516, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2"})
create (_55869:`FileNode` {`nID`:517, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.3"})
create (_55870:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:518, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_55871:`FileNode` {`nID`:519, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.3"})
create (_55872:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:520, `name`:"wat", `order`:2, `version`:"0.6.3"})
create (_55873:`FileNode` {`nID`:521, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.3"})
create (_55874:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:522, `name`:"idmwat", `order`:3, `version`:"0.6.3"})
create (_55875:`FileNode` {`nID`:523, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.3"})
create (_55876:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:524, `name`:"wab", `order`:4, `version`:"0.6.3"})
create (_55877:`FileNode` {`nID`:525, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.3"})
create (_55878:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:526, `name`:"wresources", `order`:5, `version`:"0.6.3"})
create (_55879:`FileNode` {`nID`:527, `name`:"ariane.community.core.portal-0.6.3.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_55880:`FileNode` {`nID`:528, `name`:"net.echinopsii.ariane.community.core.portal_0.6.3.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_55881:`FileNode` {`nID`:529, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.3"})
create (_55882:`FileNode` {`nID`:530, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.3"})
create (_55883:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:531, `name`:"api", `order`:1, `version`:"0.6.3"})
create (_55884:`FileNode` {`nID`:532, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.3"})
create (_55885:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:533, `name`:"blueprints", `order`:2, `version`:"0.6.3"})
create (_55886:`FileNode` {`nID`:534, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.3"})
create (_55887:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:535, `name`:"rim", `order`:3, `version`:"0.6.3"})
create (_55888:`FileNode` {`nID`:536, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.3"})
create (_55889:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:537, `name`:"dsl", `order`:4, `version`:"0.6.3"})
create (_55890:`FileNode` {`nID`:538, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.3"})
create (_55891:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:539, `name`:"ds", `order`:5, `version`:"0.6.3"})
create (_55892:`FileNode` {`nID`:540, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.3"})
create (_55893:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:541, `name`:"wat", `order`:6, `version`:"0.6.3"})
create (_55894:`FileNode` {`nID`:542, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.3"})
create (_55895:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:543, `name`:"taitale", `order`:7, `version`:"0.6.3"})
create (_55896:`FileNode` {`nID`:544, `name`:"ariane.community.core.mapping-0.6.3.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_55897:`FileNode` {`nID`:545, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.3.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_55898:`FileNode` {`nID`:546, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.3"})
create (_55899:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:547, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.3"})
create (_55900:`FileNode` {`nID`:548, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.3"})
create (_55901:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:549, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_55902:`FileNode` {`nID`:550, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.3"})
create (_55903:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:551, `name`:"wat", `order`:2, `version`:"0.6.3"})
create (_55904:`FileNode` {`nID`:552, `name`:"ariane.community.core.directory-0.6.3.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_55905:`FileNode` {`nID`:553, `name`:"net.echinopsii.ariane.community.core.directory_0.6.3.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_55906:`FileNode` {`nID`:554, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.3"})
create (_55907:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:555, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.3"})
create (_55908:`FileNode` {`nID`:556, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.3"})
create (_55909:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:557, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_55910:`FileNode` {`nID`:558, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.3"})
create (_55911:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:559, `name`:"messaging", `order`:2, `version`:"0.6.3"})
create (_55912:`FileNode` {`nID`:560, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.3"})
create (_55913:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:561, `name`:"wat", `order`:3, `version`:"0.6.3"})
create (_55914:`FileNode` {`nID`:562, `name`:"ariane.community.core.injector-0.6.3.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_55915:`FileNode` {`nID`:563, `name`:"net.echinopsii.ariane.community.core.injector_0.6.3.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_55916:`FileNode` {`nID`:564, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.3"})
create (_55917:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:565, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.3"})
create (_55918:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:566, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.3"})
create (_55919:`FileNode` {`nID`:567, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.3"})
create (_55920:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:568, `name`:"directory", `order`:1, `version`:"0.2.3"})
create (_55921:`FileNode` {`nID`:569, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.3"})
create (_55922:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:570, `name`:"jsonparser", `order`:2, `version`:"0.2.3"})
create (_55923:`FileNode` {`nID`:571, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.3"})
create (_55924:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:572, `name`:"injector", `order`:3, `version`:"0.2.3"})
create (_55925:`FileNode` {`nID`:573, `name`:"ariane.community.plugin.rabbitmq-0.2.3.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.3"})
create (_55926:`FileNode` {`nID`:574, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.3.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.3"})
create (_55927:`FileNode` {`nID`:575, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.3"})
create (_55928:`FileNode` {`nID`:576, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.3"})
create (_55929:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:577, `name`:"rabbitmq", `version`:"0.2.3"})
create (_55930:`FileNode` {`nID`:578, `name`:"ariane.community.distrib-0.6.3.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.3"})
create (_55931:`FileNode` {`nID`:579, `name`:"pom-ariane.community.distrib-0.6.3.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.3"})
create (_55932:`FileNode` {`nID`:580, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.3"})
create (_55933:`FileNode` {`nID`:581, `name`:"ariane.community.plugins-distrib-0.6.3.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.3"})
create (_55934:`FileNode` {`nID`:582, `name`:"ariane.community.git.repos-0.6.3.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.3"})
create (_55935:`Distribution` {`editable`:"false", `nID`:583, `name`:"community", `version`:"0.6.3"})
create (_55936:`FileNode` {`nID`:668, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_55937:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:669, `name`:"wresources", `order`:5, `version`:"0.7.0"})
create (_55938:`FileNode` {`nID`:670, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_55939:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:671, `name`:"wab", `order`:4, `version`:"0.7.0"})
create (_55940:`FileNode` {`nID`:672, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_55941:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:673, `name`:"idmwat", `order`:3, `version`:"0.7.0"})
create (_55942:`FileNode` {`nID`:674, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_55943:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:675, `name`:"wat", `order`:2, `version`:"0.7.0"})
create (_55944:`FileNode` {`nID`:676, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_55945:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:677, `name`:"base", `order`:1, `version`:"0.7.0"})
create (_55946:`FileNode` {`nID`:678, `name`:"net.echinopsii.ariane.community.core.portal_0.7.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_55947:`FileNode` {`nID`:679, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.7.0"})
create (_55948:`FileNode` {`nID`:680, `name`:"ariane.community.core.portal-0.7.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_55949:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:681, `name`:"portal", `order`:4, `type`:"core", `version`:"0.7.0"})
create (_55950:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:682, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2"})
create (_55951:`FileNode` {`nID`:683, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_55952:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:684, `name`:"base", `order`:1, `version`:"0.4.2"})
create (_55953:`FileNode` {`nID`:685, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2"})
create (_55954:`FileNode` {`nID`:686, `name`:"net.echinopsii.ariane.community.core.idm_0.4.2.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2"})
create (_55955:`FileNode` {`nID`:687, `name`:"ariane.community.core.idm-0.4.2.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2"})
create (_55956:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:688, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.7.0"})
create (_55957:`FileNode` {`nID`:689, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_55958:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:690, `name`:"wat", `order`:3, `version`:"0.7.0"})
create (_55959:`FileNode` {`nID`:691, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_55960:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:692, `name`:"base", `order`:1, `version`:"0.7.0"})
create (_55961:`FileNode` {`nID`:693, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_55962:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:694, `name`:"messaging", `order`:2, `version`:"0.7.0"})
create (_55963:`FileNode` {`nID`:695, `name`:"ariane.community.core.injector-0.7.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_55964:`FileNode` {`nID`:696, `name`:"net.echinopsii.ariane.community.core.injector_0.7.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_55965:`FileNode` {`nID`:697, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.7.0"})
create (_55966:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:698, `name`:"injector", `order`:7, `type`:"core", `version`:"0.7.0"})
create (_55967:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:699, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_55968:`FileNode` {`nID`:700, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_55969:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:701, `name`:"base", `order`:1, `version`:"0.7.0"})
create (_55970:`FileNode` {`nID`:702, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_55971:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:703, `name`:"wat", `order`:2, `version`:"0.7.0"})
create (_55972:`FileNode` {`nID`:704, `name`:"net.echinopsii.ariane.community.core.directory_0.7.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_55973:`FileNode` {`nID`:705, `name`:"ariane.community.core.directory-0.7.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_55974:`FileNode` {`nID`:706, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.7.0"})
create (_55975:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:707, `name`:"directory", `order`:6, `type`:"core", `version`:"0.7.0"})
create (_55976:`FileNode` {`nID`:708, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_55977:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:709, `name`:"taitale", `order`:6, `version`:"0.7.0"})
create (_55978:`FileNode` {`nID`:710, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_55979:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:711, `name`:"wat", `order`:7, `version`:"0.7.0"})
create (_55980:`FileNode` {`nID`:712, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_55981:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:713, `name`:"blueprints", `order`:2, `version`:"0.7.0"})
create (_55982:`FileNode` {`nID`:714, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_55983:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:715, `name`:"rim", `order`:3, `version`:"0.7.0"})
create (_55984:`FileNode` {`nID`:716, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_55985:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:717, `name`:"api", `order`:1, `version`:"0.7.0"})
create (_55986:`FileNode` {`nID`:718, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_55987:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:719, `name`:"dsl", `order`:4, `version`:"0.7.0"})
create (_55988:`FileNode` {`nID`:720, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_55989:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:721, `name`:"ds", `order`:5, `version`:"0.7.0"})
create (_55990:`FileNode` {`nID`:722, `name`:"ariane.community.core.mapping-0.7.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_55991:`FileNode` {`nID`:723, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.7.0"})
create (_55992:`FileNode` {`nID`:724, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_55993:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:725, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.7.0"})
create (_55994:`FileNode` {`nID`:726, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.7.0"})
create (_55995:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:727, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.7.0"})
create (_55996:`FileNode` {`nID`:728, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_55997:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:729, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_55998:`FileNode` {`nID`:730, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_55999:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:731, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_56000:`FileNode` {`nID`:732, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_56001:`FileNode` {`nID`:733, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_56002:`FileNode` {`nID`:734, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_56003:`FileNode` {`nID`:735, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_56004:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:736, `name`:"injector", `order`:3, `version`:"0.2.4"})
create (_56005:`FileNode` {`nID`:737, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_56006:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:738, `name`:"jsonparser", `order`:2, `version`:"0.2.4"})
create (_56007:`FileNode` {`nID`:739, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_56008:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:740, `name`:"directory", `order`:1, `version`:"0.2.4"})
create (_56009:`FileNode` {`nID`:741, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.4"})
create (_56010:`FileNode` {`nID`:742, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.4"})
create (_56011:`FileNode` {`nID`:743, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.4.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.4"})
create (_56012:`FileNode` {`nID`:744, `name`:"ariane.community.plugin.rabbitmq-0.2.4.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.4"})
create (_56013:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:745, `name`:"rabbitmq", `version`:"0.2.4"})
create (_56014:`FileNode` {`nID`:746, `name`:"ariane.community.distrib-0.7.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.4-SNAPSHOT"})
create (_56015:`FileNode` {`nID`:747, `name`:"ariane.community.git.repos-0.7.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.4-SNAPSHOT"})
create (_56016:`FileNode` {`nID`:748, `name`:"ariane.community.plugins-distrib-0.7.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.4-SNAPSHOT"})
create (_56017:`FileNode` {`nID`:749, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.4-SNAPSHOT"})
create (_56018:`FileNode` {`nID`:750, `name`:"pom-ariane.community.distrib-0.7.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.4-SNAPSHOT"})
create (_56019:`Distribution` {`editable`:"false", `nID`:751, `name`:"community", `version`:"0.7.0"})
create (_56020:`FileNode` {`nID`:752, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_56021:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:753, `name`:"api", `order`:1, `version`:"0.1.1-SNAPSHOT"})
create (_56022:`FileNode` {`nID`:754, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_56023:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:755, `name`:"rabbitmq", `order`:2, `version`:"0.1.1-SNAPSHOT"})
create (_56024:`FileNode` {`nID`:756, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_56025:`FileNode` {`nID`:757, `name`:"ariane.community.messaging-master.SNAPSHOT.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.1-SNAPSHOT"})
create (_56026:`FileNode` {`nID`:758, `name`:"net.echinopsii.ariane.community.messaging_master.SNAPSHOT.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.1-SNAPSHOT"})
create (_56027:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:759, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.1-SNAPSHOT"})
create (_56028:`FileNode` {`nID`:760, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.7.1-SNAPSHOT"})
create (_56029:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:761, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.7.1-SNAPSHOT"})
create (_56030:`FileNode` {`nID`:762, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56031:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:763, `name`:"wat", `order`:7, `version`:"0.7.1-SNAPSHOT"})
create (_56032:`FileNode` {`nID`:764, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56033:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:765, `name`:"taitale", `order`:6, `version`:"0.7.1-SNAPSHOT"})
create (_56034:`FileNode` {`nID`:766, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56035:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:767, `name`:"dsl", `order`:4, `version`:"0.7.1-SNAPSHOT"})
create (_56036:`FileNode` {`nID`:768, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56037:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:769, `name`:"api", `order`:1, `version`:"0.7.1-SNAPSHOT"})
create (_56038:`FileNode` {`nID`:770, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56039:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:771, `name`:"rim", `order`:3, `version`:"0.7.1-SNAPSHOT"})
create (_56040:`FileNode` {`nID`:772, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56041:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:773, `name`:"blueprints", `order`:2, `version`:"0.7.1-SNAPSHOT"})
create (_56042:`FileNode` {`nID`:774, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56043:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:775, `name`:"ds", `order`:5, `version`:"0.7.1-SNAPSHOT"})
create (_56044:`FileNode` {`nID`:776, `name`:"net.echinopsii.ariane.community.core.mapping_master.SNAPSHOT.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1-SNAPSHOT"})
create (_56045:`FileNode` {`nID`:777, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.7.1-SNAPSHOT"})
create (_56046:`FileNode` {`nID`:778, `name`:"ariane.community.core.mapping-master.SNAPSHOT.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1-SNAPSHOT"})
create (_56047:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:779, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.7.1-SNAPSHOT"})
create (_56048:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:780, `name`:"portal", `order`:4, `type`:"core", `version`:"0.7.1-SNAPSHOT"})
create (_56049:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:781, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.3-SNAPSHOT"})
create (_56050:`FileNode` {`nID`:782, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56051:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:783, `name`:"wat", `order`:2, `version`:"0.7.1-SNAPSHOT"})
create (_56052:`FileNode` {`nID`:784, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56053:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:785, `name`:"base", `order`:1, `version`:"0.7.1-SNAPSHOT"})
create (_56054:`FileNode` {`nID`:786, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.7.1-SNAPSHOT"})
create (_56055:`FileNode` {`nID`:787, `name`:"ariane.community.core.directory-master.SNAPSHOT.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1-SNAPSHOT"})
create (_56056:`FileNode` {`nID`:788, `name`:"net.echinopsii.ariane.community.core.directory_master.SNAPSHOT.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1-SNAPSHOT"})
create (_56057:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:789, `name`:"directory", `order`:6, `type`:"core", `version`:"0.7.1-SNAPSHOT"})
create (_56058:`FileNode` {`nID`:790, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56059:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:791, `name`:"messaging", `order`:2, `version`:"0.7.1-SNAPSHOT"})
create (_56060:`FileNode` {`nID`:792, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56061:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:793, `name`:"base", `order`:1, `version`:"0.7.1-SNAPSHOT"})
create (_56062:`FileNode` {`nID`:794, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56063:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:795, `name`:"wat", `order`:3, `version`:"0.7.1-SNAPSHOT"})
create (_56064:`FileNode` {`nID`:796, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.7.1-SNAPSHOT"})
create (_56065:`FileNode` {`nID`:797, `name`:"net.echinopsii.ariane.community.core.injector_master.SNAPSHOT.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1-SNAPSHOT"})
create (_56066:`FileNode` {`nID`:798, `name`:"ariane.community.core.injector-master.SNAPSHOT.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1-SNAPSHOT"})
create (_56067:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:799, `name`:"injector", `order`:7, `type`:"core", `version`:"0.7.1-SNAPSHOT"})
create (_56068:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:800, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.7.1-SNAPSHOT"})
create (_56069:`FileNode` {`nID`:801, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_56070:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:802, `name`:"base", `order`:1, `version`:"0.4.3-SNAPSHOT"})
create (_56071:`FileNode` {`nID`:803, `name`:"ariane.community.core.idm-master.SNAPSHOT.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.3-SNAPSHOT"})
create (_56072:`FileNode` {`nID`:804, `name`:"net.echinopsii.ariane.community.core.idm_master.SNAPSHOT.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.3-SNAPSHOT"})
create (_56073:`FileNode` {`nID`:805, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.3-SNAPSHOT"})
create (_56074:`FileNode` {`nID`:806, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56075:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:807, `name`:"base", `order`:1, `version`:"0.7.1-SNAPSHOT"})
create (_56076:`FileNode` {`nID`:808, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56077:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:809, `name`:"wat", `order`:2, `version`:"0.7.1-SNAPSHOT"})
create (_56078:`FileNode` {`nID`:810, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56079:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:811, `name`:"idmwat", `order`:3, `version`:"0.7.1-SNAPSHOT"})
create (_56080:`FileNode` {`nID`:812, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56081:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:813, `name`:"wab", `order`:4, `version`:"0.7.1-SNAPSHOT"})
create (_56082:`FileNode` {`nID`:814, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56083:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:815, `name`:"wresources", `order`:5, `version`:"0.7.1-SNAPSHOT"})
create (_56084:`FileNode` {`nID`:816, `name`:"ariane.community.core.portal-master.SNAPSHOT.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1-SNAPSHOT"})
create (_56085:`FileNode` {`nID`:817, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.7.1-SNAPSHOT"})
create (_56086:`FileNode` {`nID`:818, `name`:"net.echinopsii.ariane.community.core.portal_master.SNAPSHOT.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1-SNAPSHOT"})
create (_56087:`FileNode` {`nID`:819, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_56088:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:820, `name`:"directory", `order`:1, `version`:"0.2.5-SNAPSHOT"})
create (_56089:`FileNode` {`nID`:821, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_56090:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:822, `name`:"jsonparser", `order`:2, `version`:"0.2.5-SNAPSHOT"})
create (_56091:`FileNode` {`nID`:823, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_56092:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:824, `name`:"injector", `order`:3, `version`:"0.2.5-SNAPSHOT"})
create (_56093:`FileNode` {`nID`:825, `name`:"ariane.community.plugin.rabbitmq-master.SNAPSHOT.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.5-SNAPSHOT"})
create (_56094:`FileNode` {`nID`:826, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_master.SNAPSHOT.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.5-SNAPSHOT"})
create (_56095:`FileNode` {`nID`:827, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.5-SNAPSHOT"})
create (_56096:`FileNode` {`nID`:828, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.5-SNAPSHOT"})
create (_56097:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:829, `name`:"rabbitmq", `version`:"0.2.5-SNAPSHOT"})
create (_56098:`FileNode` {`nID`:830, `name`:"pom-ariane.community.distrib-master.SNAPSHOT.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.4-SNAPSHOT"})
create (_56099:`FileNode` {`nID`:831, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.4-SNAPSHOT"})
create (_56100:`FileNode` {`nID`:832, `name`:"ariane.community.plugins-distrib-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.4-SNAPSHOT"})
create (_56101:`FileNode` {`nID`:833, `name`:"ariane.community.git.repos-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.4-SNAPSHOT"})
create (_56102:`FileNode` {`nID`:834, `name`:"ariane.community.distrib-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.4-SNAPSHOT"})
create (_56103:`Distribution` {`editable`:"true", `nID`:835, `name`:"community", `version`:"0.7.1-SNAPSHOT"})
create (_56104:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:836, `name`:"procos", `version`:"0.1.0"})
create (_56105:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:837, `name`:"procos", `version`:"0.1.1-b01"})
create (_56106:`FileNode` {`nID`:838, `name`:"net.echinopsii.ariane.community.messaging_0.1.1.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.1.1-SNAPSHOT"})
create (_56107:`FileNode` {`nID`:839, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.1.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1-SNAPSHOT"})
create (_56108:`FileNode` {`nID`:840, `name`:"net.echinopsii.ariane.community.core.injector_0.7.1.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1-SNAPSHOT"})
create (_56109:`FileNode` {`nID`:841, `name`:"net.echinopsii.ariane.community.core.portal_0.7.1.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1-SNAPSHOT"})
create (_56110:`FileNode` {`nID`:842, `name`:"net.echinopsii.ariane.community.core.directory_0.7.1.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1-SNAPSHOT"})
create (_56111:`FileNode` {`nID`:843, `name`:"net.echinopsii.ariane.community.core.idm_0.4.3.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.4.3-SNAPSHOT"})
create (_56461:`FileNode` {`nID`:259, `name`:"pom-ariane.community.distrib-0.5.3.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.3"})
create (_56462:`FileNode` {`nID`:260, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.3"})
create (_56463:`FileNode` {`nID`:261, `name`:"ariane.community.plugins-distrib-0.5.3.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.3"})
create (_56464:`FileNode` {`nID`:262, `name`:"ariane.community.git.repos-0.5.3.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.3"})
create (_56465:`Distribution` {`editable`:"false", `nID`:263, `name`:"community", `version`:"0.5.3"})
create (_56466:`FileNode` {`nID`:264, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.0"})
create (_56467:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:265, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.0"})
create (_56468:`FileNode` {`nID`:266, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_56469:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:257, `name`:"rabbitmq", `version`:"0.1.0"})
create (_56470:`FileNode` {`nID`:258, `name`:"ariane.community.distrib-0.5.3.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.3"})
create (_56471:`FileNode` {`nID`:283, `name`:"net.echinopsii.ariane.community.core.portal_0.6.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_56472:`FileNode` {`nID`:284, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.0"})
create (_56473:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:281, `name`:"wresources", `order`:5, `version`:"0.6.0"})
create (_56474:`FileNode` {`nID`:282, `name`:"ariane.community.core.portal-0.6.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_56475:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:285, `name`:"portal", `order`:3, `type`:"core", `version`:"0.6.0"})
create (_56476:`FileNode` {`nID`:286, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.0"})
create (_56477:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:287, `name`:"api", `order`:1, `version`:"0.6.0"})
create (_56478:`FileNode` {`nID`:288, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.0"})
create (_56479:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:289, `name`:"blueprints", `order`:2, `version`:"0.6.0"})
create (_56480:`FileNode` {`nID`:290, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.0"})
create (_56481:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:291, `name`:"rim", `order`:3, `version`:"0.6.0"})
create (_56482:`FileNode` {`nID`:292, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.0"})
create (_56483:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:293, `name`:"dsl", `order`:4, `version`:"0.6.0"})
create (_56484:`FileNode` {`nID`:294, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.0"})
create (_56485:`FileNode` {`nID`:296, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.0"})
create (_56486:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:297, `name`:"wat", `order`:6, `version`:"0.6.0"})
create (_56487:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:295, `name`:"ds", `order`:5, `version`:"0.6.0"})
create (_56488:`FileNode` {`nID`:298, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.0"})
create (_56489:`FileNode` {`nID`:312, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.0"})
create (_56490:`FileNode` {`nID`:272, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.0"})
create (_56491:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:273, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_56492:`FileNode` {`nID`:274, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.0"})
create (_56493:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:275, `name`:"wat", `order`:2, `version`:"0.6.0"})
create (_56494:`FileNode` {`nID`:276, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.0"})
create (_56495:`FileNode` {`nID`:278, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.0"})
create (_56496:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:279, `name`:"wab", `order`:4, `version`:"0.6.0"})
create (_56497:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:277, `name`:"idmwat", `order`:3, `version`:"0.6.0"})
create (_56498:`FileNode` {`nID`:280, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.0"})
create (_56499:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:317, `name`:"wat", `order`:3, `version`:"0.6.0"})
create (_56500:`FileNode` {`nID`:318, `name`:"ariane.community.core.injector-0.6.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_56501:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:315, `name`:"messaging", `order`:2, `version`:"0.6.0"})
create (_56502:`FileNode` {`nID`:316, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.0"})
create (_56503:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:313, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_56504:`FileNode` {`nID`:314, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.0"})
create (_56505:`FileNode` {`nID`:320, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.0"})
create (_56506:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:321, `name`:"injector", `order`:6, `type`:"core", `version`:"0.6.0"})
create (_56507:`FileNode` {`nID`:319, `name`:"net.echinopsii.ariane.community.core.injector_0.6.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_56508:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:322, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.6.0"})
create (_56509:`FileNode` {`nID`:329, `name`:"ariane.community.plugin.rabbitmq-0.2.0.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.0"})
create (_56510:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:267, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_56511:`FileNode` {`nID`:268, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_56512:`FileNode` {`nID`:270, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_56513:`FileNode` {`nID`:269, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_56514:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:271, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_56515:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:303, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.6.0"})
create (_56516:`FileNode` {`nID`:304, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.0"})
create (_56517:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:299, `name`:"taitale", `order`:7, `version`:"0.6.0"})
create (_56518:`FileNode` {`nID`:300, `name`:"ariane.community.core.mapping-0.6.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_56519:`FileNode` {`nID`:301, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_56520:`FileNode` {`nID`:302, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.0"})
create (_56521:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:305, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_56522:`FileNode` {`nID`:306, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.0"})
create (_56523:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:307, `name`:"wat", `order`:2, `version`:"0.6.0"})
create (_56524:`FileNode` {`nID`:308, `name`:"ariane.community.core.directory-0.6.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_56525:`FileNode` {`nID`:309, `name`:"net.echinopsii.ariane.community.core.directory_0.6.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_56526:`FileNode` {`nID`:310, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.0"})
create (_56527:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:311, `name`:"directory", `order`:5, `type`:"core", `version`:"0.6.0"})
create (_56528:`FileNode` {`nID`:334, `name`:"ariane.community.distrib-0.6.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.0"})
create (_56529:`FileNode` {`nID`:335, `name`:"pom-ariane.community.distrib-0.6.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.0"})
create (_56530:`FileNode` {`nID`:330, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.0.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.0"})
create (_56531:`FileNode` {`nID`:331, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.0"})
create (_56532:`FileNode` {`nID`:332, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.0"})
create (_56533:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:333, `name`:"rabbitmq", `version`:"0.2.0"})
create (_56534:`Distribution` {`editable`:"false", `nID`:339, `name`:"community", `version`:"0.6.0"})
create (_56535:`FileNode` {`nID`:337, `name`:"ariane.community.plugins-distrib-0.6.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.0"})
create (_56536:`FileNode` {`nID`:338, `name`:"ariane.community.git.repos-0.6.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.0"})
create (_56537:`FileNode` {`nID`:336, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.0"})
create (_56538:`FileNode` {`nID`:340, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.1"})
create (_56539:`FileNode` {`nID`:344, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_56540:`FileNode` {`nID`:346, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_56541:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:343, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_56542:`FileNode` {`nID`:342, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_56543:`FileNode` {`nID`:345, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_56544:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:347, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_56546:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:341, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.1"})
create (_56547:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:324, `name`:"directory", `order`:1, `version`:"0.2.0"})
create (_56548:`FileNode` {`nID`:323, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.0"})
create (_56549:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:326, `name`:"jsonparser", `order`:2, `version`:"0.2.0"})
create (_56550:`FileNode` {`nID`:325, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.0"})
create (_56551:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:328, `name`:"injector", `order`:3, `version`:"0.2.0"})
create (_56552:`FileNode` {`nID`:327, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.0"})
create (_56644:`FileNode` {`nID`:254, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.1.0.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.1.0"})
create (_56645:`FileNode` {`nID`:255, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_56646:`FileNode` {`nID`:256, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.1.0"})
create (_56647:`FileNode` {`nID`:422, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_56648:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:421, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_56649:`FileNode` {`nID`:420, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_56650:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:419, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_56651:`FileNode` {`nID`:418, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_56652:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:417, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.2"})
create (_56653:`FileNode` {`nID`:423, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_56654:`FileNode` {`nID`:411, `name`:"pom-ariane.community.distrib-0.6.1.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.1"})
create (_56655:`FileNode` {`nID`:412, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.1"})
create (_56656:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:409, `name`:"rabbitmq", `version`:"0.2.1"})
create (_56657:`FileNode` {`nID`:410, `name`:"ariane.community.distrib-0.6.1.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.1"})
create (_56658:`FileNode` {`nID`:407, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.1"})
create (_56659:`FileNode` {`nID`:408, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.1"})
create (_56660:`Distribution` {`editable`:"false", `nID`:415, `name`:"community", `version`:"0.6.1"})
create (_56661:`FileNode` {`nID`:414, `name`:"ariane.community.git.repos-0.6.1.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.1"})
create (_56662:`FileNode` {`nID`:413, `name`:"ariane.community.plugins-distrib-0.6.1.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.1"})
create (_56663:`FileNode` {`nID`:416, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.2"})
create (_56664:`FileNode` {`nID`:360, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.1"})
create (_56665:`FileNode` {`nID`:406, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.1.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.1"})
create (_56666:`FileNode` {`nID`:366, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.1"})
create (_56667:`FileNode` {`nID`:401, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.1"})
create (_56668:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:402, `name`:"jsonparser", `order`:2, `version`:"0.2.1"})
create (_56669:`FileNode` {`nID`:399, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.1"})
create (_56670:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:400, `name`:"directory", `order`:1, `version`:"0.2.1"})
create (_56671:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:397, `name`:"injector", `order`:6, `type`:"core", `version`:"0.6.1"})
create (_56672:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:398, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.6.1"})
create (_56673:`FileNode` {`nID`:395, `name`:"net.echinopsii.ariane.community.core.injector_0.6.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_56674:`FileNode` {`nID`:396, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.1"})
create (_56675:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:393, `name`:"wat", `order`:3, `version`:"0.6.1"})
create (_56676:`FileNode` {`nID`:394, `name`:"ariane.community.core.injector-0.6.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_56677:`FileNode` {`nID`:405, `name`:"ariane.community.plugin.rabbitmq-0.2.1.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.1"})
create (_56678:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:404, `name`:"injector", `order`:3, `version`:"0.2.1"})
create (_56679:`FileNode` {`nID`:403, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.1"})
create (_56680:`FileNode` {`nID`:377, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_56681:`FileNode` {`nID`:378, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.1"})
create (_56682:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:375, `name`:"taitale", `order`:7, `version`:"0.6.1"})
create (_56683:`FileNode` {`nID`:376, `name`:"ariane.community.core.mapping-0.6.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_56684:`FileNode` {`nID`:385, `name`:"net.echinopsii.ariane.community.core.directory_0.6.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_56685:`FileNode` {`nID`:386, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.1"})
create (_56686:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:383, `name`:"wat", `order`:2, `version`:"0.6.1"})
create (_56687:`FileNode` {`nID`:384, `name`:"ariane.community.core.directory-0.6.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_56688:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:381, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_56689:`FileNode` {`nID`:382, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.1"})
create (_56690:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:379, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.6.1"})
create (_56691:`FileNode` {`nID`:380, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.1"})
create (_56692:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:387, `name`:"directory", `order`:5, `type`:"core", `version`:"0.6.1"})
create (_56693:`FileNode` {`nID`:388, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.1"})
create (_56694:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:391, `name`:"messaging", `order`:2, `version`:"0.6.1"})
create (_56695:`FileNode` {`nID`:390, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.1"})
create (_56696:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:389, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_56697:`FileNode` {`nID`:392, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.1"})
create (_56698:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:369, `name`:"dsl", `order`:4, `version`:"0.6.1"})
create (_56699:`FileNode` {`nID`:370, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.1"})
create (_56700:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:367, `name`:"rim", `order`:3, `version`:"0.6.1"})
create (_56701:`FileNode` {`nID`:368, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.1"})
create (_56702:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:373, `name`:"wat", `order`:6, `version`:"0.6.1"})
create (_56703:`FileNode` {`nID`:372, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.1"})
create (_56704:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:371, `name`:"ds", `order`:5, `version`:"0.6.1"})
create (_56705:`FileNode` {`nID`:374, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.1"})
create (_56706:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:361, `name`:"portal", `order`:3, `type`:"core", `version`:"0.6.1"})
create (_56707:`FileNode` {`nID`:362, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.1"})
create (_56708:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:365, `name`:"blueprints", `order`:2, `version`:"0.6.1"})
create (_56709:`FileNode` {`nID`:364, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.1"})
create (_56710:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:363, `name`:"api", `order`:1, `version`:"0.6.1"})
create (_56711:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:355, `name`:"wab", `order`:4, `version`:"0.6.1"})
create (_56712:`FileNode` {`nID`:356, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.1"})
create (_56713:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:353, `name`:"idmwat", `order`:3, `version`:"0.6.1"})
create (_56714:`FileNode` {`nID`:354, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.1"})
create (_56715:`FileNode` {`nID`:359, `name`:"net.echinopsii.ariane.community.core.portal_0.6.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_56716:`FileNode` {`nID`:358, `name`:"ariane.community.core.portal-0.6.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_56717:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:357, `name`:"wresources", `order`:5, `version`:"0.6.1"})
create (_56718:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:351, `name`:"wat", `order`:2, `version`:"0.6.1"})
create (_56719:`FileNode` {`nID`:352, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.1"})
create (_56720:`FileNode` {`nID`:435, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.2"})
create (_56721:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:428, `name`:"base", `order`:1, `version`:"0.4.1"})
create (_56722:`FileNode` {`nID`:429, `name`:"ariane.community.core.idm-0.4.1.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.1"})
create (_56723:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:426, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.2"})
create (_56724:`FileNode` {`nID`:427, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.1"})
create (_56725:`FileNode` {`nID`:424, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_56726:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:425, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_56727:`FileNode` {`nID`:433, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.2"})
create (_56728:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:432, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.1"})
create (_56729:`FileNode` {`nID`:431, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.1"})
create (_56730:`FileNode` {`nID`:430, `name`:"net.echinopsii.ariane.community.core.idm_0.4.1.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.1"})
create (_56731:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:434, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_56732:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:440, `name`:"wab", `order`:4, `version`:"0.6.2"})
create (_56733:`FileNode` {`nID`:439, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.2"})
create (_56734:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:438, `name`:"idmwat", `order`:3, `version`:"0.6.2"})
create (_56735:`FileNode` {`nID`:437, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.2"})
create (_56736:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:436, `name`:"wat", `order`:2, `version`:"0.6.2"})
create (_56737:`FileNode` {`nID`:441, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.2"})
create (_56829:`FileNode` {`nID`:348, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.1"})
create (_56830:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:349, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_56831:`FileNode` {`nID`:350, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.1"})
create _55445-[:`CONTAINS`]->_55444
create _55445-[:`DEPENDS ON`]->_55506
create _55447-[:`CONTAINS`]->_55446
create _55451-[:`COMPOSED OF`]->_55447
create _55451-[:`CONTAINS`]->_55448
create _55451-[:`CONTAINS`]->_55449
create _55451-[:`CONTAINS`]->_55450
create _55451-[:`DEPENDS ON`]->_55506
create _55453-[:`CONTAINS`]->_55452
create _55455-[:`CONTAINS`]->_55454
create _55457-[:`CONTAINS`]->_55456
create _55459-[:`CONTAINS`]->_55458
create _55461-[:`CONTAINS`]->_55460
create _55465-[:`COMPOSED OF`]->_55455
create _55465-[:`COMPOSED OF`]->_55459
create _55465-[:`COMPOSED OF`]->_55453
create _55465-[:`COMPOSED OF`]->_55461
create _55465-[:`COMPOSED OF`]->_55457
create _55465-[:`CONTAINS`]->_55462
create _55465-[:`CONTAINS`]->_55463
create _55465-[:`CONTAINS`]->_55464
create _55465-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_55451
create _55465-[:`DEPENDS ON`]->_55506
create _55467-[:`CONTAINS`]->_55466
create _55469-[:`CONTAINS`]->_55468
create _55471-[:`CONTAINS`]->_55470
create _55473-[:`CONTAINS`]->_55472
create _55475-[:`COMPOSED OF`]->_55471
create _55475-[:`COMPOSED OF`]->_55469
create _55475-[:`COMPOSED OF`]->_55467
create _55475-[:`COMPOSED OF`]->_55473
create _55475-[:`CONTAINS`]->_55474
create _55477-[:`CONTAINS`]->_55476
create _55479-[:`CONTAINS`]->_55478
create _55483-[:`COMPOSED OF`]->_55479
create _55483-[:`COMPOSED OF`]->_55475
create _55483-[:`COMPOSED OF`]->_55477
create _55483-[:`CONTAINS`]->_55481
create _55483-[:`CONTAINS`]->_55482
create _55483-[:`CONTAINS`]->_55480
create _55483-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_55451
create _55483-[:`DEPENDS ON`]->_55506
create _55483-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_55465
create _55485-[:`CONTAINS`]->_55484
create _55487-[:`CONTAINS`]->_55486
create _55491-[:`COMPOSED OF`]->_55487
create _55491-[:`COMPOSED OF`]->_55485
create _55491-[:`CONTAINS`]->_55490
create _55491-[:`CONTAINS`]->_55488
create _55491-[:`CONTAINS`]->_55489
create _55491-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_55465
create _55491-[:`DEPENDS ON`]->_55506
create _55493-[:`CONTAINS`]->_55492
create _55495-[:`CONTAINS`]->_55494
create _55499-[:`COMPOSED OF`]->_55493
create _55499-[:`COMPOSED OF`]->_55495
create _55499-[:`CONTAINS`]->_55496
create _55499-[:`CONTAINS`]->_55497
create _55499-[:`CONTAINS`]->_55498
create _55499-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_55465
create _55499-[:`DEPENDS ON`]->_55506
create _55500-[:`DEPENDS ON`]->_55506
create _55506-[:`CONTAINS`]->_55503
create _55506-[:`CONTAINS`]->_55505
create _55506-[:`CONTAINS`]->_55502
create _55506-[:`CONTAINS`]->_55501
create _55506-[:`CONTAINS`]->_55504
create _55508-[:`CONTAINS`]->_55507
create _55508-[:`DEPENDS ON`]->_55572
create _55510-[:`CONTAINS`]->_55509
create _55514-[:`COMPOSED OF`]->_55510
create _55514-[:`CONTAINS`]->_55513
create _55514-[:`CONTAINS`]->_55512
create _55514-[:`CONTAINS`]->_55511
create _55514-[:`DEPENDS ON`]->_55572
create _55516-[:`CONTAINS`]->_55515
create _55518-[:`CONTAINS`]->_55517
create _55520-[:`CONTAINS`]->_55519
create _55522-[:`CONTAINS`]->_55521
create _55524-[:`CONTAINS`]->_55523
create _55528-[:`COMPOSED OF`]->_55524
create _55528-[:`COMPOSED OF`]->_55516
create _55528-[:`COMPOSED OF`]->_55518
create _55528-[:`COMPOSED OF`]->_55520
create _55528-[:`COMPOSED OF`]->_55522
create _55528-[:`CONTAINS`]->_55527
create _55528-[:`CONTAINS`]->_55526
create _55528-[:`CONTAINS`]->_55525
create _55528-[:`DEPENDS ON`]->_55572
create _55528-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_55514
create _55530-[:`CONTAINS`]->_55529
create _55532-[:`CONTAINS`]->_55531
create _55534-[:`CONTAINS`]->_55533
create _55539-[:`CONTAINS`]->_55538
create _55541-[:`COMPOSED OF`]->_55539
create _55541-[:`COMPOSED OF`]->_55534
create _55541-[:`COMPOSED OF`]->_55532
create _55541-[:`COMPOSED OF`]->_55530
create _55541-[:`CONTAINS`]->_55540
create _55543-[:`CONTAINS`]->_55542
create _55545-[:`CONTAINS`]->_55544
create _55549-[:`COMPOSED OF`]->_55545
create _55549-[:`COMPOSED OF`]->_55543
create _55549-[:`COMPOSED OF`]->_55541
create _55549-[:`CONTAINS`]->_55547
create _55549-[:`CONTAINS`]->_55548
create _55549-[:`CONTAINS`]->_55546
create _55549-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_55514
create _55549-[:`DEPENDS ON`]->_55572
create _55549-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_55528
create _55551-[:`CONTAINS`]->_55550
create _55553-[:`CONTAINS`]->_55552
create _55557-[:`COMPOSED OF`]->_55551
create _55557-[:`COMPOSED OF`]->_55553
create _55557-[:`CONTAINS`]->_55556
create _55557-[:`CONTAINS`]->_55554
create _55557-[:`CONTAINS`]->_55555
create _55557-[:`DEPENDS ON`]->_55572
create _55557-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_55528
create _55559-[:`CONTAINS`]->_55558
create _55561-[:`CONTAINS`]->_55560
create _55565-[:`COMPOSED OF`]->_55559
create _55565-[:`COMPOSED OF`]->_55561
create _55565-[:`CONTAINS`]->_55562
create _55565-[:`CONTAINS`]->_55564
create _55565-[:`CONTAINS`]->_55563
create _55565-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_55528
create _55565-[:`DEPENDS ON`]->_55572
create _55566-[:`DEPENDS ON`]->_55572
create _55572-[:`CONTAINS`]->_55570
create _55572-[:`CONTAINS`]->_55567
create _55572-[:`CONTAINS`]->_55571
create _55572-[:`CONTAINS`]->_55568
create _55572-[:`CONTAINS`]->_55569
create _55574-[:`CONTAINS`]->_55573
create _55574-[:`DEPENDS ON`]->_55728
create _55576-[:`CONTAINS`]->_55575
create _55580-[:`COMPOSED OF`]->_55576
create _55580-[:`CONTAINS`]->_55578
create _55580-[:`CONTAINS`]->_55579
create _55580-[:`CONTAINS`]->_55577
create _55580-[:`DEPENDS ON`]->_55728
create _55582-[:`CONTAINS`]->_55581
create _55584-[:`CONTAINS`]->_55583
create _55586-[:`CONTAINS`]->_55585
create _55588-[:`CONTAINS`]->_55587
create _55590-[:`CONTAINS`]->_55589
create _55594-[:`COMPOSED OF`]->_55588
create _55594-[:`COMPOSED OF`]->_55590
create _55594-[:`COMPOSED OF`]->_55584
create _55594-[:`COMPOSED OF`]->_55586
create _55594-[:`COMPOSED OF`]->_55582
create _55594-[:`CONTAINS`]->_55591
create _55594-[:`CONTAINS`]->_55592
create _55594-[:`CONTAINS`]->_55593
create _55594-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_55580
create _55594-[:`DEPENDS ON`]->_55728
create _55596-[:`CONTAINS`]->_55595
create _55598-[:`CONTAINS`]->_55597
create _55600-[:`CONTAINS`]->_55599
create _55602-[:`CONTAINS`]->_55601
create _55604-[:`COMPOSED OF`]->_55600
create _55604-[:`COMPOSED OF`]->_55602
create _55604-[:`COMPOSED OF`]->_55596
create _55604-[:`COMPOSED OF`]->_55598
create _55604-[:`CONTAINS`]->_55603
create _55606-[:`CONTAINS`]->_55605
create _55608-[:`CONTAINS`]->_55607
create _55705-[:`COMPOSED OF`]->_55608
create _55705-[:`COMPOSED OF`]->_55606
create _55705-[:`COMPOSED OF`]->_55604
create _55705-[:`CONTAINS`]->_55704
create _55705-[:`CONTAINS`]->_55702
create _55705-[:`CONTAINS`]->_55703
create _55705-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_55580
create _55705-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_55594
create _55705-[:`DEPENDS ON`]->_55728
create _55707-[:`CONTAINS`]->_55706
create _55709-[:`CONTAINS`]->_55708
create _55713-[:`COMPOSED OF`]->_55709
create _55713-[:`COMPOSED OF`]->_55707
create _55713-[:`CONTAINS`]->_55712
create _55713-[:`CONTAINS`]->_55710
create _55713-[:`CONTAINS`]->_55711
create _55713-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_55594
create _55713-[:`DEPENDS ON`]->_55728
create _55715-[:`CONTAINS`]->_55714
create _55717-[:`CONTAINS`]->_55716
create _55721-[:`COMPOSED OF`]->_55717
create _55721-[:`COMPOSED OF`]->_55715
create _55721-[:`CONTAINS`]->_55720
create _55721-[:`CONTAINS`]->_55718
create _55721-[:`CONTAINS`]->_55719
create _55721-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_55594
create _55721-[:`DEPENDS ON`]->_55728
create _55722-[:`DEPENDS ON`]->_55728
create _55728-[:`CONTAINS`]->_55727
create _55728-[:`CONTAINS`]->_55726
create _55728-[:`CONTAINS`]->_55724
create _55728-[:`CONTAINS`]->_55723
create _55728-[:`CONTAINS`]->_55725
create _55730-[:`CONTAINS`]->_55729
create _55730-[:`DEPENDS ON`]->_56465
create _55732-[:`CONTAINS`]->_55731
create _55736-[:`COMPOSED OF`]->_55732
create _55736-[:`CONTAINS`]->_55734
create _55736-[:`CONTAINS`]->_55735
create _55736-[:`CONTAINS`]->_55733
create _55736-[:`DEPENDS ON`]->_56465
create _55738-[:`CONTAINS`]->_55737
create _55740-[:`CONTAINS`]->_55739
create _55742-[:`CONTAINS`]->_55741
create _55744-[:`CONTAINS`]->_55743
create _55746-[:`CONTAINS`]->_55745
create _55750-[:`COMPOSED OF`]->_55738
create _55750-[:`COMPOSED OF`]->_55740
create _55750-[:`COMPOSED OF`]->_55742
create _55750-[:`COMPOSED OF`]->_55746
create _55750-[:`COMPOSED OF`]->_55744
create _55750-[:`CONTAINS`]->_55749
create _55750-[:`CONTAINS`]->_55748
create _55750-[:`CONTAINS`]->_55747
create _55750-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_55736
create _55750-[:`DEPENDS ON`]->_56465
create _55752-[:`CONTAINS`]->_55751
create _55754-[:`CONTAINS`]->_55753
create _55756-[:`CONTAINS`]->_55755
create _55758-[:`CONTAINS`]->_55757
create _55760-[:`COMPOSED OF`]->_55752
create _55760-[:`COMPOSED OF`]->_55756
create _55760-[:`COMPOSED OF`]->_55754
create _55760-[:`COMPOSED OF`]->_55758
create _55760-[:`CONTAINS`]->_55759
create _55762-[:`CONTAINS`]->_55761
create _55764-[:`CONTAINS`]->_55763
create _55768-[:`COMPOSED OF`]->_55762
create _55768-[:`COMPOSED OF`]->_55760
create _55768-[:`COMPOSED OF`]->_55764
create _55768-[:`CONTAINS`]->_55766
create _55768-[:`CONTAINS`]->_55767
create _55768-[:`CONTAINS`]->_55765
create _55768-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_55736
create _55768-[:`DEPENDS ON`]->_56465
create _55768-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_55750
create _55770-[:`CONTAINS`]->_55769
create _55772-[:`CONTAINS`]->_55771
create _55776-[:`COMPOSED OF`]->_55772
create _55776-[:`COMPOSED OF`]->_55770
create _55776-[:`CONTAINS`]->_55775
create _55776-[:`CONTAINS`]->_55774
create _55776-[:`CONTAINS`]->_55773
create _55776-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_55750
create _55776-[:`DEPENDS ON`]->_56465
create _55778-[:`CONTAINS`]->_55777
create _55780-[:`CONTAINS`]->_55779
create _55784-[:`COMPOSED OF`]->_55780
create _55784-[:`COMPOSED OF`]->_55778
create _55784-[:`CONTAINS`]->_55782
create _55784-[:`CONTAINS`]->_55783
create _55784-[:`CONTAINS`]->_55781
create _55784-[:`DEPENDS ON`]->_56465
create _55784-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_55750
create _55785-[:`DEPENDS ON`]->_56465
create _55787-[:`CONTAINS`]->_55786
create _55789-[:`CONTAINS`]->_55788
create _55791-[:`CONTAINS`]->_55790
create _55794-[:`CONTAINS`]->_56737
create _55799-[:`CONTAINS`]->_55798
create _55801-[:`CONTAINS`]->_55800
create _55803-[:`CONTAINS`]->_55802
create _55805-[:`CONTAINS`]->_55804
create _55807-[:`COMPOSED OF`]->_55805
create _55807-[:`COMPOSED OF`]->_55801
create _55807-[:`COMPOSED OF`]->_55799
create _55807-[:`COMPOSED OF`]->_55803
create _55807-[:`CONTAINS`]->_55806
create _55809-[:`CONTAINS`]->_55808
create _55811-[:`CONTAINS`]->_55810
create _55815-[:`COMPOSED OF`]->_55809
create _55815-[:`COMPOSED OF`]->_55807
create _55815-[:`COMPOSED OF`]->_55811
create _55815-[:`CONTAINS`]->_55814
create _55815-[:`CONTAINS`]->_55812
create _55815-[:`CONTAINS`]->_55813
create _55815-[:`DEPENDS ON`]->_55851
create _55815-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56728
create _55815-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56723
create _55817-[:`CONTAINS`]->_55816
create _55819-[:`CONTAINS`]->_55818
create _55823-[:`COMPOSED OF`]->_55819
create _55823-[:`COMPOSED OF`]->_55817
create _55823-[:`CONTAINS`]->_55820
create _55823-[:`CONTAINS`]->_55821
create _55823-[:`CONTAINS`]->_55822
create _55823-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56723
create _55823-[:`DEPENDS ON`]->_55851
create _55825-[:`CONTAINS`]->_55824
create _55827-[:`CONTAINS`]->_55826
create _55829-[:`CONTAINS`]->_55828
create _55833-[:`COMPOSED OF`]->_55827
create _55833-[:`COMPOSED OF`]->_55829
create _55833-[:`COMPOSED OF`]->_55825
create _55833-[:`CONTAINS`]->_55830
create _55833-[:`CONTAINS`]->_55831
create _55833-[:`CONTAINS`]->_55832
create _55833-[:`DEPENDS ON`]->_55851
create _55833-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56723
create _55833-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_56726
create _55834-[:`DEPENDS ON`]->_55851
create _55836-[:`CONTAINS`]->_55835
create _55838-[:`CONTAINS`]->_55837
create _55840-[:`CONTAINS`]->_55839
create _55845-[:`COMPOSED OF`]->_55840
create _55845-[:`COMPOSED OF`]->_55838
create _55845-[:`COMPOSED OF`]->_55836
create _55845-[:`CONTAINS`]->_55843
create _55845-[:`CONTAINS`]->_55841
create _55845-[:`CONTAINS`]->_55844
create _55845-[:`CONTAINS`]->_55842
create _55845-[:`COMPATIBLE WITH`]->_55851
create _55845-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_55833
create _55845-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_55815
create _55845-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_55823
create _55845-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56723
create _55851-[:`CONTAINS`]->_55850
create _55851-[:`CONTAINS`]->_55847
create _55851-[:`CONTAINS`]->_55848
create _55851-[:`CONTAINS`]->_55849
create _55851-[:`CONTAINS`]->_55846
create _55853-[:`CONTAINS`]->_55852
create _55853-[:`DEPENDS ON`]->_55935
create _55855-[:`CONTAINS`]->_55854
create _55857-[:`CONTAINS`]->_55856
create _55861-[:`COMPOSED OF`]->_55857
create _55861-[:`COMPOSED OF`]->_55855
create _55861-[:`CONTAINS`]->_55858
create _55861-[:`CONTAINS`]->_55860
create _55861-[:`CONTAINS`]->_55859
create _55861-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_55862
create _55861-[:`DEPENDS ON`]->_55935
create _55862-[:`COMPOSED OF`]->_55878
create _55862-[:`COMPOSED OF`]->_55874
create _55862-[:`COMPOSED OF`]->_55870
create _55862-[:`COMPOSED OF`]->_55872
create _55862-[:`COMPOSED OF`]->_55876
create _55862-[:`CONTAINS`]->_55881
create _55862-[:`CONTAINS`]->_55879
create _55862-[:`CONTAINS`]->_55880
create _55862-[:`DEPENDS ON`]->_55935
create _55862-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_55868
create _55864-[:`CONTAINS`]->_55863
create _55868-[:`COMPOSED OF`]->_55864
create _55868-[:`CONTAINS`]->_55865
create _55868-[:`CONTAINS`]->_55867
create _55868-[:`CONTAINS`]->_55866
create _55868-[:`DEPENDS ON`]->_55935
create _55870-[:`CONTAINS`]->_55869
create _55872-[:`CONTAINS`]->_55871
create _55874-[:`CONTAINS`]->_55873
create _55876-[:`CONTAINS`]->_55875
create _55878-[:`CONTAINS`]->_55877
create _55883-[:`CONTAINS`]->_55882
create _55885-[:`CONTAINS`]->_55884
create _55887-[:`CONTAINS`]->_55886
create _55889-[:`CONTAINS`]->_55888
create _55891-[:`COMPOSED OF`]->_55889
create _55891-[:`COMPOSED OF`]->_55887
create _55891-[:`COMPOSED OF`]->_55885
create _55891-[:`COMPOSED OF`]->_55883
create _55891-[:`CONTAINS`]->_55890
create _55893-[:`CONTAINS`]->_55892
create _55895-[:`CONTAINS`]->_55894
create _55899-[:`COMPOSED OF`]->_55891
create _55899-[:`COMPOSED OF`]->_55893
create _55899-[:`COMPOSED OF`]->_55895
create _55899-[:`CONTAINS`]->_55897
create _55899-[:`CONTAINS`]->_55896
create _55899-[:`CONTAINS`]->_55898
create _55899-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_55862
create _55899-[:`DEPENDS ON`]->_55935
create _55899-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_55868
create _55901-[:`CONTAINS`]->_55900
create _55903-[:`CONTAINS`]->_55902
create _55907-[:`COMPOSED OF`]->_55901
create _55907-[:`COMPOSED OF`]->_55903
create _55907-[:`CONTAINS`]->_55904
create _55907-[:`CONTAINS`]->_55905
create _55907-[:`CONTAINS`]->_55906
create _55907-[:`DEPENDS ON`]->_55935
create _55907-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_55862
create _55909-[:`CONTAINS`]->_55908
create _55911-[:`CONTAINS`]->_55910
create _55913-[:`CONTAINS`]->_55912
create _55917-[:`COMPOSED OF`]->_55913
create _55917-[:`COMPOSED OF`]->_55911
create _55917-[:`COMPOSED OF`]->_55909
create _55917-[:`CONTAINS`]->_55916
create _55917-[:`CONTAINS`]->_55915
create _55917-[:`CONTAINS`]->_55914
create _55917-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_55861
create _55917-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_55862
create _55917-[:`DEPENDS ON`]->_55935
create _55918-[:`DEPENDS ON`]->_55935
create _55920-[:`CONTAINS`]->_55919
create _55922-[:`CONTAINS`]->_55921
create _55924-[:`CONTAINS`]->_55923
create _55929-[:`COMPOSED OF`]->_55920
create _55929-[:`COMPOSED OF`]->_55924
create _55929-[:`COMPOSED OF`]->_55922
create _55929-[:`CONTAINS`]->_55927
create _55929-[:`CONTAINS`]->_55928
create _55929-[:`CONTAINS`]->_55926
create _55929-[:`CONTAINS`]->_55925
create _55929-[:`COMPATIBLE WITH`]->_55935
create _55929-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_55917
create _55929-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_55862
create _55929-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_55899
create _55929-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_55907
create _55935-[:`CONTAINS`]->_55930
create _55935-[:`CONTAINS`]->_55934
create _55935-[:`CONTAINS`]->_55932
create _55935-[:`CONTAINS`]->_55931
create _55935-[:`CONTAINS`]->_55933
create _55937-[:`CONTAINS`]->_55936
create _55939-[:`CONTAINS`]->_55938
create _55941-[:`CONTAINS`]->_55940
create _55943-[:`CONTAINS`]->_55942
create _55945-[:`CONTAINS`]->_55944
create _55949-[:`COMPOSED OF`]->_55945
create _55949-[:`COMPOSED OF`]->_55941
create _55949-[:`COMPOSED OF`]->_55943
create _55949-[:`COMPOSED OF`]->_55937
create _55949-[:`COMPOSED OF`]->_55939
create _55949-[:`CONTAINS`]->_55948
create _55949-[:`CONTAINS`]->_55946
create _55949-[:`CONTAINS`]->_55947
create _55949-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_55950
create _55949-[:`DEPENDS ON`]->_56019
create _55950-[:`COMPOSED OF`]->_55952
create _55950-[:`CONTAINS`]->_55955
create _55950-[:`CONTAINS`]->_55953
create _55950-[:`CONTAINS`]->_55954
create _55950-[:`DEPENDS ON`]->_56019
create _55952-[:`CONTAINS`]->_55951
create _55956-[:`DEPENDS ON`]->_56019
create _55958-[:`CONTAINS`]->_55957
create _55960-[:`CONTAINS`]->_55959
create _55962-[:`CONTAINS`]->_55961
create _55966-[:`COMPOSED OF`]->_55962
create _55966-[:`COMPOSED OF`]->_55958
create _55966-[:`COMPOSED OF`]->_55960
create _55966-[:`CONTAINS`]->_55964
create _55966-[:`CONTAINS`]->_55965
create _55966-[:`CONTAINS`]->_55963
create _55966-[:`DEPENDS ON`]->_56019
create _55966-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_55967
create _55966-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_55949
create _55967-[:`COMPOSED OF`]->_55997
create _55967-[:`COMPOSED OF`]->_55999
create _55967-[:`CONTAINS`]->_56001
create _55967-[:`CONTAINS`]->_56000
create _55967-[:`CONTAINS`]->_56002
create _55967-[:`DEPENDS ON`]->_56019
create _55969-[:`CONTAINS`]->_55968
create _55971-[:`CONTAINS`]->_55970
create _55975-[:`COMPOSED OF`]->_55969
create _55975-[:`COMPOSED OF`]->_55971
create _55975-[:`CONTAINS`]->_55972
create _55975-[:`CONTAINS`]->_55974
create _55975-[:`CONTAINS`]->_55973
create _55975-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_55949
create _55975-[:`DEPENDS ON`]->_56019
create _55977-[:`CONTAINS`]->_55976
create _55979-[:`CONTAINS`]->_55978
create _55981-[:`CONTAINS`]->_55980
create _55983-[:`CONTAINS`]->_55982
create _55985-[:`CONTAINS`]->_55984
create _55987-[:`CONTAINS`]->_55986
create _55989-[:`COMPOSED OF`]->_55987
create _55989-[:`COMPOSED OF`]->_55985
create _55989-[:`COMPOSED OF`]->_55981
create _55989-[:`COMPOSED OF`]->_55983
create _55989-[:`CONTAINS`]->_55988
create _55993-[:`COMPOSED OF`]->_55977
create _55993-[:`COMPOSED OF`]->_55989
create _55993-[:`COMPOSED OF`]->_55979
create _55993-[:`CONTAINS`]->_55992
create _55993-[:`CONTAINS`]->_55990
create _55993-[:`CONTAINS`]->_55991
create _55993-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_55950
create _55993-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_55949
create _55993-[:`DEPENDS ON`]->_56019
create _55995-[:`CONTAINS`]->_55994
create _55995-[:`DEPENDS ON`]->_56019
create _55997-[:`CONTAINS`]->_55996
create _55999-[:`CONTAINS`]->_55998
create _56004-[:`CONTAINS`]->_56003
create _56006-[:`CONTAINS`]->_56005
create _56008-[:`CONTAINS`]->_56007
create _56013-[:`COMPOSED OF`]->_56008
create _56013-[:`COMPOSED OF`]->_56004
create _56013-[:`COMPOSED OF`]->_56006
create _56013-[:`CONTAINS`]->_56010
create _56013-[:`CONTAINS`]->_56009
create _56013-[:`CONTAINS`]->_56012
create _56013-[:`CONTAINS`]->_56011
create _56013-[:`COMPATIBLE WITH`]->_56019
create _56013-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_55949
create _56013-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_55993
create _56013-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_55975
create _56013-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_55966
create _56019-[:`CONTAINS`]->_56017
create _56019-[:`CONTAINS`]->_56014
create _56019-[:`CONTAINS`]->_56016
create _56019-[:`CONTAINS`]->_56015
create _56019-[:`CONTAINS`]->_56018
create _56021-[:`CONTAINS`]->_56020
create _56023-[:`CONTAINS`]->_56022
create _56027-[:`COMPOSED OF`]->_56021
create _56027-[:`COMPOSED OF`]->_56023
create _56027-[:`CONTAINS`]->_56026
create _56027-[:`CONTAINS`]->_56024
create _56027-[:`CONTAINS`]->_56025
create _56027-[:`DEPENDS ON`]->_56103
create _56029-[:`CONTAINS`]->_56028
create _56029-[:`DEPENDS ON`]->_56103
create _56031-[:`CONTAINS`]->_56030
create _56033-[:`CONTAINS`]->_56032
create _56035-[:`CONTAINS`]->_56034
create _56037-[:`CONTAINS`]->_56036
create _56039-[:`CONTAINS`]->_56038
create _56041-[:`CONTAINS`]->_56040
create _56043-[:`COMPOSED OF`]->_56035
create _56043-[:`COMPOSED OF`]->_56037
create _56043-[:`COMPOSED OF`]->_56041
create _56043-[:`COMPOSED OF`]->_56039
create _56043-[:`CONTAINS`]->_56042
create _56047-[:`COMPOSED OF`]->_56043
create _56047-[:`COMPOSED OF`]->_56033
create _56047-[:`COMPOSED OF`]->_56031
create _56047-[:`CONTAINS`]->_56044
create _56047-[:`CONTAINS`]->_56046
create _56047-[:`CONTAINS`]->_56045
create _56047-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56049
create _56047-[:`DEPENDS ON`]->_56103
create _56047-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_56048
create _56048-[:`COMPOSED OF`]->_56079
create _56048-[:`COMPOSED OF`]->_56075
create _56048-[:`COMPOSED OF`]->_56077
create _56048-[:`COMPOSED OF`]->_56081
create _56048-[:`COMPOSED OF`]->_56083
create _56048-[:`CONTAINS`]->_56084
create _56048-[:`CONTAINS`]->_56086
create _56048-[:`CONTAINS`]->_56085
create _56048-[:`DEPENDS ON`]->_56103
create _56048-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56049
create _56049-[:`COMPOSED OF`]->_56070
create _56049-[:`CONTAINS`]->_56073
create _56049-[:`CONTAINS`]->_56072
create _56049-[:`CONTAINS`]->_56071
create _56049-[:`DEPENDS ON`]->_56103
create _56051-[:`CONTAINS`]->_56050
create _56053-[:`CONTAINS`]->_56052
create _56057-[:`COMPOSED OF`]->_56051
create _56057-[:`COMPOSED OF`]->_56053
create _56057-[:`CONTAINS`]->_56055
create _56057-[:`CONTAINS`]->_56054
create _56057-[:`CONTAINS`]->_56056
create _56057-[:`DEPENDS ON`]->_56103
create _56057-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_56048
create _56059-[:`CONTAINS`]->_56058
create _56061-[:`CONTAINS`]->_56060
create _56063-[:`CONTAINS`]->_56062
create _56067-[:`COMPOSED OF`]->_56063
create _56067-[:`COMPOSED OF`]->_56061
create _56067-[:`COMPOSED OF`]->_56059
create _56067-[:`CONTAINS`]->_56065
create _56067-[:`CONTAINS`]->_56064
create _56067-[:`CONTAINS`]->_56066
create _56067-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_56027
create _56067-[:`DEPENDS ON`]->_56103
create _56067-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_56048
create _56068-[:`CONTAINS`]->_56111
create _56068-[:`CONTAINS`]->_56110
create _56068-[:`CONTAINS`]->_56109
create _56068-[:`CONTAINS`]->_56108
create _56068-[:`CONTAINS`]->_56107
create _56068-[:`CONTAINS`]->_56106
create _56068-[:`DEPENDS ON`]->_56103
create _56070-[:`CONTAINS`]->_56069
create _56075-[:`CONTAINS`]->_56074
create _56077-[:`CONTAINS`]->_56076
create _56079-[:`CONTAINS`]->_56078
create _56081-[:`CONTAINS`]->_56080
create _56083-[:`CONTAINS`]->_56082
create _56088-[:`CONTAINS`]->_56087
create _56090-[:`CONTAINS`]->_56089
create _56092-[:`CONTAINS`]->_56091
create _56097-[:`COMPOSED OF`]->_56090
create _56097-[:`COMPOSED OF`]->_56088
create _56097-[:`COMPOSED OF`]->_56092
create _56097-[:`CONTAINS`]->_56093
create _56097-[:`CONTAINS`]->_56094
create _56097-[:`CONTAINS`]->_56096
create _56097-[:`CONTAINS`]->_56095
create _56097-[:`COMPATIBLE WITH`]->_56103
create _56097-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_56057
create _56097-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_56048
create _56097-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_56047
create _56097-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_56067
create _56103-[:`CONTAINS`]->_56100
create _56103-[:`CONTAINS`]->_56098
create _56103-[:`CONTAINS`]->_56102
create _56103-[:`CONTAINS`]->_56099
create _56103-[:`CONTAINS`]->_56101
create _56104-[:`COMPATIBLE WITH`]->_56019
create _56105-[:`COMPATIBLE WITH`]->_56103
create _56465-[:`CONTAINS`]->_56464
create _56465-[:`CONTAINS`]->_56463
create _56465-[:`CONTAINS`]->_56462
create _56465-[:`CONTAINS`]->_56470
create _56465-[:`CONTAINS`]->_56461
create _56467-[:`CONTAINS`]->_56466
create _56467-[:`DEPENDS ON`]->_56534
create _56469-[:`COMPOSED OF`]->_55789
create _56469-[:`COMPOSED OF`]->_55791
create _56469-[:`COMPOSED OF`]->_55787
create _56469-[:`CONTAINS`]->_55792
create _56469-[:`CONTAINS`]->_56644
create _56469-[:`CONTAINS`]->_56646
create _56469-[:`CONTAINS`]->_56645
create _56469-[:`COMPATIBLE WITH`]->_56465
create _56469-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_55768
create _56469-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_55776
create _56469-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_55750
create _56469-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_55784
create _56473-[:`CONTAINS`]->_56498
create _56475-[:`COMPOSED OF`]->_56491
create _56475-[:`COMPOSED OF`]->_56493
create _56475-[:`COMPOSED OF`]->_56473
create _56475-[:`COMPOSED OF`]->_56496
create _56475-[:`COMPOSED OF`]->_56497
create _56475-[:`CONTAINS`]->_56471
create _56475-[:`CONTAINS`]->_56474
create _56475-[:`CONTAINS`]->_56472
create _56475-[:`DEPENDS ON`]->_56534
create _56475-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56514
create _56477-[:`CONTAINS`]->_56476
create _56479-[:`CONTAINS`]->_56478
create _56481-[:`CONTAINS`]->_56480
create _56483-[:`CONTAINS`]->_56482
create _56486-[:`CONTAINS`]->_56485
create _56487-[:`COMPOSED OF`]->_56481
create _56487-[:`COMPOSED OF`]->_56479
create _56487-[:`COMPOSED OF`]->_56483
create _56487-[:`COMPOSED OF`]->_56477
create _56487-[:`CONTAINS`]->_56484
create _56491-[:`CONTAINS`]->_56490
create _56493-[:`CONTAINS`]->_56492
create _56496-[:`CONTAINS`]->_56495
create _56497-[:`CONTAINS`]->_56494
create _56499-[:`CONTAINS`]->_56502
create _56501-[:`CONTAINS`]->_56504
create _56503-[:`CONTAINS`]->_56489
create _56506-[:`COMPOSED OF`]->_56501
create _56506-[:`COMPOSED OF`]->_56499
create _56506-[:`COMPOSED OF`]->_56503
create _56506-[:`CONTAINS`]->_56507
create _56506-[:`CONTAINS`]->_56505
create _56506-[:`CONTAINS`]->_56500
create _56506-[:`DEPENDS ON`]->_56534
create _56506-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56475
create _56508-[:`DEPENDS ON`]->_56534
create _56510-[:`CONTAINS`]->_56468
create _56514-[:`COMPOSED OF`]->_56510
create _56514-[:`CONTAINS`]->_56513
create _56514-[:`CONTAINS`]->_56512
create _56514-[:`CONTAINS`]->_56511
create _56514-[:`DEPENDS ON`]->_56534
create _56515-[:`COMPOSED OF`]->_56486
create _56515-[:`COMPOSED OF`]->_56487
create _56515-[:`COMPOSED OF`]->_56517
create _56515-[:`CONTAINS`]->_56519
create _56515-[:`CONTAINS`]->_56520
create _56515-[:`CONTAINS`]->_56518
create _56515-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56514
create _56515-[:`DEPENDS ON`]->_56534
create _56515-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56475
create _56517-[:`CONTAINS`]->_56488
create _56521-[:`CONTAINS`]->_56516
create _56523-[:`CONTAINS`]->_56522
create _56527-[:`COMPOSED OF`]->_56523
create _56527-[:`COMPOSED OF`]->_56521
create _56527-[:`CONTAINS`]->_56525
create _56527-[:`CONTAINS`]->_56526
create _56527-[:`CONTAINS`]->_56524
create _56527-[:`DEPENDS ON`]->_56534
create _56527-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56475
create _56533-[:`COMPOSED OF`]->_56551
create _56533-[:`COMPOSED OF`]->_56549
create _56533-[:`COMPOSED OF`]->_56547
create _56533-[:`CONTAINS`]->_56531
create _56533-[:`CONTAINS`]->_56509
create _56533-[:`CONTAINS`]->_56532
create _56533-[:`CONTAINS`]->_56530
create _56533-[:`COMPATIBLE WITH` {`version_max`:"0.2.1", `version_min`:"0.2.0"}]->_56534
create _56533-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56527
create _56533-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56515
create _56533-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56475
create _56533-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56506
create _56534-[:`CONTAINS`]->_56535
create _56534-[:`CONTAINS`]->_56536
create _56534-[:`CONTAINS`]->_56528
create _56534-[:`CONTAINS`]->_56529
create _56534-[:`CONTAINS`]->_56537
create _56541-[:`CONTAINS`]->_56542
create _56544-[:`COMPOSED OF`]->_56541
create _56544-[:`CONTAINS`]->_56540
create _56544-[:`CONTAINS`]->_56539
create _56544-[:`CONTAINS`]->_56543
create _56544-[:`DEPENDS ON`]->_56660
create _56546-[:`CONTAINS`]->_56538
create _56546-[:`DEPENDS ON`]->_56660
create _56547-[:`CONTAINS`]->_56548
create _56549-[:`CONTAINS`]->_56550
create _56551-[:`CONTAINS`]->_56552
create _56648-[:`CONTAINS`]->_56649
create _56650-[:`CONTAINS`]->_56651
create _56652-[:`CONTAINS`]->_56663
create _56652-[:`DEPENDS ON`]->_55851
create _56656-[:`COMPOSED OF`]->_56668
create _56656-[:`COMPOSED OF`]->_56678
create _56656-[:`COMPOSED OF`]->_56670
create _56656-[:`CONTAINS`]->_56677
create _56656-[:`CONTAINS`]->_56659
create _56656-[:`CONTAINS`]->_56665
create _56656-[:`CONTAINS`]->_56658
create _56656-[:`COMPATIBLE WITH`]->_56660
create _56656-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56690
create _56656-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56692
create _56656-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56706
create _56656-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56671
create _56660-[:`CONTAINS`]->_56654
create _56660-[:`CONTAINS`]->_56662
create _56660-[:`CONTAINS`]->_56655
create _56660-[:`CONTAINS`]->_56661
create _56660-[:`CONTAINS`]->_56657
create _56668-[:`CONTAINS`]->_56667
create _56670-[:`CONTAINS`]->_56669
create _56671-[:`COMPOSED OF`]->_56694
create _56671-[:`COMPOSED OF`]->_56675
create _56671-[:`COMPOSED OF`]->_56696
create _56671-[:`CONTAINS`]->_56674
create _56671-[:`CONTAINS`]->_56673
create _56671-[:`CONTAINS`]->_56676
create _56671-[:`DEPENDS ON`]->_56660
create _56671-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56706
create _56672-[:`DEPENDS ON`]->_56660
create _56675-[:`CONTAINS`]->_56697
create _56678-[:`CONTAINS`]->_56679
create _56682-[:`CONTAINS`]->_56705
create _56686-[:`CONTAINS`]->_56689
create _56688-[:`CONTAINS`]->_56691
create _56690-[:`COMPOSED OF`]->_56702
create _56690-[:`COMPOSED OF`]->_56704
create _56690-[:`COMPOSED OF`]->_56682
create _56690-[:`CONTAINS`]->_56681
create _56690-[:`CONTAINS`]->_56680
create _56690-[:`CONTAINS`]->_56683
create _56690-[:`DEPENDS ON`]->_56660
create _56690-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56544
create _56690-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56706
create _56692-[:`COMPOSED OF`]->_56688
create _56692-[:`COMPOSED OF`]->_56686
create _56692-[:`CONTAINS`]->_56685
create _56692-[:`CONTAINS`]->_56687
create _56692-[:`CONTAINS`]->_56684
create _56692-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56706
create _56692-[:`DEPENDS ON`]->_56660
create _56694-[:`CONTAINS`]->_56695
create _56696-[:`CONTAINS`]->_56693
create _56698-[:`CONTAINS`]->_56701
create _56700-[:`CONTAINS`]->_56666
create _56702-[:`CONTAINS`]->_56703
create _56704-[:`COMPOSED OF`]->_56698
create _56704-[:`COMPOSED OF`]->_56710
create _56704-[:`COMPOSED OF`]->_56700
create _56704-[:`COMPOSED OF`]->_56708
create _56704-[:`CONTAINS`]->_56699
create _56706-[:`COMPOSED OF`]->_56713
create _56706-[:`COMPOSED OF`]->_56711
create _56706-[:`COMPOSED OF`]->_56830
create _56706-[:`COMPOSED OF`]->_56718
create _56706-[:`COMPOSED OF`]->_56717
create _56706-[:`CONTAINS`]->_56664
create _56706-[:`CONTAINS`]->_56716
create _56706-[:`CONTAINS`]->_56715
create _56706-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56544
create _56706-[:`DEPENDS ON`]->_56660
create _56708-[:`CONTAINS`]->_56709
create _56710-[:`CONTAINS`]->_56707
create _56711-[:`CONTAINS`]->_56714
create _56713-[:`CONTAINS`]->_56719
create _56717-[:`CONTAINS`]->_56712
create _56718-[:`CONTAINS`]->_56831
create _56721-[:`CONTAINS`]->_56724
create _56723-[:`COMPOSED OF`]->_55794
create _56723-[:`COMPOSED OF`]->_56731
create _56723-[:`COMPOSED OF`]->_56736
create _56723-[:`COMPOSED OF`]->_56732
create _56723-[:`COMPOSED OF`]->_56734
create _56723-[:`CONTAINS`]->_55797
create _56723-[:`CONTAINS`]->_55795
create _56723-[:`CONTAINS`]->_55796
create _56723-[:`DEPENDS ON`]->_55851
create _56723-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56728
create _56726-[:`COMPOSED OF`]->_56648
create _56726-[:`COMPOSED OF`]->_56650
create _56726-[:`CONTAINS`]->_56725
create _56726-[:`CONTAINS`]->_56653
create _56726-[:`CONTAINS`]->_56647
create _56726-[:`DEPENDS ON`]->_55851
create _56726-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56723
create _56728-[:`COMPOSED OF`]->_56721
create _56728-[:`CONTAINS`]->_56722
create _56728-[:`CONTAINS`]->_56730
create _56728-[:`CONTAINS`]->_56729
create _56728-[:`DEPENDS ON`]->_55851
create _56731-[:`CONTAINS`]->_56727
create _56732-[:`CONTAINS`]->_56733
create _56734-[:`CONTAINS`]->_56735
create _56736-[:`CONTAINS`]->_56720
create _56830-[:`CONTAINS`]->_56829
;
commit
