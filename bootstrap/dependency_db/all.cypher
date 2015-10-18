begin
create (_8492:`FileNode` {`nID`:1, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.0"})
create (_8493:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:2, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.0"})
create (_8494:`FileNode` {`nID`:3, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_8495:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:4, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_8496:`FileNode` {`nID`:5, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_8497:`FileNode` {`nID`:6, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_8498:`FileNode` {`nID`:7, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_8499:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:8, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_8500:`FileNode` {`nID`:9, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.0"})
create (_8501:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:10, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_8502:`FileNode` {`nID`:11, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.0"})
create (_8503:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:12, `name`:"idmwat", `order`:2, `version`:"0.5.0"})
create (_8504:`FileNode` {`nID`:13, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.0"})
create (_8505:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:14, `name`:"wab", `order`:3, `version`:"0.5.0"})
create (_8506:`FileNode` {`nID`:15, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.0"})
create (_8507:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:16, `name`:"wat", `order`:4, `version`:"0.5.0"})
create (_8508:`FileNode` {`nID`:17, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.0"})
create (_8509:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:18, `name`:"wresources", `order`:5, `version`:"0.5.0"})
create (_8510:`FileNode` {`nID`:19, `name`:"ariane.community.core.portal-0.5.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_8511:`FileNode` {`nID`:20, `name`:"net.echinopsii.ariane.community.core.portal_0.5.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_8512:`FileNode` {`nID`:21, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.0"})
create (_8513:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:22, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.0"})
create (_8514:`FileNode` {`nID`:23, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.0"})
create (_8515:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:24, `name`:"api", `order`:1, `version`:"0.5.0"})
create (_8516:`FileNode` {`nID`:25, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.0"})
create (_8517:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:26, `name`:"blueprints", `order`:2, `version`:"0.5.0"})
create (_8518:`FileNode` {`nID`:27, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.0"})
create (_8519:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:28, `name`:"dsl", `order`:3, `version`:"0.5.0"})
create (_8520:`FileNode` {`nID`:29, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.0"})
create (_8521:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:30, `name`:"rim", `order`:4, `version`:"0.5.0"})
create (_8522:`FileNode` {`nID`:31, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.0"})
create (_8523:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:32, `name`:"ds", `order`:5, `version`:"0.5.0"})
create (_8524:`FileNode` {`nID`:33, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.0"})
create (_8525:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:34, `name`:"taitale", `order`:6, `version`:"0.5.0"})
create (_8526:`FileNode` {`nID`:35, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.0"})
create (_8527:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:36, `name`:"wat", `order`:7, `version`:"0.5.0"})
create (_8528:`FileNode` {`nID`:37, `name`:"ariane.community.core.mapping-0.5.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_8529:`FileNode` {`nID`:38, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_8530:`FileNode` {`nID`:39, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.0"})
create (_8531:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:40, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.0"})
create (_8532:`FileNode` {`nID`:41, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.0"})
create (_8533:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:42, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_8534:`FileNode` {`nID`:43, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.0"})
create (_8535:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:44, `name`:"wat", `order`:2, `version`:"0.5.0"})
create (_8536:`FileNode` {`nID`:45, `name`:"ariane.community.core.directory-0.5.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_8537:`FileNode` {`nID`:46, `name`:"net.echinopsii.ariane.community.core.directory_0.5.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_8538:`FileNode` {`nID`:47, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.0"})
create (_8539:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:48, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.0"})
create (_8540:`FileNode` {`nID`:49, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.0"})
create (_8541:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:50, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_8542:`FileNode` {`nID`:51, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.0"})
create (_8543:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:52, `name`:"wat", `order`:2, `version`:"0.5.0"})
create (_8544:`FileNode` {`nID`:53, `name`:"ariane.community.core.injector-0.5.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_8545:`FileNode` {`nID`:54, `name`:"net.echinopsii.ariane.community.core.injector_0.5.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_8546:`FileNode` {`nID`:55, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.0"})
create (_8547:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:56, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.0"})
create (_8548:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:57, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.0"})
create (_8549:`FileNode` {`nID`:58, `name`:"ariane.community.distrib-0.5.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.0"})
create (_8550:`FileNode` {`nID`:59, `name`:"pom-ariane.community.distrib-0.5.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.0"})
create (_8551:`FileNode` {`nID`:60, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.0"})
create (_8552:`FileNode` {`nID`:61, `name`:"ariane.community.plugins-distrib-0.5.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.0"})
create (_8553:`FileNode` {`nID`:62, `name`:"ariane.community.git.repos-0.5.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.0"})
create (_8554:`Distribution` {`editable`:"false", `nID`:63, `name`:"community", `version`:"0.5.0"})
create (_8555:`FileNode` {`nID`:64, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.1"})
create (_8556:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:65, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.1"})
create (_8557:`FileNode` {`nID`:66, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_8558:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:67, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_8559:`FileNode` {`nID`:68, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_8560:`FileNode` {`nID`:69, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_8561:`FileNode` {`nID`:70, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_8562:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:71, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_8563:`FileNode` {`nID`:72, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_8564:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:73, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_8565:`FileNode` {`nID`:74, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_8566:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:75, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_8567:`FileNode` {`nID`:76, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_8568:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:77, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_8569:`FileNode` {`nID`:78, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_8570:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:79, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_8571:`FileNode` {`nID`:80, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_8572:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:81, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_8573:`FileNode` {`nID`:82, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_8574:`FileNode` {`nID`:83, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_8575:`FileNode` {`nID`:84, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_8576:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:85, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_8577:`FileNode` {`nID`:86, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.1"})
create (_8578:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:87, `name`:"api", `order`:1, `version`:"0.5.1"})
create (_8579:`FileNode` {`nID`:88, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.1"})
create (_8580:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:89, `name`:"blueprints", `order`:2, `version`:"0.5.1"})
create (_8581:`FileNode` {`nID`:90, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.1"})
create (_8582:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:91, `name`:"dsl", `order`:3, `version`:"0.5.1"})
create (_8583:`FileNode` {`nID`:92, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.1"})
create (_8584:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:93, `name`:"rim", `order`:4, `version`:"0.5.1"})
create (_8585:`FileNode` {`nID`:94, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.1"})
create (_8586:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:95, `name`:"ds", `order`:5, `version`:"0.5.1"})
create (_8587:`FileNode` {`nID`:96, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.1"})
create (_8588:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:97, `name`:"taitale", `order`:6, `version`:"0.5.1"})
create (_8589:`FileNode` {`nID`:98, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.1"})
create (_8590:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:99, `name`:"wat", `order`:7, `version`:"0.5.1"})
create (_8591:`FileNode` {`nID`:100, `name`:"ariane.community.core.mapping-0.5.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_8592:`FileNode` {`nID`:101, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_8593:`FileNode` {`nID`:102, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.1"})
create (_8594:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:103, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.1"})
create (_8595:`FileNode` {`nID`:104, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_8596:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:105, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_8597:`FileNode` {`nID`:106, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_8598:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:107, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_8599:`FileNode` {`nID`:108, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_8600:`FileNode` {`nID`:109, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_8601:`FileNode` {`nID`:110, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_8602:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:111, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_8603:`FileNode` {`nID`:112, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.1"})
create (_8604:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:113, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_8605:`FileNode` {`nID`:114, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.1"})
create (_8606:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:115, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_8607:`FileNode` {`nID`:116, `name`:"ariane.community.core.injector-0.5.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_8608:`FileNode` {`nID`:117, `name`:"net.echinopsii.ariane.community.core.injector_0.5.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_8609:`FileNode` {`nID`:118, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.1"})
create (_8610:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:119, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.1"})
create (_8611:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:120, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.1"})
create (_8612:`FileNode` {`nID`:121, `name`:"ariane.community.distrib-0.5.1.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.1"})
create (_8613:`FileNode` {`nID`:122, `name`:"pom-ariane.community.distrib-0.5.1.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.1"})
create (_8614:`FileNode` {`nID`:123, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.1"})
create (_8615:`FileNode` {`nID`:124, `name`:"ariane.community.plugins-distrib-0.5.1.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.1"})
create (_8616:`FileNode` {`nID`:125, `name`:"ariane.community.git.repos-0.5.1.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.1"})
create (_8617:`Distribution` {`editable`:"false", `nID`:126, `name`:"community", `version`:"0.5.1"})
create (_8618:`FileNode` {`nID`:127, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.2"})
create (_8619:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:128, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.2"})
create (_8620:`FileNode` {`nID`:129, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_8621:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:130, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_8622:`FileNode` {`nID`:131, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_8623:`FileNode` {`nID`:132, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_8624:`FileNode` {`nID`:133, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_8625:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:134, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_8626:`FileNode` {`nID`:135, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_8627:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:136, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_8628:`FileNode` {`nID`:137, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_8629:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:138, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_8630:`FileNode` {`nID`:139, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_8631:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:140, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_8632:`FileNode` {`nID`:141, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_8633:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:142, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_8634:`FileNode` {`nID`:143, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_8635:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:144, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_8636:`FileNode` {`nID`:145, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_8637:`FileNode` {`nID`:146, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_8638:`FileNode` {`nID`:147, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_8639:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:148, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_8640:`FileNode` {`nID`:149, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.1"})
create (_8641:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:150, `name`:"api", `order`:1, `version`:"0.5.1"})
create (_8642:`FileNode` {`nID`:151, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.1"})
create (_8643:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:152, `name`:"blueprints", `order`:2, `version`:"0.5.1"})
create (_8644:`FileNode` {`nID`:153, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.1"})
create (_8645:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:154, `name`:"dsl", `order`:3, `version`:"0.5.1"})
create (_8646:`FileNode` {`nID`:155, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.1"})
create (_8647:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:156, `name`:"rim", `order`:4, `version`:"0.5.1"})
create (_8648:`FileNode` {`nID`:157, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.1"})
create (_8649:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:158, `name`:"ds", `order`:5, `version`:"0.5.1"})
create (_8650:`FileNode` {`nID`:159, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.1"})
create (_8651:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:160, `name`:"taitale", `order`:6, `version`:"0.5.1"})
create (_8652:`FileNode` {`nID`:161, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.1"})
create (_8653:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:162, `name`:"wat", `order`:7, `version`:"0.5.1"})
create (_8654:`FileNode` {`nID`:163, `name`:"ariane.community.core.mapping-0.5.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_8655:`FileNode` {`nID`:164, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_8656:`FileNode` {`nID`:165, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.1"})
create (_8657:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:166, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.1"})
create (_8658:`FileNode` {`nID`:167, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_8659:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:168, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_8660:`FileNode` {`nID`:169, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_8661:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:170, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_8662:`FileNode` {`nID`:171, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_8663:`FileNode` {`nID`:172, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_8664:`FileNode` {`nID`:173, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_8665:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:174, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_8666:`FileNode` {`nID`:175, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.2"})
create (_8667:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:176, `name`:"base", `order`:1, `version`:"0.5.2"})
create (_8668:`FileNode` {`nID`:177, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.2"})
create (_8669:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:178, `name`:"wat", `order`:2, `version`:"0.5.2"})
create (_8670:`FileNode` {`nID`:179, `name`:"ariane.community.core.injector-0.5.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_8671:`FileNode` {`nID`:180, `name`:"net.echinopsii.ariane.community.core.injector_0.5.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_8672:`FileNode` {`nID`:181, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.2"})
create (_8673:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:182, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.2"})
create (_8674:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:183, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.2"})
create (_8675:`FileNode` {`nID`:184, `name`:"ariane.community.distrib-0.5.2.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.2"})
create (_8676:`FileNode` {`nID`:185, `name`:"pom-ariane.community.distrib-0.5.2.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.2"})
create (_8677:`FileNode` {`nID`:186, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.2"})
create (_8678:`FileNode` {`nID`:187, `name`:"ariane.community.plugins-distrib-0.5.2.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.2"})
create (_8679:`FileNode` {`nID`:188, `name`:"ariane.community.git.repos-0.5.2.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.2"})
create (_8680:`Distribution` {`editable`:"false", `nID`:189, `name`:"community", `version`:"0.5.2"})
create (_8681:`FileNode` {`nID`:190, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.3"})
create (_8682:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:191, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.3"})
create (_8683:`FileNode` {`nID`:192, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_8684:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:193, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_8685:`FileNode` {`nID`:194, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_8686:`FileNode` {`nID`:195, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_8687:`FileNode` {`nID`:196, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_8688:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:197, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_8689:`FileNode` {`nID`:198, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_8690:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:199, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_8691:`FileNode` {`nID`:200, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_8692:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:201, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_8693:`FileNode` {`nID`:202, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_8694:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:203, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_8695:`FileNode` {`nID`:204, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_8696:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:205, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_8697:`FileNode` {`nID`:206, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_8698:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:207, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_8699:`FileNode` {`nID`:208, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_8700:`FileNode` {`nID`:209, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_8701:`FileNode` {`nID`:210, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_8702:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:211, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_8703:`FileNode` {`nID`:212, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.2"})
create (_8704:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:213, `name`:"api", `order`:1, `version`:"0.5.2"})
create (_8705:`FileNode` {`nID`:214, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.2"})
create (_8706:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:215, `name`:"blueprints", `order`:2, `version`:"0.5.2"})
create (_8707:`FileNode` {`nID`:216, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.2"})
create (_8708:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:217, `name`:"dsl", `order`:3, `version`:"0.5.2"})
create (_8709:`FileNode` {`nID`:218, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.2"})
create (_8710:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:219, `name`:"rim", `order`:4, `version`:"0.5.2"})
create (_8711:`FileNode` {`nID`:220, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.2"})
create (_8712:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:221, `name`:"ds", `order`:5, `version`:"0.5.2"})
create (_8713:`FileNode` {`nID`:222, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.2"})
create (_8714:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:223, `name`:"taitale", `order`:6, `version`:"0.5.2"})
create (_8715:`FileNode` {`nID`:224, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.2"})
create (_8716:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:225, `name`:"wat", `order`:7, `version`:"0.5.2"})
create (_8717:`FileNode` {`nID`:226, `name`:"ariane.community.core.mapping-0.5.2.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_8718:`FileNode` {`nID`:227, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.2.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_8719:`FileNode` {`nID`:228, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.2"})
create (_8720:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:229, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.2"})
create (_8721:`FileNode` {`nID`:230, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_8722:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:231, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_8723:`FileNode` {`nID`:232, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_8724:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:233, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_8725:`FileNode` {`nID`:234, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_8726:`FileNode` {`nID`:235, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_8727:`FileNode` {`nID`:236, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_8728:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:237, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_8729:`FileNode` {`nID`:238, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.2"})
create (_8730:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:239, `name`:"base", `order`:1, `version`:"0.5.2"})
create (_8731:`FileNode` {`nID`:240, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.2"})
create (_8732:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:241, `name`:"wat", `order`:2, `version`:"0.5.2"})
create (_8733:`FileNode` {`nID`:242, `name`:"ariane.community.core.injector-0.5.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_8734:`FileNode` {`nID`:243, `name`:"net.echinopsii.ariane.community.core.injector_0.5.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_8735:`FileNode` {`nID`:244, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.2"})
create (_8736:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:245, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.2"})
create (_8737:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:246, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.2"})
create (_8738:`FileNode` {`nID`:247, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.1.0"})
create (_8739:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:248, `name`:"directory", `order`:1, `version`:"0.1.0"})
create (_8740:`FileNode` {`nID`:249, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.1.0"})
create (_8741:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:250, `name`:"jsonparser", `order`:2, `version`:"0.1.0"})
create (_8742:`FileNode` {`nID`:251, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.1.0"})
create (_8743:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:252, `name`:"injector", `order`:3, `version`:"0.1.0"})
create (_8744:`FileNode` {`nID`:253, `name`:"ariane.community.plugin.rabbitmq-0.1.0.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_8745:`FileNode` {`nID`:254, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.1.0.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.1.0"})
create (_8746:`FileNode` {`nID`:255, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_8747:`FileNode` {`nID`:256, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.1.0"})
create (_8748:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:257, `name`:"rabbitmq", `version`:"0.1.0"})
create (_8749:`FileNode` {`nID`:258, `name`:"ariane.community.distrib-0.5.3.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.3"})
create (_8750:`FileNode` {`nID`:259, `name`:"pom-ariane.community.distrib-0.5.3.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.3"})
create (_8751:`FileNode` {`nID`:260, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.3"})
create (_8752:`FileNode` {`nID`:261, `name`:"ariane.community.plugins-distrib-0.5.3.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.3"})
create (_8753:`FileNode` {`nID`:262, `name`:"ariane.community.git.repos-0.5.3.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.3"})
create (_8754:`Distribution` {`editable`:"false", `nID`:263, `name`:"community", `version`:"0.5.3"})
create (_8755:`FileNode` {`nID`:264, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.0"})
create (_8756:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:265, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.0"})
create (_8757:`FileNode` {`nID`:266, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_8758:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:267, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_8759:`FileNode` {`nID`:268, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_8760:`FileNode` {`nID`:269, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_8761:`FileNode` {`nID`:270, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_8762:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:271, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_8763:`FileNode` {`nID`:272, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.0"})
create (_8764:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:273, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_8765:`FileNode` {`nID`:274, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.0"})
create (_8766:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:275, `name`:"wat", `order`:2, `version`:"0.6.0"})
create (_8767:`FileNode` {`nID`:276, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.0"})
create (_8768:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:277, `name`:"idmwat", `order`:3, `version`:"0.6.0"})
create (_8769:`FileNode` {`nID`:278, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.0"})
create (_8770:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:279, `name`:"wab", `order`:4, `version`:"0.6.0"})
create (_8771:`FileNode` {`nID`:280, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.0"})
create (_8772:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:281, `name`:"wresources", `order`:5, `version`:"0.6.0"})
create (_8773:`FileNode` {`nID`:282, `name`:"ariane.community.core.portal-0.6.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_8774:`FileNode` {`nID`:283, `name`:"net.echinopsii.ariane.community.core.portal_0.6.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_8775:`FileNode` {`nID`:284, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.0"})
create (_8776:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:285, `name`:"portal", `order`:3, `type`:"core", `version`:"0.6.0"})
create (_8777:`FileNode` {`nID`:286, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.0"})
create (_8778:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:287, `name`:"api", `order`:1, `version`:"0.6.0"})
create (_8779:`FileNode` {`nID`:288, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.0"})
create (_8780:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:289, `name`:"blueprints", `order`:2, `version`:"0.6.0"})
create (_8781:`FileNode` {`nID`:290, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.0"})
create (_8782:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:291, `name`:"rim", `order`:3, `version`:"0.6.0"})
create (_8783:`FileNode` {`nID`:292, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.0"})
create (_8784:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:293, `name`:"dsl", `order`:4, `version`:"0.6.0"})
create (_8785:`FileNode` {`nID`:294, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.0"})
create (_8786:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:295, `name`:"ds", `order`:5, `version`:"0.6.0"})
create (_8787:`FileNode` {`nID`:296, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.0"})
create (_8788:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:297, `name`:"wat", `order`:6, `version`:"0.6.0"})
create (_8789:`FileNode` {`nID`:298, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.0"})
create (_8790:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:299, `name`:"taitale", `order`:7, `version`:"0.6.0"})
create (_8791:`FileNode` {`nID`:300, `name`:"ariane.community.core.mapping-0.6.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_8792:`FileNode` {`nID`:301, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_8793:`FileNode` {`nID`:302, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.0"})
create (_8794:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:303, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.6.0"})
create (_8795:`FileNode` {`nID`:304, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.0"})
create (_8796:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:305, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_8797:`FileNode` {`nID`:306, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.0"})
create (_8798:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:307, `name`:"wat", `order`:2, `version`:"0.6.0"})
create (_8799:`FileNode` {`nID`:308, `name`:"ariane.community.core.directory-0.6.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_8800:`FileNode` {`nID`:309, `name`:"net.echinopsii.ariane.community.core.directory_0.6.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_8801:`FileNode` {`nID`:310, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.0"})
create (_8802:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:311, `name`:"directory", `order`:5, `type`:"core", `version`:"0.6.0"})
create (_8803:`FileNode` {`nID`:312, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.0"})
create (_8804:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:313, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_8805:`FileNode` {`nID`:314, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.0"})
create (_8806:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:315, `name`:"messaging", `order`:2, `version`:"0.6.0"})
create (_8807:`FileNode` {`nID`:316, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.0"})
create (_8808:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:317, `name`:"wat", `order`:3, `version`:"0.6.0"})
create (_8809:`FileNode` {`nID`:318, `name`:"ariane.community.core.injector-0.6.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_8810:`FileNode` {`nID`:319, `name`:"net.echinopsii.ariane.community.core.injector_0.6.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_8811:`FileNode` {`nID`:320, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.0"})
create (_8812:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:321, `name`:"injector", `order`:6, `type`:"core", `version`:"0.6.0"})
create (_8813:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:322, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.6.0"})
create (_8814:`FileNode` {`nID`:323, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.0"})
create (_8815:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:324, `name`:"directory", `order`:1, `version`:"0.2.0"})
create (_8816:`FileNode` {`nID`:325, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.0"})
create (_8817:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:326, `name`:"jsonparser", `order`:2, `version`:"0.2.0"})
create (_8818:`FileNode` {`nID`:327, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.0"})
create (_8819:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:328, `name`:"injector", `order`:3, `version`:"0.2.0"})
create (_8820:`FileNode` {`nID`:329, `name`:"ariane.community.plugin.rabbitmq-0.2.0.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.0"})
create (_8821:`FileNode` {`nID`:330, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.0.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.0"})
create (_8822:`FileNode` {`nID`:331, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.0"})
create (_8823:`FileNode` {`nID`:332, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.0"})
create (_8824:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:333, `name`:"rabbitmq", `version`:"0.2.0"})
create (_8825:`FileNode` {`nID`:334, `name`:"ariane.community.distrib-0.6.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.0"})
create (_8826:`FileNode` {`nID`:335, `name`:"pom-ariane.community.distrib-0.6.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.0"})
create (_8827:`FileNode` {`nID`:336, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.0"})
create (_8828:`FileNode` {`nID`:337, `name`:"ariane.community.plugins-distrib-0.6.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.0"})
create (_8829:`FileNode` {`nID`:338, `name`:"ariane.community.git.repos-0.6.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.0"})
create (_8830:`Distribution` {`editable`:"false", `nID`:339, `name`:"community", `version`:"0.6.0"})
create (_8831:`FileNode` {`nID`:340, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.1"})
create (_8832:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:341, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.1"})
create (_8833:`FileNode` {`nID`:342, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_8834:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:343, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_8835:`FileNode` {`nID`:344, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_8836:`FileNode` {`nID`:345, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_8837:`FileNode` {`nID`:346, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_8838:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:347, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_8839:`FileNode` {`nID`:348, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.1"})
create (_8840:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:349, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_8841:`FileNode` {`nID`:350, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.1"})
create (_8842:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:351, `name`:"wat", `order`:2, `version`:"0.6.1"})
create (_8843:`FileNode` {`nID`:352, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.1"})
create (_8844:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:353, `name`:"idmwat", `order`:3, `version`:"0.6.1"})
create (_8845:`FileNode` {`nID`:354, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.1"})
create (_8846:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:355, `name`:"wab", `order`:4, `version`:"0.6.1"})
create (_8847:`FileNode` {`nID`:356, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.1"})
create (_8848:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:357, `name`:"wresources", `order`:5, `version`:"0.6.1"})
create (_8849:`FileNode` {`nID`:358, `name`:"ariane.community.core.portal-0.6.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_8850:`FileNode` {`nID`:359, `name`:"net.echinopsii.ariane.community.core.portal_0.6.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_8851:`FileNode` {`nID`:360, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.1"})
create (_8852:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:361, `name`:"portal", `order`:3, `type`:"core", `version`:"0.6.1"})
create (_8853:`FileNode` {`nID`:362, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.1"})
create (_8854:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:363, `name`:"api", `order`:1, `version`:"0.6.1"})
create (_8855:`FileNode` {`nID`:364, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.1"})
create (_8856:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:365, `name`:"blueprints", `order`:2, `version`:"0.6.1"})
create (_8857:`FileNode` {`nID`:366, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.1"})
create (_8858:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:367, `name`:"rim", `order`:3, `version`:"0.6.1"})
create (_8859:`FileNode` {`nID`:368, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.1"})
create (_8860:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:369, `name`:"dsl", `order`:4, `version`:"0.6.1"})
create (_8861:`FileNode` {`nID`:370, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.1"})
create (_8862:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:371, `name`:"ds", `order`:5, `version`:"0.6.1"})
create (_8863:`FileNode` {`nID`:372, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.1"})
create (_8864:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:373, `name`:"wat", `order`:6, `version`:"0.6.1"})
create (_8865:`FileNode` {`nID`:374, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.1"})
create (_8866:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:375, `name`:"taitale", `order`:7, `version`:"0.6.1"})
create (_8867:`FileNode` {`nID`:376, `name`:"ariane.community.core.mapping-0.6.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_8868:`FileNode` {`nID`:377, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_8869:`FileNode` {`nID`:378, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.1"})
create (_8870:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:379, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.6.1"})
create (_8871:`FileNode` {`nID`:380, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.1"})
create (_8872:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:381, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_8873:`FileNode` {`nID`:382, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.1"})
create (_8874:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:383, `name`:"wat", `order`:2, `version`:"0.6.1"})
create (_8875:`FileNode` {`nID`:384, `name`:"ariane.community.core.directory-0.6.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_8876:`FileNode` {`nID`:385, `name`:"net.echinopsii.ariane.community.core.directory_0.6.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_8877:`FileNode` {`nID`:386, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.1"})
create (_8878:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:387, `name`:"directory", `order`:5, `type`:"core", `version`:"0.6.1"})
create (_8879:`FileNode` {`nID`:388, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.1"})
create (_8880:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:389, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_8881:`FileNode` {`nID`:390, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.1"})
create (_8882:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:391, `name`:"messaging", `order`:2, `version`:"0.6.1"})
create (_8883:`FileNode` {`nID`:392, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.1"})
create (_8884:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:393, `name`:"wat", `order`:3, `version`:"0.6.1"})
create (_8885:`FileNode` {`nID`:394, `name`:"ariane.community.core.injector-0.6.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_8886:`FileNode` {`nID`:395, `name`:"net.echinopsii.ariane.community.core.injector_0.6.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_8887:`FileNode` {`nID`:396, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.1"})
create (_8888:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:397, `name`:"injector", `order`:6, `type`:"core", `version`:"0.6.1"})
create (_8889:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:398, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.6.1"})
create (_8890:`FileNode` {`nID`:399, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.1"})
create (_8891:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:400, `name`:"directory", `order`:1, `version`:"0.2.1"})
create (_8892:`FileNode` {`nID`:401, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.1"})
create (_8893:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:402, `name`:"jsonparser", `order`:2, `version`:"0.2.1"})
create (_8894:`FileNode` {`nID`:403, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.1"})
create (_8895:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:404, `name`:"injector", `order`:3, `version`:"0.2.1"})
create (_8896:`FileNode` {`nID`:405, `name`:"ariane.community.plugin.rabbitmq-0.2.1.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.1"})
create (_8897:`FileNode` {`nID`:406, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.1.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.1"})
create (_8898:`FileNode` {`nID`:407, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.1"})
create (_8899:`FileNode` {`nID`:408, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.1"})
create (_8900:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:409, `name`:"rabbitmq", `version`:"0.2.1"})
create (_8901:`FileNode` {`nID`:410, `name`:"ariane.community.distrib-0.6.1.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.1"})
create (_8902:`FileNode` {`nID`:411, `name`:"pom-ariane.community.distrib-0.6.1.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.1"})
create (_8903:`FileNode` {`nID`:412, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.1"})
create (_8904:`FileNode` {`nID`:413, `name`:"ariane.community.plugins-distrib-0.6.1.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.1"})
create (_8905:`FileNode` {`nID`:414, `name`:"ariane.community.git.repos-0.6.1.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.1"})
create (_8906:`Distribution` {`editable`:"false", `nID`:415, `name`:"community", `version`:"0.6.1"})
create (_8907:`FileNode` {`nID`:416, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.2"})
create (_8908:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:417, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.2"})
create (_8909:`FileNode` {`nID`:418, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_8910:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:419, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_8911:`FileNode` {`nID`:420, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_8912:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:421, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_8913:`FileNode` {`nID`:422, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_8914:`FileNode` {`nID`:423, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_8915:`FileNode` {`nID`:424, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_8916:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:425, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_8917:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:426, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.2"})
create (_8918:`FileNode` {`nID`:427, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.1"})
create (_8919:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:428, `name`:"base", `order`:1, `version`:"0.4.1"})
create (_8920:`FileNode` {`nID`:429, `name`:"ariane.community.core.idm-0.4.1.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.1"})
create (_8921:`FileNode` {`nID`:430, `name`:"net.echinopsii.ariane.community.core.idm_0.4.1.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.1"})
create (_8922:`FileNode` {`nID`:431, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.1"})
create (_8923:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:432, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.1"})
create (_8924:`FileNode` {`nID`:433, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.2"})
create (_8925:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:434, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_8926:`FileNode` {`nID`:435, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.2"})
create (_8927:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:436, `name`:"wat", `order`:2, `version`:"0.6.2"})
create (_8928:`FileNode` {`nID`:437, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.2"})
create (_8929:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:438, `name`:"idmwat", `order`:3, `version`:"0.6.2"})
create (_8930:`FileNode` {`nID`:439, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.2"})
create (_8931:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:440, `name`:"wab", `order`:4, `version`:"0.6.2"})
create (_8932:`FileNode` {`nID`:441, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.2"})
create (_8933:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:442, `name`:"wresources", `order`:5, `version`:"0.6.2"})
create (_8934:`FileNode` {`nID`:443, `name`:"ariane.community.core.portal-0.6.2.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_8935:`FileNode` {`nID`:444, `name`:"net.echinopsii.ariane.community.core.portal_0.6.2.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_8936:`FileNode` {`nID`:445, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.2"})
create (_8937:`FileNode` {`nID`:446, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.2"})
create (_8938:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:447, `name`:"api", `order`:1, `version`:"0.6.2"})
create (_8939:`FileNode` {`nID`:448, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.2"})
create (_8940:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:449, `name`:"blueprints", `order`:2, `version`:"0.6.2"})
create (_8941:`FileNode` {`nID`:450, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.2"})
create (_8942:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:451, `name`:"rim", `order`:3, `version`:"0.6.2"})
create (_8943:`FileNode` {`nID`:452, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.2"})
create (_8944:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:453, `name`:"dsl", `order`:4, `version`:"0.6.2"})
create (_8945:`FileNode` {`nID`:454, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.2"})
create (_8946:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:455, `name`:"ds", `order`:5, `version`:"0.6.2"})
create (_8947:`FileNode` {`nID`:456, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.2"})
create (_8948:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:457, `name`:"wat", `order`:6, `version`:"0.6.2"})
create (_8949:`FileNode` {`nID`:458, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.2"})
create (_8950:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:459, `name`:"taitale", `order`:7, `version`:"0.6.2"})
create (_8951:`FileNode` {`nID`:460, `name`:"ariane.community.core.mapping-0.6.2.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_8952:`FileNode` {`nID`:461, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.2.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_8953:`FileNode` {`nID`:462, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.2"})
create (_8954:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:463, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.2"})
create (_8955:`FileNode` {`nID`:464, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.2"})
create (_8956:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:465, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_8957:`FileNode` {`nID`:466, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.2"})
create (_8958:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:467, `name`:"wat", `order`:2, `version`:"0.6.2"})
create (_8959:`FileNode` {`nID`:468, `name`:"ariane.community.core.directory-0.6.2.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_8960:`FileNode` {`nID`:469, `name`:"net.echinopsii.ariane.community.core.directory_0.6.2.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_8961:`FileNode` {`nID`:470, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.2"})
create (_8962:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:471, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.2"})
create (_8963:`FileNode` {`nID`:472, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.2"})
create (_8964:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:473, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_8965:`FileNode` {`nID`:474, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.2"})
create (_8966:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:475, `name`:"messaging", `order`:2, `version`:"0.6.2"})
create (_8967:`FileNode` {`nID`:476, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.2"})
create (_8968:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:477, `name`:"wat", `order`:3, `version`:"0.6.2"})
create (_8969:`FileNode` {`nID`:478, `name`:"ariane.community.core.injector-0.6.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_8970:`FileNode` {`nID`:479, `name`:"net.echinopsii.ariane.community.core.injector_0.6.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_8971:`FileNode` {`nID`:480, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.2"})
create (_8972:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:481, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.2"})
create (_8973:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:482, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.2"})
create (_8974:`FileNode` {`nID`:483, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.2"})
create (_8975:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:484, `name`:"directory", `order`:1, `version`:"0.2.2"})
create (_8976:`FileNode` {`nID`:485, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.2"})
create (_8977:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:486, `name`:"jsonparser", `order`:2, `version`:"0.2.2"})
create (_8978:`FileNode` {`nID`:487, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.2"})
create (_8979:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:488, `name`:"injector", `order`:3, `version`:"0.2.2"})
create (_8980:`FileNode` {`nID`:489, `name`:"ariane.community.plugin.rabbitmq-0.2.2.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.2"})
create (_8981:`FileNode` {`nID`:490, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.2.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.2"})
create (_8982:`FileNode` {`nID`:491, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.2"})
create (_8983:`FileNode` {`nID`:492, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.2"})
create (_8984:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:493, `name`:"rabbitmq", `version`:"0.2.2"})
create (_8985:`FileNode` {`nID`:494, `name`:"ariane.community.distrib-0.6.2.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.2"})
create (_8986:`FileNode` {`nID`:495, `name`:"pom-ariane.community.distrib-0.6.2.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.2"})
create (_8987:`FileNode` {`nID`:496, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.2"})
create (_8988:`FileNode` {`nID`:497, `name`:"ariane.community.plugins-distrib-0.6.2.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.2"})
create (_8989:`FileNode` {`nID`:498, `name`:"ariane.community.git.repos-0.6.2.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.2"})
create (_8990:`Distribution` {`editable`:"false", `nID`:499, `name`:"community", `version`:"0.6.2"})
create (_8991:`FileNode` {`nID`:500, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.3"})
create (_8992:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:501, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.3"})
create (_8993:`FileNode` {`nID`:502, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_8994:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:503, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_8995:`FileNode` {`nID`:504, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_8996:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:505, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_8997:`FileNode` {`nID`:506, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_8998:`FileNode` {`nID`:507, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_8999:`FileNode` {`nID`:508, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_9000:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:509, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_9001:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:510, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.3"})
create (_9002:`FileNode` {`nID`:511, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2"})
create (_9003:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:512, `name`:"base", `order`:1, `version`:"0.4.2"})
create (_9004:`FileNode` {`nID`:513, `name`:"ariane.community.core.idm-0.4.2.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2"})
create (_9005:`FileNode` {`nID`:514, `name`:"net.echinopsii.ariane.community.core.idm_0.4.2.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2"})
create (_9006:`FileNode` {`nID`:515, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2"})
create (_9007:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:516, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2"})
create (_9008:`FileNode` {`nID`:517, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.3"})
create (_9009:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:518, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_9010:`FileNode` {`nID`:519, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.3"})
create (_9011:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:520, `name`:"wat", `order`:2, `version`:"0.6.3"})
create (_9012:`FileNode` {`nID`:521, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.3"})
create (_9013:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:522, `name`:"idmwat", `order`:3, `version`:"0.6.3"})
create (_9014:`FileNode` {`nID`:523, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.3"})
create (_9015:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:524, `name`:"wab", `order`:4, `version`:"0.6.3"})
create (_9016:`FileNode` {`nID`:525, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.3"})
create (_9017:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:526, `name`:"wresources", `order`:5, `version`:"0.6.3"})
create (_9018:`FileNode` {`nID`:527, `name`:"ariane.community.core.portal-0.6.3.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_9019:`FileNode` {`nID`:528, `name`:"net.echinopsii.ariane.community.core.portal_0.6.3.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_9020:`FileNode` {`nID`:529, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.3"})
create (_9021:`FileNode` {`nID`:530, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.3"})
create (_9022:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:531, `name`:"api", `order`:1, `version`:"0.6.3"})
create (_9023:`FileNode` {`nID`:532, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.3"})
create (_9024:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:533, `name`:"blueprints", `order`:2, `version`:"0.6.3"})
create (_9025:`FileNode` {`nID`:534, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.3"})
create (_9026:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:535, `name`:"rim", `order`:3, `version`:"0.6.3"})
create (_9027:`FileNode` {`nID`:536, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.3"})
create (_9028:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:537, `name`:"dsl", `order`:4, `version`:"0.6.3"})
create (_9029:`FileNode` {`nID`:538, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.3"})
create (_9030:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:539, `name`:"ds", `order`:5, `version`:"0.6.3"})
create (_9031:`FileNode` {`nID`:540, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.3"})
create (_9032:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:541, `name`:"wat", `order`:6, `version`:"0.6.3"})
create (_9033:`FileNode` {`nID`:542, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.3"})
create (_9034:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:543, `name`:"taitale", `order`:7, `version`:"0.6.3"})
create (_9035:`FileNode` {`nID`:544, `name`:"ariane.community.core.mapping-0.6.3.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_9036:`FileNode` {`nID`:545, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.3.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_9037:`FileNode` {`nID`:546, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.3"})
create (_9038:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:547, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.3"})
create (_9039:`FileNode` {`nID`:548, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.3"})
create (_9040:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:549, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_9041:`FileNode` {`nID`:550, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.3"})
create (_9042:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:551, `name`:"wat", `order`:2, `version`:"0.6.3"})
create (_9043:`FileNode` {`nID`:552, `name`:"ariane.community.core.directory-0.6.3.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_9044:`FileNode` {`nID`:553, `name`:"net.echinopsii.ariane.community.core.directory_0.6.3.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_9045:`FileNode` {`nID`:554, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.3"})
create (_9046:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:555, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.3"})
create (_9047:`FileNode` {`nID`:556, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.3"})
create (_9048:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:557, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_9049:`FileNode` {`nID`:558, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.3"})
create (_9050:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:559, `name`:"messaging", `order`:2, `version`:"0.6.3"})
create (_9051:`FileNode` {`nID`:560, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.3"})
create (_9052:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:561, `name`:"wat", `order`:3, `version`:"0.6.3"})
create (_9053:`FileNode` {`nID`:562, `name`:"ariane.community.core.injector-0.6.3.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_9054:`FileNode` {`nID`:563, `name`:"net.echinopsii.ariane.community.core.injector_0.6.3.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_9055:`FileNode` {`nID`:564, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.3"})
create (_9056:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:565, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.3"})
create (_9057:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:566, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.3"})
create (_9058:`FileNode` {`nID`:567, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.3"})
create (_9059:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:568, `name`:"directory", `order`:1, `version`:"0.2.3"})
create (_9060:`FileNode` {`nID`:569, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.3"})
create (_9061:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:570, `name`:"jsonparser", `order`:2, `version`:"0.2.3"})
create (_9062:`FileNode` {`nID`:571, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.3"})
create (_9063:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:572, `name`:"injector", `order`:3, `version`:"0.2.3"})
create (_9064:`FileNode` {`nID`:573, `name`:"ariane.community.plugin.rabbitmq-0.2.3.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.3"})
create (_9065:`FileNode` {`nID`:574, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.3.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.3"})
create (_9066:`FileNode` {`nID`:575, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.3"})
create (_9067:`FileNode` {`nID`:576, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.3"})
create (_9068:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:577, `name`:"rabbitmq", `version`:"0.2.3"})
create (_9069:`FileNode` {`nID`:578, `name`:"ariane.community.distrib-0.6.3.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.3"})
create (_9070:`FileNode` {`nID`:579, `name`:"pom-ariane.community.distrib-0.6.3.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.3"})
create (_9071:`FileNode` {`nID`:580, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.3"})
create (_9072:`FileNode` {`nID`:581, `name`:"ariane.community.plugins-distrib-0.6.3.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.3"})
create (_9073:`FileNode` {`nID`:582, `name`:"ariane.community.git.repos-0.6.3.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.3"})
create (_9074:`Distribution` {`editable`:"false", `nID`:583, `name`:"community", `version`:"0.6.3"})
create (_9159:`FileNode` {`nID`:668, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9160:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:669, `name`:"wresources", `order`:5, `version`:"0.7.0"})
create (_9161:`FileNode` {`nID`:670, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9162:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:671, `name`:"wab", `order`:4, `version`:"0.7.0"})
create (_9163:`FileNode` {`nID`:672, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9164:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:673, `name`:"idmwat", `order`:3, `version`:"0.7.0"})
create (_9165:`FileNode` {`nID`:674, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9166:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:675, `name`:"wat", `order`:2, `version`:"0.7.0"})
create (_9167:`FileNode` {`nID`:676, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9168:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:677, `name`:"base", `order`:1, `version`:"0.7.0"})
create (_9169:`FileNode` {`nID`:678, `name`:"net.echinopsii.ariane.community.core.portal_0.7.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_9170:`FileNode` {`nID`:679, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.7.0"})
create (_9171:`FileNode` {`nID`:680, `name`:"ariane.community.core.portal-0.7.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_9172:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:681, `name`:"portal", `order`:4, `type`:"core", `version`:"0.7.0"})
create (_9173:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:682, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2"})
create (_9174:`FileNode` {`nID`:683, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_9175:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:684, `name`:"base", `order`:1, `version`:"0.4.2"})
create (_9176:`FileNode` {`nID`:685, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2"})
create (_9177:`FileNode` {`nID`:686, `name`:"net.echinopsii.ariane.community.core.idm_0.4.2.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2"})
create (_9178:`FileNode` {`nID`:687, `name`:"ariane.community.core.idm-0.4.2.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2"})
create (_9179:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:688, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.7.0"})
create (_9180:`FileNode` {`nID`:689, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9181:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:690, `name`:"wat", `order`:3, `version`:"0.7.0"})
create (_9182:`FileNode` {`nID`:691, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9183:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:692, `name`:"base", `order`:1, `version`:"0.7.0"})
create (_9184:`FileNode` {`nID`:693, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9185:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:694, `name`:"messaging", `order`:2, `version`:"0.7.0"})
create (_9186:`FileNode` {`nID`:695, `name`:"ariane.community.core.injector-0.7.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_9187:`FileNode` {`nID`:696, `name`:"net.echinopsii.ariane.community.core.injector_0.7.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_9188:`FileNode` {`nID`:697, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.7.0"})
create (_9189:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:698, `name`:"injector", `order`:7, `type`:"core", `version`:"0.7.0"})
create (_9190:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:699, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_9191:`FileNode` {`nID`:700, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9192:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:701, `name`:"base", `order`:1, `version`:"0.7.0"})
create (_9193:`FileNode` {`nID`:702, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9194:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:703, `name`:"wat", `order`:2, `version`:"0.7.0"})
create (_9195:`FileNode` {`nID`:704, `name`:"net.echinopsii.ariane.community.core.directory_0.7.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_9196:`FileNode` {`nID`:705, `name`:"ariane.community.core.directory-0.7.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_9197:`FileNode` {`nID`:706, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.7.0"})
create (_9198:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:707, `name`:"directory", `order`:6, `type`:"core", `version`:"0.7.0"})
create (_9199:`FileNode` {`nID`:708, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9200:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:709, `name`:"taitale", `order`:6, `version`:"0.7.0"})
create (_9201:`FileNode` {`nID`:710, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9202:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:711, `name`:"wat", `order`:7, `version`:"0.7.0"})
create (_9203:`FileNode` {`nID`:712, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9204:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:713, `name`:"blueprints", `order`:2, `version`:"0.7.0"})
create (_9205:`FileNode` {`nID`:714, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9206:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:715, `name`:"rim", `order`:3, `version`:"0.7.0"})
create (_9207:`FileNode` {`nID`:716, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9208:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:717, `name`:"api", `order`:1, `version`:"0.7.0"})
create (_9209:`FileNode` {`nID`:718, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9210:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:719, `name`:"dsl", `order`:4, `version`:"0.7.0"})
create (_9211:`FileNode` {`nID`:720, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9212:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:721, `name`:"ds", `order`:5, `version`:"0.7.0"})
create (_9213:`FileNode` {`nID`:722, `name`:"ariane.community.core.mapping-0.7.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_9214:`FileNode` {`nID`:723, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.7.0"})
create (_9215:`FileNode` {`nID`:724, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_9216:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:725, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.7.0"})
create (_9217:`FileNode` {`nID`:726, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.7.0"})
create (_9218:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:727, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.7.0"})
create (_9219:`FileNode` {`nID`:728, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_9220:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:729, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_9221:`FileNode` {`nID`:730, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_9222:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:731, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_9223:`FileNode` {`nID`:732, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_9224:`FileNode` {`nID`:733, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_9225:`FileNode` {`nID`:734, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_9226:`FileNode` {`nID`:735, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_9227:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:736, `name`:"injector", `order`:3, `version`:"0.2.4"})
create (_9228:`FileNode` {`nID`:737, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_9229:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:738, `name`:"jsonparser", `order`:2, `version`:"0.2.4"})
create (_9230:`FileNode` {`nID`:739, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_9231:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:740, `name`:"directory", `order`:1, `version`:"0.2.4"})
create (_9232:`FileNode` {`nID`:741, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.4"})
create (_9233:`FileNode` {`nID`:742, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.4"})
create (_9234:`FileNode` {`nID`:743, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.4.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.4"})
create (_9235:`FileNode` {`nID`:744, `name`:"ariane.community.plugin.rabbitmq-0.2.4.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.4"})
create (_9236:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:745, `name`:"rabbitmq", `version`:"0.2.4"})
create (_9237:`FileNode` {`nID`:746, `name`:"ariane.community.distrib-0.7.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.4-SNAPSHOT"})
create (_9238:`FileNode` {`nID`:747, `name`:"ariane.community.git.repos-0.7.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.4-SNAPSHOT"})
create (_9239:`FileNode` {`nID`:748, `name`:"ariane.community.plugins-distrib-0.7.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.4-SNAPSHOT"})
create (_9240:`FileNode` {`nID`:749, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.4-SNAPSHOT"})
create (_9241:`FileNode` {`nID`:750, `name`:"pom-ariane.community.distrib-0.7.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.4-SNAPSHOT"})
create (_9242:`Distribution` {`editable`:"false", `nID`:751, `name`:"community", `version`:"0.7.0"})
create (_9244:`FileNode` {`nID`:752, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_9245:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:753, `name`:"api", `order`:1, `version`:"0.1.1-SNAPSHOT"})
create (_9246:`FileNode` {`nID`:754, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_9247:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:755, `name`:"rabbitmq", `order`:2, `version`:"0.1.1-SNAPSHOT"})
create (_9248:`FileNode` {`nID`:756, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_9249:`FileNode` {`nID`:757, `name`:"ariane.community.messaging-master.SNAPSHOT.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.1-SNAPSHOT"})
create (_9250:`FileNode` {`nID`:758, `name`:"net.echinopsii.ariane.community.messaging_master.SNAPSHOT.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.1-SNAPSHOT"})
create (_9251:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:759, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.1-SNAPSHOT"})
create (_9252:`FileNode` {`nID`:760, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.7.1-SNAPSHOT"})
create (_9253:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:761, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.7.1-SNAPSHOT"})
create (_9254:`FileNode` {`nID`:762, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9255:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:763, `name`:"wat", `order`:7, `version`:"0.7.1-SNAPSHOT"})
create (_9256:`FileNode` {`nID`:764, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9257:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:765, `name`:"taitale", `order`:6, `version`:"0.7.1-SNAPSHOT"})
create (_9258:`FileNode` {`nID`:766, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9259:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:767, `name`:"dsl", `order`:4, `version`:"0.7.1-SNAPSHOT"})
create (_9260:`FileNode` {`nID`:768, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9261:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:769, `name`:"api", `order`:1, `version`:"0.7.1-SNAPSHOT"})
create (_9262:`FileNode` {`nID`:770, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9263:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:771, `name`:"rim", `order`:3, `version`:"0.7.1-SNAPSHOT"})
create (_9264:`FileNode` {`nID`:772, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9265:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:773, `name`:"blueprints", `order`:2, `version`:"0.7.1-SNAPSHOT"})
create (_9266:`FileNode` {`nID`:774, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9267:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:775, `name`:"ds", `order`:5, `version`:"0.7.1-SNAPSHOT"})
create (_9268:`FileNode` {`nID`:776, `name`:"net.echinopsii.ariane.community.core.mapping_master.SNAPSHOT.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1-SNAPSHOT"})
create (_9269:`FileNode` {`nID`:777, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.7.1-SNAPSHOT"})
create (_9270:`FileNode` {`nID`:778, `name`:"ariane.community.core.mapping-master.SNAPSHOT.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1-SNAPSHOT"})
create (_9271:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:779, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.7.1-SNAPSHOT"})
create (_9272:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:780, `name`:"portal", `order`:4, `type`:"core", `version`:"0.7.1-SNAPSHOT"})
create (_9273:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:781, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.3-SNAPSHOT"})
create (_9274:`FileNode` {`nID`:782, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9275:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:783, `name`:"wat", `order`:2, `version`:"0.7.1-SNAPSHOT"})
create (_9276:`FileNode` {`nID`:784, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9277:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:785, `name`:"base", `order`:1, `version`:"0.7.1-SNAPSHOT"})
create (_9278:`FileNode` {`nID`:786, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.7.1-SNAPSHOT"})
create (_9279:`FileNode` {`nID`:787, `name`:"ariane.community.core.directory-master.SNAPSHOT.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1-SNAPSHOT"})
create (_9280:`FileNode` {`nID`:788, `name`:"net.echinopsii.ariane.community.core.directory_master.SNAPSHOT.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1-SNAPSHOT"})
create (_9281:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:789, `name`:"directory", `order`:6, `type`:"core", `version`:"0.7.1-SNAPSHOT"})
create (_9282:`FileNode` {`nID`:790, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9283:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:791, `name`:"messaging", `order`:2, `version`:"0.7.1-SNAPSHOT"})
create (_9284:`FileNode` {`nID`:792, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9285:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:793, `name`:"base", `order`:1, `version`:"0.7.1-SNAPSHOT"})
create (_9286:`FileNode` {`nID`:794, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9287:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:795, `name`:"wat", `order`:3, `version`:"0.7.1-SNAPSHOT"})
create (_9288:`FileNode` {`nID`:796, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.7.1-SNAPSHOT"})
create (_9289:`FileNode` {`nID`:797, `name`:"net.echinopsii.ariane.community.core.injector_master.SNAPSHOT.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1-SNAPSHOT"})
create (_9290:`FileNode` {`nID`:798, `name`:"ariane.community.core.injector-master.SNAPSHOT.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1-SNAPSHOT"})
create (_9291:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:799, `name`:"injector", `order`:7, `type`:"core", `version`:"0.7.1-SNAPSHOT"})
create (_9292:`Module` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:800, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.7.1-SNAPSHOT"})
create (_9293:`FileNode` {`nID`:801, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_9294:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:802, `name`:"base", `order`:1, `version`:"0.4.3-SNAPSHOT"})
create (_9295:`FileNode` {`nID`:803, `name`:"ariane.community.core.idm-master.SNAPSHOT.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.3-SNAPSHOT"})
create (_9296:`FileNode` {`nID`:804, `name`:"net.echinopsii.ariane.community.core.idm_master.SNAPSHOT.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.3-SNAPSHOT"})
create (_9297:`FileNode` {`nID`:805, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.3-SNAPSHOT"})
create (_9298:`FileNode` {`nID`:806, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9299:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:807, `name`:"base", `order`:1, `version`:"0.7.1-SNAPSHOT"})
create (_9300:`FileNode` {`nID`:808, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9301:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:809, `name`:"wat", `order`:2, `version`:"0.7.1-SNAPSHOT"})
create (_9302:`FileNode` {`nID`:810, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9303:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:811, `name`:"idmwat", `order`:3, `version`:"0.7.1-SNAPSHOT"})
create (_9304:`FileNode` {`nID`:812, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9305:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:813, `name`:"wab", `order`:4, `version`:"0.7.1-SNAPSHOT"})
create (_9306:`FileNode` {`nID`:814, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_9307:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:815, `name`:"wresources", `order`:5, `version`:"0.7.1-SNAPSHOT"})
create (_9308:`FileNode` {`nID`:816, `name`:"ariane.community.core.portal-master.SNAPSHOT.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1-SNAPSHOT"})
create (_9309:`FileNode` {`nID`:817, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.7.1-SNAPSHOT"})
create (_9310:`FileNode` {`nID`:818, `name`:"net.echinopsii.ariane.community.core.portal_master.SNAPSHOT.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1-SNAPSHOT"})
create (_9311:`FileNode` {`nID`:819, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_9312:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:820, `name`:"directory", `order`:1, `version`:"0.2.5-SNAPSHOT"})
create (_9313:`FileNode` {`nID`:821, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_9314:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:822, `name`:"jsonparser", `order`:2, `version`:"0.2.5-SNAPSHOT"})
create (_9315:`FileNode` {`nID`:823, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_9316:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:824, `name`:"injector", `order`:3, `version`:"0.2.5-SNAPSHOT"})
create (_9317:`FileNode` {`nID`:825, `name`:"ariane.community.plugin.rabbitmq-master.SNAPSHOT.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.5-SNAPSHOT"})
create (_9318:`FileNode` {`nID`:826, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_master.SNAPSHOT.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.5-SNAPSHOT"})
create (_9319:`FileNode` {`nID`:827, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.5-SNAPSHOT"})
create (_9320:`FileNode` {`nID`:828, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.5-SNAPSHOT"})
create (_9321:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:829, `name`:"rabbitmq", `version`:"0.2.5-SNAPSHOT"})
create (_9322:`FileNode` {`nID`:830, `name`:"pom-ariane.community.distrib-master.SNAPSHOT.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.4-SNAPSHOT"})
create (_9323:`FileNode` {`nID`:831, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.4-SNAPSHOT"})
create (_9324:`FileNode` {`nID`:832, `name`:"ariane.community.plugins-distrib-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.4-SNAPSHOT"})
create (_9325:`FileNode` {`nID`:833, `name`:"ariane.community.git.repos-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.4-SNAPSHOT"})
create (_9326:`FileNode` {`nID`:834, `name`:"ariane.community.distrib-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.4-SNAPSHOT"})
create (_9327:`Distribution` {`editable`:"true", `nID`:835, `name`:"community", `version`:"0.7.1-SNAPSHOT"})
create (_9334:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:836, `name`:"procos", `version`:"0.1.0"})
create (_9335:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:837, `name`:"procos", `version`:"0.1.1-b01"})
create _8493-[:`CONTAINS`]->_8492
create _8493-[:`DEPENDS ON`]->_8554
create _8495-[:`CONTAINS`]->_8494
create _8499-[:`COMPOSED OF`]->_8495
create _8499-[:`CONTAINS`]->_8496
create _8499-[:`CONTAINS`]->_8497
create _8499-[:`CONTAINS`]->_8498
create _8499-[:`DEPENDS ON`]->_8554
create _8501-[:`CONTAINS`]->_8500
create _8503-[:`CONTAINS`]->_8502
create _8505-[:`CONTAINS`]->_8504
create _8507-[:`CONTAINS`]->_8506
create _8509-[:`CONTAINS`]->_8508
create _8513-[:`COMPOSED OF`]->_8503
create _8513-[:`COMPOSED OF`]->_8505
create _8513-[:`COMPOSED OF`]->_8501
create _8513-[:`COMPOSED OF`]->_8507
create _8513-[:`COMPOSED OF`]->_8509
create _8513-[:`CONTAINS`]->_8512
create _8513-[:`CONTAINS`]->_8510
create _8513-[:`CONTAINS`]->_8511
create _8513-[:`DEPENDS ON`]->_8554
create _8513-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_8499
create _8515-[:`CONTAINS`]->_8514
create _8517-[:`CONTAINS`]->_8516
create _8519-[:`CONTAINS`]->_8518
create _8521-[:`CONTAINS`]->_8520
create _8523-[:`COMPOSED OF`]->_8521
create _8523-[:`COMPOSED OF`]->_8519
create _8523-[:`COMPOSED OF`]->_8517
create _8523-[:`COMPOSED OF`]->_8515
create _8523-[:`CONTAINS`]->_8522
create _8525-[:`CONTAINS`]->_8524
create _8527-[:`CONTAINS`]->_8526
create _8531-[:`COMPOSED OF`]->_8527
create _8531-[:`COMPOSED OF`]->_8525
create _8531-[:`COMPOSED OF`]->_8523
create _8531-[:`CONTAINS`]->_8530
create _8531-[:`CONTAINS`]->_8529
create _8531-[:`CONTAINS`]->_8528
create _8531-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_8513
create _8531-[:`DEPENDS ON`]->_8554
create _8531-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_8499
create _8533-[:`CONTAINS`]->_8532
create _8535-[:`CONTAINS`]->_8534
create _8539-[:`COMPOSED OF`]->_8533
create _8539-[:`COMPOSED OF`]->_8535
create _8539-[:`CONTAINS`]->_8537
create _8539-[:`CONTAINS`]->_8538
create _8539-[:`CONTAINS`]->_8536
create _8539-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_8513
create _8539-[:`DEPENDS ON`]->_8554
create _8541-[:`CONTAINS`]->_8540
create _8543-[:`CONTAINS`]->_8542
create _8547-[:`COMPOSED OF`]->_8541
create _8547-[:`COMPOSED OF`]->_8543
create _8547-[:`CONTAINS`]->_8545
create _8547-[:`CONTAINS`]->_8544
create _8547-[:`CONTAINS`]->_8546
create _8547-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_8513
create _8547-[:`DEPENDS ON`]->_8554
create _8548-[:`DEPENDS ON`]->_8554
create _8554-[:`CONTAINS`]->_8550
create _8554-[:`CONTAINS`]->_8549
create _8554-[:`CONTAINS`]->_8552
create _8554-[:`CONTAINS`]->_8551
create _8554-[:`CONTAINS`]->_8553
create _8556-[:`CONTAINS`]->_8555
create _8556-[:`DEPENDS ON`]->_8617
create _8558-[:`CONTAINS`]->_8557
create _8562-[:`COMPOSED OF`]->_8558
create _8562-[:`CONTAINS`]->_8560
create _8562-[:`CONTAINS`]->_8559
create _8562-[:`CONTAINS`]->_8561
create _8562-[:`DEPENDS ON`]->_8617
create _8564-[:`CONTAINS`]->_8563
create _8566-[:`CONTAINS`]->_8565
create _8568-[:`CONTAINS`]->_8567
create _8570-[:`CONTAINS`]->_8569
create _8572-[:`CONTAINS`]->_8571
create _8576-[:`COMPOSED OF`]->_8572
create _8576-[:`COMPOSED OF`]->_8568
create _8576-[:`COMPOSED OF`]->_8570
create _8576-[:`COMPOSED OF`]->_8564
create _8576-[:`COMPOSED OF`]->_8566
create _8576-[:`CONTAINS`]->_8574
create _8576-[:`CONTAINS`]->_8575
create _8576-[:`CONTAINS`]->_8573
create _8576-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_8562
create _8576-[:`DEPENDS ON`]->_8617
create _8578-[:`CONTAINS`]->_8577
create _8580-[:`CONTAINS`]->_8579
create _8582-[:`CONTAINS`]->_8581
create _8584-[:`CONTAINS`]->_8583
create _8586-[:`COMPOSED OF`]->_8584
create _8586-[:`COMPOSED OF`]->_8582
create _8586-[:`COMPOSED OF`]->_8580
create _8586-[:`COMPOSED OF`]->_8578
create _8586-[:`CONTAINS`]->_8585
create _8588-[:`CONTAINS`]->_8587
create _8590-[:`CONTAINS`]->_8589
create _8594-[:`COMPOSED OF`]->_8590
create _8594-[:`COMPOSED OF`]->_8588
create _8594-[:`COMPOSED OF`]->_8586
create _8594-[:`CONTAINS`]->_8591
create _8594-[:`CONTAINS`]->_8592
create _8594-[:`CONTAINS`]->_8593
create _8594-[:`DEPENDS ON`]->_8617
create _8594-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_8562
create _8594-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_8576
create _8596-[:`CONTAINS`]->_8595
create _8598-[:`CONTAINS`]->_8597
create _8602-[:`COMPOSED OF`]->_8596
create _8602-[:`COMPOSED OF`]->_8598
create _8602-[:`CONTAINS`]->_8599
create _8602-[:`CONTAINS`]->_8600
create _8602-[:`CONTAINS`]->_8601
create _8602-[:`DEPENDS ON`]->_8617
create _8602-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_8576
create _8604-[:`CONTAINS`]->_8603
create _8606-[:`CONTAINS`]->_8605
create _8610-[:`COMPOSED OF`]->_8604
create _8610-[:`COMPOSED OF`]->_8606
create _8610-[:`CONTAINS`]->_8609
create _8610-[:`CONTAINS`]->_8608
create _8610-[:`CONTAINS`]->_8607
create _8610-[:`DEPENDS ON`]->_8617
create _8610-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_8576
create _8611-[:`DEPENDS ON`]->_8617
create _8617-[:`CONTAINS`]->_8616
create _8617-[:`CONTAINS`]->_8615
create _8617-[:`CONTAINS`]->_8612
create _8617-[:`CONTAINS`]->_8614
create _8617-[:`CONTAINS`]->_8613
create _8619-[:`CONTAINS`]->_8618
create _8619-[:`DEPENDS ON`]->_8680
create _8621-[:`CONTAINS`]->_8620
create _8625-[:`COMPOSED OF`]->_8621
create _8625-[:`CONTAINS`]->_8624
create _8625-[:`CONTAINS`]->_8623
create _8625-[:`CONTAINS`]->_8622
create _8625-[:`DEPENDS ON`]->_8680
create _8627-[:`CONTAINS`]->_8626
create _8629-[:`CONTAINS`]->_8628
create _8631-[:`CONTAINS`]->_8630
create _8633-[:`CONTAINS`]->_8632
create _8635-[:`CONTAINS`]->_8634
create _8639-[:`COMPOSED OF`]->_8627
create _8639-[:`COMPOSED OF`]->_8635
create _8639-[:`COMPOSED OF`]->_8633
create _8639-[:`COMPOSED OF`]->_8631
create _8639-[:`COMPOSED OF`]->_8629
create _8639-[:`CONTAINS`]->_8636
create _8639-[:`CONTAINS`]->_8637
create _8639-[:`CONTAINS`]->_8638
create _8639-[:`DEPENDS ON`]->_8680
create _8639-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_8625
create _8641-[:`CONTAINS`]->_8640
create _8643-[:`CONTAINS`]->_8642
create _8645-[:`CONTAINS`]->_8644
create _8647-[:`CONTAINS`]->_8646
create _8649-[:`COMPOSED OF`]->_8641
create _8649-[:`COMPOSED OF`]->_8643
create _8649-[:`COMPOSED OF`]->_8645
create _8649-[:`COMPOSED OF`]->_8647
create _8649-[:`CONTAINS`]->_8648
create _8651-[:`CONTAINS`]->_8650
create _8653-[:`CONTAINS`]->_8652
create _8657-[:`COMPOSED OF`]->_8653
create _8657-[:`COMPOSED OF`]->_8649
create _8657-[:`COMPOSED OF`]->_8651
create _8657-[:`CONTAINS`]->_8655
create _8657-[:`CONTAINS`]->_8654
create _8657-[:`CONTAINS`]->_8656
create _8657-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_8639
create _8657-[:`DEPENDS ON`]->_8680
create _8657-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_8625
create _8659-[:`CONTAINS`]->_8658
create _8661-[:`CONTAINS`]->_8660
create _8665-[:`COMPOSED OF`]->_8661
create _8665-[:`COMPOSED OF`]->_8659
create _8665-[:`CONTAINS`]->_8662
create _8665-[:`CONTAINS`]->_8664
create _8665-[:`CONTAINS`]->_8663
create _8665-[:`DEPENDS ON`]->_8680
create _8665-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_8639
create _8667-[:`CONTAINS`]->_8666
create _8669-[:`CONTAINS`]->_8668
create _8673-[:`COMPOSED OF`]->_8667
create _8673-[:`COMPOSED OF`]->_8669
create _8673-[:`CONTAINS`]->_8670
create _8673-[:`CONTAINS`]->_8671
create _8673-[:`CONTAINS`]->_8672
create _8673-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_8639
create _8673-[:`DEPENDS ON`]->_8680
create _8674-[:`DEPENDS ON`]->_8680
create _8680-[:`CONTAINS`]->_8675
create _8680-[:`CONTAINS`]->_8676
create _8680-[:`CONTAINS`]->_8677
create _8680-[:`CONTAINS`]->_8678
create _8680-[:`CONTAINS`]->_8679
create _8682-[:`CONTAINS`]->_8681
create _8682-[:`DEPENDS ON`]->_8754
create _8684-[:`CONTAINS`]->_8683
create _8688-[:`COMPOSED OF`]->_8684
create _8688-[:`CONTAINS`]->_8687
create _8688-[:`CONTAINS`]->_8686
create _8688-[:`CONTAINS`]->_8685
create _8688-[:`DEPENDS ON`]->_8754
create _8690-[:`CONTAINS`]->_8689
create _8692-[:`CONTAINS`]->_8691
create _8694-[:`CONTAINS`]->_8693
create _8696-[:`CONTAINS`]->_8695
create _8698-[:`CONTAINS`]->_8697
create _8702-[:`COMPOSED OF`]->_8698
create _8702-[:`COMPOSED OF`]->_8696
create _8702-[:`COMPOSED OF`]->_8694
create _8702-[:`COMPOSED OF`]->_8692
create _8702-[:`COMPOSED OF`]->_8690
create _8702-[:`CONTAINS`]->_8700
create _8702-[:`CONTAINS`]->_8701
create _8702-[:`CONTAINS`]->_8699
create _8702-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_8688
create _8702-[:`DEPENDS ON`]->_8754
create _8704-[:`CONTAINS`]->_8703
create _8706-[:`CONTAINS`]->_8705
create _8708-[:`CONTAINS`]->_8707
create _8710-[:`CONTAINS`]->_8709
create _8712-[:`COMPOSED OF`]->_8710
create _8712-[:`COMPOSED OF`]->_8706
create _8712-[:`COMPOSED OF`]->_8708
create _8712-[:`COMPOSED OF`]->_8704
create _8712-[:`CONTAINS`]->_8711
create _8714-[:`CONTAINS`]->_8713
create _8716-[:`CONTAINS`]->_8715
create _8720-[:`COMPOSED OF`]->_8712
create _8720-[:`COMPOSED OF`]->_8716
create _8720-[:`COMPOSED OF`]->_8714
create _8720-[:`CONTAINS`]->_8717
create _8720-[:`CONTAINS`]->_8719
create _8720-[:`CONTAINS`]->_8718
create _8720-[:`DEPENDS ON`]->_8754
create _8720-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_8688
create _8720-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_8702
create _8722-[:`CONTAINS`]->_8721
create _8724-[:`CONTAINS`]->_8723
create _8728-[:`COMPOSED OF`]->_8724
create _8728-[:`COMPOSED OF`]->_8722
create _8728-[:`CONTAINS`]->_8725
create _8728-[:`CONTAINS`]->_8726
create _8728-[:`CONTAINS`]->_8727
create _8728-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_8702
create _8728-[:`DEPENDS ON`]->_8754
create _8730-[:`CONTAINS`]->_8729
create _8732-[:`CONTAINS`]->_8731
create _8736-[:`COMPOSED OF`]->_8730
create _8736-[:`COMPOSED OF`]->_8732
create _8736-[:`CONTAINS`]->_8733
create _8736-[:`CONTAINS`]->_8734
create _8736-[:`CONTAINS`]->_8735
create _8736-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_8702
create _8736-[:`DEPENDS ON`]->_8754
create _8737-[:`DEPENDS ON`]->_8754
create _8739-[:`CONTAINS`]->_8738
create _8741-[:`CONTAINS`]->_8740
create _8743-[:`CONTAINS`]->_8742
create _8748-[:`COMPOSED OF`]->_8739
create _8748-[:`COMPOSED OF`]->_8741
create _8748-[:`COMPOSED OF`]->_8743
create _8748-[:`CONTAINS`]->_8747
create _8748-[:`CONTAINS`]->_8744
create _8748-[:`CONTAINS`]->_8745
create _8748-[:`CONTAINS`]->_8746
create _8748-[:`COMPATIBLE WITH`]->_8754
create _8748-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_8720
create _8748-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_8728
create _8748-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_8702
create _8748-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_8736
create _8754-[:`CONTAINS`]->_8749
create _8754-[:`CONTAINS`]->_8750
create _8754-[:`CONTAINS`]->_8751
create _8754-[:`CONTAINS`]->_8752
create _8754-[:`CONTAINS`]->_8753
create _8756-[:`CONTAINS`]->_8755
create _8756-[:`DEPENDS ON`]->_8830
create _8758-[:`CONTAINS`]->_8757
create _8762-[:`COMPOSED OF`]->_8758
create _8762-[:`CONTAINS`]->_8760
create _8762-[:`CONTAINS`]->_8759
create _8762-[:`CONTAINS`]->_8761
create _8762-[:`DEPENDS ON`]->_8830
create _8764-[:`CONTAINS`]->_8763
create _8766-[:`CONTAINS`]->_8765
create _8768-[:`CONTAINS`]->_8767
create _8770-[:`CONTAINS`]->_8769
create _8772-[:`CONTAINS`]->_8771
create _8776-[:`COMPOSED OF`]->_8764
create _8776-[:`COMPOSED OF`]->_8766
create _8776-[:`COMPOSED OF`]->_8770
create _8776-[:`COMPOSED OF`]->_8768
create _8776-[:`COMPOSED OF`]->_8772
create _8776-[:`CONTAINS`]->_8774
create _8776-[:`CONTAINS`]->_8775
create _8776-[:`CONTAINS`]->_8773
create _8776-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_8762
create _8776-[:`DEPENDS ON`]->_8830
create _8778-[:`CONTAINS`]->_8777
create _8780-[:`CONTAINS`]->_8779
create _8782-[:`CONTAINS`]->_8781
create _8784-[:`CONTAINS`]->_8783
create _8786-[:`COMPOSED OF`]->_8780
create _8786-[:`COMPOSED OF`]->_8782
create _8786-[:`COMPOSED OF`]->_8778
create _8786-[:`COMPOSED OF`]->_8784
create _8786-[:`CONTAINS`]->_8785
create _8788-[:`CONTAINS`]->_8787
create _8790-[:`CONTAINS`]->_8789
create _8794-[:`COMPOSED OF`]->_8786
create _8794-[:`COMPOSED OF`]->_8790
create _8794-[:`COMPOSED OF`]->_8788
create _8794-[:`CONTAINS`]->_8793
create _8794-[:`CONTAINS`]->_8792
create _8794-[:`CONTAINS`]->_8791
create _8794-[:`DEPENDS ON`]->_8830
create _8794-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_8762
create _8794-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_8776
create _8796-[:`CONTAINS`]->_8795
create _8798-[:`CONTAINS`]->_8797
create _8802-[:`COMPOSED OF`]->_8798
create _8802-[:`COMPOSED OF`]->_8796
create _8802-[:`CONTAINS`]->_8799
create _8802-[:`CONTAINS`]->_8800
create _8802-[:`CONTAINS`]->_8801
create _8802-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_8776
create _8802-[:`DEPENDS ON`]->_8830
create _8804-[:`CONTAINS`]->_8803
create _8806-[:`CONTAINS`]->_8805
create _8808-[:`CONTAINS`]->_8807
create _8812-[:`COMPOSED OF`]->_8808
create _8812-[:`COMPOSED OF`]->_8804
create _8812-[:`COMPOSED OF`]->_8806
create _8812-[:`CONTAINS`]->_8809
create _8812-[:`CONTAINS`]->_8810
create _8812-[:`CONTAINS`]->_8811
create _8812-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_8776
create _8812-[:`DEPENDS ON`]->_8830
create _8813-[:`DEPENDS ON`]->_8830
create _8815-[:`CONTAINS`]->_8814
create _8817-[:`CONTAINS`]->_8816
create _8819-[:`CONTAINS`]->_8818
create _8824-[:`COMPOSED OF`]->_8819
create _8824-[:`COMPOSED OF`]->_8817
create _8824-[:`COMPOSED OF`]->_8815
create _8824-[:`CONTAINS`]->_8823
create _8824-[:`CONTAINS`]->_8820
create _8824-[:`CONTAINS`]->_8822
create _8824-[:`CONTAINS`]->_8821
create _8824-[:`COMPATIBLE WITH` {`version_max`:"0.2.1", `version_min`:"0.2.0"}]->_8830
create _8824-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_8812
create _8824-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_8776
create _8824-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_8802
create _8824-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_8794
create _8830-[:`CONTAINS`]->_8827
create _8830-[:`CONTAINS`]->_8828
create _8830-[:`CONTAINS`]->_8825
create _8830-[:`CONTAINS`]->_8826
create _8830-[:`CONTAINS`]->_8829
create _8832-[:`CONTAINS`]->_8831
create _8832-[:`DEPENDS ON`]->_8906
create _8834-[:`CONTAINS`]->_8833
create _8838-[:`COMPOSED OF`]->_8834
create _8838-[:`CONTAINS`]->_8837
create _8838-[:`CONTAINS`]->_8835
create _8838-[:`CONTAINS`]->_8836
create _8838-[:`DEPENDS ON`]->_8906
create _8840-[:`CONTAINS`]->_8839
create _8842-[:`CONTAINS`]->_8841
create _8844-[:`CONTAINS`]->_8843
create _8846-[:`CONTAINS`]->_8845
create _8848-[:`CONTAINS`]->_8847
create _8852-[:`COMPOSED OF`]->_8848
create _8852-[:`COMPOSED OF`]->_8846
create _8852-[:`COMPOSED OF`]->_8844
create _8852-[:`COMPOSED OF`]->_8842
create _8852-[:`COMPOSED OF`]->_8840
create _8852-[:`CONTAINS`]->_8851
create _8852-[:`CONTAINS`]->_8850
create _8852-[:`CONTAINS`]->_8849
create _8852-[:`DEPENDS ON`]->_8906
create _8852-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_8838
create _8854-[:`CONTAINS`]->_8853
create _8856-[:`CONTAINS`]->_8855
create _8858-[:`CONTAINS`]->_8857
create _8860-[:`CONTAINS`]->_8859
create _8862-[:`COMPOSED OF`]->_8854
create _8862-[:`COMPOSED OF`]->_8858
create _8862-[:`COMPOSED OF`]->_8856
create _8862-[:`COMPOSED OF`]->_8860
create _8862-[:`CONTAINS`]->_8861
create _8864-[:`CONTAINS`]->_8863
create _8866-[:`CONTAINS`]->_8865
create _8870-[:`COMPOSED OF`]->_8862
create _8870-[:`COMPOSED OF`]->_8866
create _8870-[:`COMPOSED OF`]->_8864
create _8870-[:`CONTAINS`]->_8867
create _8870-[:`CONTAINS`]->_8869
create _8870-[:`CONTAINS`]->_8868
create _8870-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_8838
create _8870-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_8852
create _8870-[:`DEPENDS ON`]->_8906
create _8872-[:`CONTAINS`]->_8871
create _8874-[:`CONTAINS`]->_8873
create _8878-[:`COMPOSED OF`]->_8872
create _8878-[:`COMPOSED OF`]->_8874
create _8878-[:`CONTAINS`]->_8875
create _8878-[:`CONTAINS`]->_8876
create _8878-[:`CONTAINS`]->_8877
create _8878-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_8852
create _8878-[:`DEPENDS ON`]->_8906
create _8880-[:`CONTAINS`]->_8879
create _8882-[:`CONTAINS`]->_8881
create _8884-[:`CONTAINS`]->_8883
create _8888-[:`COMPOSED OF`]->_8880
create _8888-[:`COMPOSED OF`]->_8882
create _8888-[:`COMPOSED OF`]->_8884
create _8888-[:`CONTAINS`]->_8887
create _8888-[:`CONTAINS`]->_8886
create _8888-[:`CONTAINS`]->_8885
create _8888-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_8852
create _8888-[:`DEPENDS ON`]->_8906
create _8889-[:`DEPENDS ON`]->_8906
create _8891-[:`CONTAINS`]->_8890
create _8893-[:`CONTAINS`]->_8892
create _8895-[:`CONTAINS`]->_8894
create _8900-[:`COMPOSED OF`]->_8893
create _8900-[:`COMPOSED OF`]->_8891
create _8900-[:`COMPOSED OF`]->_8895
create _8900-[:`CONTAINS`]->_8899
create _8900-[:`CONTAINS`]->_8897
create _8900-[:`CONTAINS`]->_8898
create _8900-[:`CONTAINS`]->_8896
create _8900-[:`COMPATIBLE WITH`]->_8906
create _8900-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_8878
create _8900-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_8870
create _8900-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_8888
create _8900-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_8852
create _8906-[:`CONTAINS`]->_8903
create _8906-[:`CONTAINS`]->_8904
create _8906-[:`CONTAINS`]->_8901
create _8906-[:`CONTAINS`]->_8902
create _8906-[:`CONTAINS`]->_8905
create _8908-[:`CONTAINS`]->_8907
create _8908-[:`DEPENDS ON`]->_8990
create _8910-[:`CONTAINS`]->_8909
create _8912-[:`CONTAINS`]->_8911
create _8916-[:`COMPOSED OF`]->_8910
create _8916-[:`COMPOSED OF`]->_8912
create _8916-[:`CONTAINS`]->_8913
create _8916-[:`CONTAINS`]->_8915
create _8916-[:`CONTAINS`]->_8914
create _8916-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_8917
create _8916-[:`DEPENDS ON`]->_8990
create _8917-[:`COMPOSED OF`]->_8933
create _8917-[:`COMPOSED OF`]->_8927
create _8917-[:`COMPOSED OF`]->_8925
create _8917-[:`COMPOSED OF`]->_8931
create _8917-[:`COMPOSED OF`]->_8929
create _8917-[:`CONTAINS`]->_8936
create _8917-[:`CONTAINS`]->_8935
create _8917-[:`CONTAINS`]->_8934
create _8917-[:`DEPENDS ON`]->_8990
create _8917-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_8923
create _8919-[:`CONTAINS`]->_8918
create _8923-[:`COMPOSED OF`]->_8919
create _8923-[:`CONTAINS`]->_8920
create _8923-[:`CONTAINS`]->_8921
create _8923-[:`CONTAINS`]->_8922
create _8923-[:`DEPENDS ON`]->_8990
create _8925-[:`CONTAINS`]->_8924
create _8927-[:`CONTAINS`]->_8926
create _8929-[:`CONTAINS`]->_8928
create _8931-[:`CONTAINS`]->_8930
create _8933-[:`CONTAINS`]->_8932
create _8938-[:`CONTAINS`]->_8937
create _8940-[:`CONTAINS`]->_8939
create _8942-[:`CONTAINS`]->_8941
create _8944-[:`CONTAINS`]->_8943
create _8946-[:`COMPOSED OF`]->_8938
create _8946-[:`COMPOSED OF`]->_8940
create _8946-[:`COMPOSED OF`]->_8942
create _8946-[:`COMPOSED OF`]->_8944
create _8946-[:`CONTAINS`]->_8945
create _8948-[:`CONTAINS`]->_8947
create _8950-[:`CONTAINS`]->_8949
create _8954-[:`COMPOSED OF`]->_8950
create _8954-[:`COMPOSED OF`]->_8948
create _8954-[:`COMPOSED OF`]->_8946
create _8954-[:`CONTAINS`]->_8953
create _8954-[:`CONTAINS`]->_8952
create _8954-[:`CONTAINS`]->_8951
create _8954-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_8917
create _8954-[:`DEPENDS ON`]->_8990
create _8954-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_8923
create _8956-[:`CONTAINS`]->_8955
create _8958-[:`CONTAINS`]->_8957
create _8962-[:`COMPOSED OF`]->_8958
create _8962-[:`COMPOSED OF`]->_8956
create _8962-[:`CONTAINS`]->_8960
create _8962-[:`CONTAINS`]->_8961
create _8962-[:`CONTAINS`]->_8959
create _8962-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_8917
create _8962-[:`DEPENDS ON`]->_8990
create _8964-[:`CONTAINS`]->_8963
create _8966-[:`CONTAINS`]->_8965
create _8968-[:`CONTAINS`]->_8967
create _8972-[:`COMPOSED OF`]->_8966
create _8972-[:`COMPOSED OF`]->_8968
create _8972-[:`COMPOSED OF`]->_8964
create _8972-[:`CONTAINS`]->_8970
create _8972-[:`CONTAINS`]->_8971
create _8972-[:`CONTAINS`]->_8969
create _8972-[:`DEPENDS ON`]->_8990
create _8972-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_8917
create _8972-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_8916
create _8973-[:`DEPENDS ON`]->_8990
create _8975-[:`CONTAINS`]->_8974
create _8977-[:`CONTAINS`]->_8976
create _8979-[:`CONTAINS`]->_8978
create _8984-[:`COMPOSED OF`]->_8979
create _8984-[:`COMPOSED OF`]->_8975
create _8984-[:`COMPOSED OF`]->_8977
create _8984-[:`CONTAINS`]->_8980
create _8984-[:`CONTAINS`]->_8983
create _8984-[:`CONTAINS`]->_8981
create _8984-[:`CONTAINS`]->_8982
create _8984-[:`COMPATIBLE WITH`]->_8990
create _8984-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_8917
create _8984-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_8972
create _8984-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_8954
create _8984-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_8962
create _8990-[:`CONTAINS`]->_8989
create _8990-[:`CONTAINS`]->_8988
create _8990-[:`CONTAINS`]->_8987
create _8990-[:`CONTAINS`]->_8986
create _8990-[:`CONTAINS`]->_8985
create _8992-[:`CONTAINS`]->_8991
create _8992-[:`DEPENDS ON`]->_9074
create _8994-[:`CONTAINS`]->_8993
create _8996-[:`CONTAINS`]->_8995
create _9000-[:`COMPOSED OF`]->_8996
create _9000-[:`COMPOSED OF`]->_8994
create _9000-[:`CONTAINS`]->_8999
create _9000-[:`CONTAINS`]->_8998
create _9000-[:`CONTAINS`]->_8997
create _9000-[:`DEPENDS ON`]->_9074
create _9000-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_9001
create _9001-[:`COMPOSED OF`]->_9013
create _9001-[:`COMPOSED OF`]->_9015
create _9001-[:`COMPOSED OF`]->_9017
create _9001-[:`COMPOSED OF`]->_9009
create _9001-[:`COMPOSED OF`]->_9011
create _9001-[:`CONTAINS`]->_9018
create _9001-[:`CONTAINS`]->_9019
create _9001-[:`CONTAINS`]->_9020
create _9001-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_9007
create _9001-[:`DEPENDS ON`]->_9074
create _9003-[:`CONTAINS`]->_9002
create _9007-[:`COMPOSED OF`]->_9003
create _9007-[:`CONTAINS`]->_9004
create _9007-[:`CONTAINS`]->_9005
create _9007-[:`CONTAINS`]->_9006
create _9007-[:`DEPENDS ON`]->_9074
create _9009-[:`CONTAINS`]->_9008
create _9011-[:`CONTAINS`]->_9010
create _9013-[:`CONTAINS`]->_9012
create _9015-[:`CONTAINS`]->_9014
create _9017-[:`CONTAINS`]->_9016
create _9022-[:`CONTAINS`]->_9021
create _9024-[:`CONTAINS`]->_9023
create _9026-[:`CONTAINS`]->_9025
create _9028-[:`CONTAINS`]->_9027
create _9030-[:`COMPOSED OF`]->_9028
create _9030-[:`COMPOSED OF`]->_9026
create _9030-[:`COMPOSED OF`]->_9024
create _9030-[:`COMPOSED OF`]->_9022
create _9030-[:`CONTAINS`]->_9029
create _9032-[:`CONTAINS`]->_9031
create _9034-[:`CONTAINS`]->_9033
create _9038-[:`COMPOSED OF`]->_9034
create _9038-[:`COMPOSED OF`]->_9030
create _9038-[:`COMPOSED OF`]->_9032
create _9038-[:`CONTAINS`]->_9037
create _9038-[:`CONTAINS`]->_9035
create _9038-[:`CONTAINS`]->_9036
create _9038-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_9007
create _9038-[:`DEPENDS ON`]->_9074
create _9038-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_9001
create _9040-[:`CONTAINS`]->_9039
create _9042-[:`CONTAINS`]->_9041
create _9046-[:`COMPOSED OF`]->_9040
create _9046-[:`COMPOSED OF`]->_9042
create _9046-[:`CONTAINS`]->_9045
create _9046-[:`CONTAINS`]->_9044
create _9046-[:`CONTAINS`]->_9043
create _9046-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_9001
create _9046-[:`DEPENDS ON`]->_9074
create _9048-[:`CONTAINS`]->_9047
create _9050-[:`CONTAINS`]->_9049
create _9052-[:`CONTAINS`]->_9051
create _9056-[:`COMPOSED OF`]->_9052
create _9056-[:`COMPOSED OF`]->_9050
create _9056-[:`COMPOSED OF`]->_9048
create _9056-[:`CONTAINS`]->_9055
create _9056-[:`CONTAINS`]->_9054
create _9056-[:`CONTAINS`]->_9053
create _9056-[:`DEPENDS ON`]->_9074
create _9056-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_9000
create _9056-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_9001
create _9057-[:`DEPENDS ON`]->_9074
create _9059-[:`CONTAINS`]->_9058
create _9061-[:`CONTAINS`]->_9060
create _9063-[:`CONTAINS`]->_9062
create _9068-[:`COMPOSED OF`]->_9059
create _9068-[:`COMPOSED OF`]->_9061
create _9068-[:`COMPOSED OF`]->_9063
create _9068-[:`CONTAINS`]->_9064
create _9068-[:`CONTAINS`]->_9065
create _9068-[:`CONTAINS`]->_9066
create _9068-[:`CONTAINS`]->_9067
create _9068-[:`COMPATIBLE WITH`]->_9074
create _9068-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_9001
create _9068-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_9056
create _9068-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_9038
create _9068-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_9046
create _9074-[:`CONTAINS`]->_9070
create _9074-[:`CONTAINS`]->_9069
create _9074-[:`CONTAINS`]->_9072
create _9074-[:`CONTAINS`]->_9071
create _9074-[:`CONTAINS`]->_9073
create _9160-[:`CONTAINS`]->_9159
create _9162-[:`CONTAINS`]->_9161
create _9164-[:`CONTAINS`]->_9163
create _9166-[:`CONTAINS`]->_9165
create _9168-[:`CONTAINS`]->_9167
create _9172-[:`COMPOSED OF`]->_9168
create _9172-[:`COMPOSED OF`]->_9166
create _9172-[:`COMPOSED OF`]->_9164
create _9172-[:`COMPOSED OF`]->_9162
create _9172-[:`COMPOSED OF`]->_9160
create _9172-[:`CONTAINS`]->_9171
create _9172-[:`CONTAINS`]->_9170
create _9172-[:`CONTAINS`]->_9169
create _9172-[:`DEPENDS ON`]->_9242
create _9172-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_9173
create _9173-[:`COMPOSED OF`]->_9175
create _9173-[:`CONTAINS`]->_9178
create _9173-[:`CONTAINS`]->_9177
create _9173-[:`CONTAINS`]->_9176
create _9173-[:`DEPENDS ON`]->_9242
create _9175-[:`CONTAINS`]->_9174
create _9179-[:`DEPENDS ON`]->_9242
create _9181-[:`CONTAINS`]->_9180
create _9183-[:`CONTAINS`]->_9182
create _9185-[:`CONTAINS`]->_9184
create _9189-[:`COMPOSED OF`]->_9185
create _9189-[:`COMPOSED OF`]->_9183
create _9189-[:`COMPOSED OF`]->_9181
create _9189-[:`CONTAINS`]->_9188
create _9189-[:`CONTAINS`]->_9187
create _9189-[:`CONTAINS`]->_9186
create _9189-[:`DEPENDS ON`]->_9242
create _9189-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_9190
create _9189-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_9172
create _9190-[:`COMPOSED OF`]->_9222
create _9190-[:`COMPOSED OF`]->_9220
create _9190-[:`CONTAINS`]->_9225
create _9190-[:`CONTAINS`]->_9224
create _9190-[:`CONTAINS`]->_9223
create _9190-[:`DEPENDS ON`]->_9242
create _9192-[:`CONTAINS`]->_9191
create _9194-[:`CONTAINS`]->_9193
create _9198-[:`COMPOSED OF`]->_9194
create _9198-[:`COMPOSED OF`]->_9192
create _9198-[:`CONTAINS`]->_9197
create _9198-[:`CONTAINS`]->_9196
create _9198-[:`CONTAINS`]->_9195
create _9198-[:`DEPENDS ON`]->_9242
create _9198-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_9172
create _9200-[:`CONTAINS`]->_9199
create _9202-[:`CONTAINS`]->_9201
create _9204-[:`CONTAINS`]->_9203
create _9206-[:`CONTAINS`]->_9205
create _9208-[:`CONTAINS`]->_9207
create _9210-[:`CONTAINS`]->_9209
create _9212-[:`COMPOSED OF`]->_9210
create _9212-[:`COMPOSED OF`]->_9208
create _9212-[:`COMPOSED OF`]->_9206
create _9212-[:`COMPOSED OF`]->_9204
create _9212-[:`CONTAINS`]->_9211
create _9216-[:`COMPOSED OF`]->_9212
create _9216-[:`COMPOSED OF`]->_9202
create _9216-[:`COMPOSED OF`]->_9200
create _9216-[:`CONTAINS`]->_9215
create _9216-[:`CONTAINS`]->_9214
create _9216-[:`CONTAINS`]->_9213
create _9216-[:`DEPENDS ON`]->_9242
create _9216-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_9172
create _9216-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_9173
create _9218-[:`CONTAINS`]->_9217
create _9218-[:`DEPENDS ON`]->_9242
create _9220-[:`CONTAINS`]->_9219
create _9222-[:`CONTAINS`]->_9221
create _9227-[:`CONTAINS`]->_9226
create _9229-[:`CONTAINS`]->_9228
create _9231-[:`CONTAINS`]->_9230
create _9236-[:`COMPOSED OF`]->_9231
create _9236-[:`COMPOSED OF`]->_9229
create _9236-[:`COMPOSED OF`]->_9227
create _9236-[:`CONTAINS`]->_9235
create _9236-[:`CONTAINS`]->_9234
create _9236-[:`CONTAINS`]->_9233
create _9236-[:`CONTAINS`]->_9232
create _9236-[:`COMPATIBLE WITH`]->_9242
create _9236-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_9189
create _9236-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_9216
create _9236-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_9198
create _9236-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_9172
create _9242-[:`CONTAINS`]->_9241
create _9242-[:`CONTAINS`]->_9240
create _9242-[:`CONTAINS`]->_9239
create _9242-[:`CONTAINS`]->_9238
create _9242-[:`CONTAINS`]->_9237
create _9245-[:`CONTAINS`]->_9244
create _9247-[:`CONTAINS`]->_9246
create _9251-[:`COMPOSED OF`]->_9247
create _9251-[:`COMPOSED OF`]->_9245
create _9251-[:`CONTAINS`]->_9250
create _9251-[:`CONTAINS`]->_9249
create _9251-[:`CONTAINS`]->_9248
create _9251-[:`DEPENDS ON`]->_9327
create _9253-[:`CONTAINS`]->_9252
create _9253-[:`DEPENDS ON`]->_9327
create _9255-[:`CONTAINS`]->_9254
create _9257-[:`CONTAINS`]->_9256
create _9259-[:`CONTAINS`]->_9258
create _9261-[:`CONTAINS`]->_9260
create _9263-[:`CONTAINS`]->_9262
create _9265-[:`CONTAINS`]->_9264
create _9267-[:`COMPOSED OF`]->_9265
create _9267-[:`COMPOSED OF`]->_9263
create _9267-[:`COMPOSED OF`]->_9261
create _9267-[:`COMPOSED OF`]->_9259
create _9267-[:`CONTAINS`]->_9266
create _9271-[:`COMPOSED OF`]->_9267
create _9271-[:`COMPOSED OF`]->_9257
create _9271-[:`COMPOSED OF`]->_9255
create _9271-[:`CONTAINS`]->_9270
create _9271-[:`CONTAINS`]->_9269
create _9271-[:`CONTAINS`]->_9268
create _9271-[:`DEPENDS ON`]->_9327
create _9271-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_9273
create _9271-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_9272
create _9272-[:`COMPOSED OF`]->_9307
create _9272-[:`COMPOSED OF`]->_9305
create _9272-[:`COMPOSED OF`]->_9303
create _9272-[:`COMPOSED OF`]->_9301
create _9272-[:`COMPOSED OF`]->_9299
create _9272-[:`CONTAINS`]->_9310
create _9272-[:`CONTAINS`]->_9309
create _9272-[:`CONTAINS`]->_9308
create _9272-[:`DEPENDS ON`]->_9327
create _9272-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_9273
create _9273-[:`COMPOSED OF`]->_9294
create _9273-[:`CONTAINS`]->_9297
create _9273-[:`CONTAINS`]->_9296
create _9273-[:`CONTAINS`]->_9295
create _9273-[:`DEPENDS ON`]->_9327
create _9275-[:`CONTAINS`]->_9274
create _9277-[:`CONTAINS`]->_9276
create _9281-[:`COMPOSED OF`]->_9277
create _9281-[:`COMPOSED OF`]->_9275
create _9281-[:`CONTAINS`]->_9280
create _9281-[:`CONTAINS`]->_9279
create _9281-[:`CONTAINS`]->_9278
create _9281-[:`DEPENDS ON`]->_9327
create _9281-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_9272
create _9283-[:`CONTAINS`]->_9282
create _9285-[:`CONTAINS`]->_9284
create _9287-[:`CONTAINS`]->_9286
create _9291-[:`COMPOSED OF`]->_9287
create _9291-[:`COMPOSED OF`]->_9285
create _9291-[:`COMPOSED OF`]->_9283
create _9291-[:`CONTAINS`]->_9290
create _9291-[:`CONTAINS`]->_9289
create _9291-[:`CONTAINS`]->_9288
create _9291-[:`DEPENDS ON`]->_9327
create _9291-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_9272
create _9291-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_9251
create _9292-[:`DEPENDS ON`]->_9327
create _9294-[:`CONTAINS`]->_9293
create _9299-[:`CONTAINS`]->_9298
create _9301-[:`CONTAINS`]->_9300
create _9303-[:`CONTAINS`]->_9302
create _9305-[:`CONTAINS`]->_9304
create _9307-[:`CONTAINS`]->_9306
create _9312-[:`CONTAINS`]->_9311
create _9314-[:`CONTAINS`]->_9313
create _9316-[:`CONTAINS`]->_9315
create _9321-[:`COMPOSED OF`]->_9316
create _9321-[:`COMPOSED OF`]->_9314
create _9321-[:`COMPOSED OF`]->_9312
create _9321-[:`CONTAINS`]->_9320
create _9321-[:`CONTAINS`]->_9319
create _9321-[:`CONTAINS`]->_9318
create _9321-[:`CONTAINS`]->_9317
create _9321-[:`COMPATIBLE WITH`]->_9327
create _9321-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_9272
create _9321-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_9281
create _9321-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_9271
create _9321-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_9291
create _9327-[:`CONTAINS`]->_9326
create _9327-[:`CONTAINS`]->_9325
create _9327-[:`CONTAINS`]->_9324
create _9327-[:`CONTAINS`]->_9323
create _9327-[:`CONTAINS`]->_9322
create _9334-[:`COMPATIBLE WITH`]->_9242
create _9335-[:`COMPATIBLE WITH`]->_9327
;
commit
