begin
create (_56132:`FileNode` {`nID`:1, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.0"})
create (_56133:`Module` {`nID`:2, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.0"})
create (_56134:`FileNode` {`nID`:3, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_56135:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:4, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_56136:`FileNode` {`nID`:5, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_56137:`FileNode` {`nID`:6, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_56138:`FileNode` {`nID`:7, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_56139:`Module` {`nID`:8, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_56140:`FileNode` {`nID`:9, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.0"})
create (_56141:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:10, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_56142:`FileNode` {`nID`:11, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.0"})
create (_56143:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:12, `name`:"idmwat", `order`:2, `version`:"0.5.0"})
create (_56144:`FileNode` {`nID`:13, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.0"})
create (_56145:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:14, `name`:"wab", `order`:3, `version`:"0.5.0"})
create (_56146:`FileNode` {`nID`:15, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.0"})
create (_56147:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:16, `name`:"wat", `order`:4, `version`:"0.5.0"})
create (_56148:`FileNode` {`nID`:17, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.0"})
create (_56149:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:18, `name`:"wresources", `order`:5, `version`:"0.5.0"})
create (_56150:`FileNode` {`nID`:19, `name`:"ariane.community.core.portal-0.5.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_56151:`FileNode` {`nID`:20, `name`:"net.echinopsii.ariane.community.core.portal_0.5.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_56152:`FileNode` {`nID`:21, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.0"})
create (_56153:`Module` {`nID`:22, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.0"})
create (_56154:`FileNode` {`nID`:23, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.0"})
create (_56155:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:24, `name`:"api", `order`:1, `version`:"0.5.0"})
create (_56156:`FileNode` {`nID`:25, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.0"})
create (_56157:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:26, `name`:"blueprints", `order`:2, `version`:"0.5.0"})
create (_56158:`FileNode` {`nID`:27, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.0"})
create (_56159:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:28, `name`:"dsl", `order`:3, `version`:"0.5.0"})
create (_56160:`FileNode` {`nID`:29, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.0"})
create (_56161:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:30, `name`:"rim", `order`:4, `version`:"0.5.0"})
create (_56162:`FileNode` {`nID`:31, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.0"})
create (_56163:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:32, `name`:"ds", `order`:5, `version`:"0.5.0"})
create (_56164:`FileNode` {`nID`:33, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.0"})
create (_56165:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:34, `name`:"taitale", `order`:6, `version`:"0.5.0"})
create (_56166:`FileNode` {`nID`:35, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.0"})
create (_56167:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:36, `name`:"wat", `order`:7, `version`:"0.5.0"})
create (_56168:`FileNode` {`nID`:37, `name`:"ariane.community.core.mapping-0.5.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_56169:`FileNode` {`nID`:38, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_56170:`FileNode` {`nID`:39, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.0"})
create (_56171:`Module` {`nID`:40, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.0"})
create (_56172:`FileNode` {`nID`:41, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.0"})
create (_56173:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:42, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_56174:`FileNode` {`nID`:43, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.0"})
create (_56175:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:44, `name`:"wat", `order`:2, `version`:"0.5.0"})
create (_56176:`FileNode` {`nID`:45, `name`:"ariane.community.core.directory-0.5.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_56177:`FileNode` {`nID`:46, `name`:"net.echinopsii.ariane.community.core.directory_0.5.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_56178:`FileNode` {`nID`:47, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.0"})
create (_56179:`Module` {`nID`:48, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.0"})
create (_56180:`FileNode` {`nID`:49, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.0"})
create (_56181:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:50, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_56182:`FileNode` {`nID`:51, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.0"})
create (_56183:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:52, `name`:"wat", `order`:2, `version`:"0.5.0"})
create (_56184:`FileNode` {`nID`:53, `name`:"ariane.community.core.injector-0.5.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_56185:`FileNode` {`nID`:54, `name`:"net.echinopsii.ariane.community.core.injector_0.5.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_56186:`FileNode` {`nID`:55, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.0"})
create (_56187:`Module` {`nID`:56, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.0"})
create (_56188:`Module` {`nID`:57, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.0"})
create (_56189:`FileNode` {`nID`:58, `name`:"ariane.community.distrib-0.5.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.0"})
create (_56190:`FileNode` {`nID`:59, `name`:"pom-ariane.community.distrib-0.5.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.0"})
create (_56191:`FileNode` {`nID`:60, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.0"})
create (_56192:`FileNode` {`nID`:61, `name`:"ariane.community.plugins-distrib-0.5.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.0"})
create (_56193:`FileNode` {`nID`:62, `name`:"ariane.community.git.repos-0.5.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.0"})
create (_56194:`Distribution` {`editable`:"false", `nID`:63, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.5.0"})
create (_56195:`FileNode` {`nID`:64, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.1"})
create (_56196:`Module` {`nID`:65, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.1"})
create (_56197:`FileNode` {`nID`:66, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_56198:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:67, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_56199:`FileNode` {`nID`:68, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_56200:`FileNode` {`nID`:69, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_56201:`FileNode` {`nID`:70, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_56202:`Module` {`nID`:71, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_56203:`FileNode` {`nID`:72, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_56204:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:73, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_56205:`FileNode` {`nID`:74, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_56206:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:75, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_56207:`FileNode` {`nID`:76, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_56208:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:77, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_56209:`FileNode` {`nID`:78, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_56210:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:79, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_56211:`FileNode` {`nID`:80, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_56212:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:81, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_56213:`FileNode` {`nID`:82, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_56214:`FileNode` {`nID`:83, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_56215:`FileNode` {`nID`:84, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_56216:`Module` {`nID`:85, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_56217:`FileNode` {`nID`:86, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.1"})
create (_56218:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:87, `name`:"api", `order`:1, `version`:"0.5.1"})
create (_56219:`FileNode` {`nID`:88, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.1"})
create (_56220:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:89, `name`:"blueprints", `order`:2, `version`:"0.5.1"})
create (_56221:`FileNode` {`nID`:90, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.1"})
create (_56222:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:91, `name`:"dsl", `order`:3, `version`:"0.5.1"})
create (_56223:`FileNode` {`nID`:92, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.1"})
create (_56224:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:93, `name`:"rim", `order`:4, `version`:"0.5.1"})
create (_56225:`FileNode` {`nID`:94, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.1"})
create (_56226:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:95, `name`:"ds", `order`:5, `version`:"0.5.1"})
create (_56227:`FileNode` {`nID`:96, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.1"})
create (_56228:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:97, `name`:"taitale", `order`:6, `version`:"0.5.1"})
create (_56229:`FileNode` {`nID`:98, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.1"})
create (_56230:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:99, `name`:"wat", `order`:7, `version`:"0.5.1"})
create (_56231:`FileNode` {`nID`:100, `name`:"ariane.community.core.mapping-0.5.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_56232:`FileNode` {`nID`:101, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_56233:`FileNode` {`nID`:102, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.1"})
create (_56234:`Module` {`nID`:103, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.1"})
create (_56235:`FileNode` {`nID`:104, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_56236:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:105, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_56237:`FileNode` {`nID`:106, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_56238:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:107, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_56239:`FileNode` {`nID`:108, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_56240:`FileNode` {`nID`:109, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_56241:`FileNode` {`nID`:110, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_56242:`Module` {`nID`:111, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_56243:`FileNode` {`nID`:112, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.1"})
create (_56244:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:113, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_56245:`FileNode` {`nID`:114, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.1"})
create (_56246:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:115, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_56247:`FileNode` {`nID`:116, `name`:"ariane.community.core.injector-0.5.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_56248:`FileNode` {`nID`:117, `name`:"net.echinopsii.ariane.community.core.injector_0.5.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_56249:`FileNode` {`nID`:118, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.1"})
create (_56250:`Module` {`nID`:119, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.1"})
create (_56251:`Module` {`nID`:120, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.1"})
create (_56252:`FileNode` {`nID`:121, `name`:"ariane.community.distrib-0.5.1.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.1"})
create (_56253:`FileNode` {`nID`:122, `name`:"pom-ariane.community.distrib-0.5.1.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.1"})
create (_56254:`FileNode` {`nID`:123, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.1"})
create (_56255:`FileNode` {`nID`:124, `name`:"ariane.community.plugins-distrib-0.5.1.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.1"})
create (_56256:`FileNode` {`nID`:125, `name`:"ariane.community.git.repos-0.5.1.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.1"})
create (_56257:`Distribution` {`editable`:"false", `nID`:126, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.5.1"})
create (_56258:`FileNode` {`nID`:127, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.2"})
create (_56259:`Module` {`nID`:128, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.2"})
create (_56260:`FileNode` {`nID`:129, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_56261:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:130, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_56262:`FileNode` {`nID`:131, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_56263:`FileNode` {`nID`:132, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_56264:`FileNode` {`nID`:133, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_56265:`Module` {`nID`:134, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_56266:`FileNode` {`nID`:135, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_56267:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:136, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_56268:`FileNode` {`nID`:137, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_56269:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:138, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_56270:`FileNode` {`nID`:139, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_56271:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:140, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_56272:`FileNode` {`nID`:141, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_56273:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:142, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_56274:`FileNode` {`nID`:143, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_56275:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:144, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_56276:`FileNode` {`nID`:145, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_56277:`FileNode` {`nID`:146, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_56278:`FileNode` {`nID`:147, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_56279:`Module` {`nID`:148, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_56280:`FileNode` {`nID`:149, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.1"})
create (_56281:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:150, `name`:"api", `order`:1, `version`:"0.5.1"})
create (_56282:`FileNode` {`nID`:151, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.1"})
create (_56283:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:152, `name`:"blueprints", `order`:2, `version`:"0.5.1"})
create (_56284:`FileNode` {`nID`:153, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.1"})
create (_56285:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:154, `name`:"dsl", `order`:3, `version`:"0.5.1"})
create (_56286:`FileNode` {`nID`:155, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.1"})
create (_56287:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:156, `name`:"rim", `order`:4, `version`:"0.5.1"})
create (_56288:`FileNode` {`nID`:157, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.1"})
create (_56289:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:158, `name`:"ds", `order`:5, `version`:"0.5.1"})
create (_56290:`FileNode` {`nID`:159, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.1"})
create (_56291:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:160, `name`:"taitale", `order`:6, `version`:"0.5.1"})
create (_56292:`FileNode` {`nID`:161, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.1"})
create (_56293:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:162, `name`:"wat", `order`:7, `version`:"0.5.1"})
create (_56294:`FileNode` {`nID`:163, `name`:"ariane.community.core.mapping-0.5.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_56295:`FileNode` {`nID`:164, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_56296:`FileNode` {`nID`:165, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.1"})
create (_56297:`Module` {`nID`:166, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.1"})
create (_56298:`FileNode` {`nID`:167, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_56299:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:168, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_56300:`FileNode` {`nID`:169, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_56301:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:170, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_56302:`FileNode` {`nID`:171, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_56303:`FileNode` {`nID`:172, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_56304:`FileNode` {`nID`:173, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_56305:`Module` {`nID`:174, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_56306:`FileNode` {`nID`:175, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.2"})
create (_56307:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:176, `name`:"base", `order`:1, `version`:"0.5.2"})
create (_56308:`FileNode` {`nID`:177, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.2"})
create (_56309:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:178, `name`:"wat", `order`:2, `version`:"0.5.2"})
create (_56310:`FileNode` {`nID`:179, `name`:"ariane.community.core.injector-0.5.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_56311:`FileNode` {`nID`:180, `name`:"net.echinopsii.ariane.community.core.injector_0.5.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_56312:`FileNode` {`nID`:181, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.2"})
create (_56313:`Module` {`nID`:182, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.2"})
create (_56314:`Module` {`nID`:183, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.2"})
create (_56315:`FileNode` {`nID`:184, `name`:"ariane.community.distrib-0.5.2.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.2"})
create (_56316:`FileNode` {`nID`:185, `name`:"pom-ariane.community.distrib-0.5.2.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.2"})
create (_56317:`FileNode` {`nID`:186, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.2"})
create (_56318:`FileNode` {`nID`:187, `name`:"ariane.community.plugins-distrib-0.5.2.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.2"})
create (_56319:`FileNode` {`nID`:188, `name`:"ariane.community.git.repos-0.5.2.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.2"})
create (_56320:`Distribution` {`editable`:"false", `nID`:189, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.5.2"})
create (_56321:`FileNode` {`nID`:190, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.3"})
create (_56322:`Module` {`nID`:191, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.3"})
create (_56323:`FileNode` {`nID`:192, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_56324:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:193, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_56325:`FileNode` {`nID`:194, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_56326:`FileNode` {`nID`:195, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_56327:`FileNode` {`nID`:196, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_56328:`Module` {`nID`:197, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_56329:`FileNode` {`nID`:198, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_56330:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:199, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_56331:`FileNode` {`nID`:200, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_56332:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:201, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_56333:`FileNode` {`nID`:202, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_56334:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:203, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_56335:`FileNode` {`nID`:204, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_56336:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:205, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_56337:`FileNode` {`nID`:206, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_56338:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:207, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_56339:`FileNode` {`nID`:208, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_56340:`FileNode` {`nID`:209, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_56341:`FileNode` {`nID`:210, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_56342:`Module` {`nID`:211, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_56343:`FileNode` {`nID`:212, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.2"})
create (_56344:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:213, `name`:"api", `order`:1, `version`:"0.5.2"})
create (_56345:`FileNode` {`nID`:214, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.2"})
create (_56346:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:215, `name`:"blueprints", `order`:2, `version`:"0.5.2"})
create (_56347:`FileNode` {`nID`:216, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.2"})
create (_56348:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:217, `name`:"dsl", `order`:3, `version`:"0.5.2"})
create (_56349:`FileNode` {`nID`:218, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.2"})
create (_56350:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:219, `name`:"rim", `order`:4, `version`:"0.5.2"})
create (_56351:`FileNode` {`nID`:220, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.2"})
create (_56352:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:221, `name`:"ds", `order`:5, `version`:"0.5.2"})
create (_56353:`FileNode` {`nID`:222, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.2"})
create (_56354:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:223, `name`:"taitale", `order`:6, `version`:"0.5.2"})
create (_56355:`FileNode` {`nID`:224, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.2"})
create (_56356:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:225, `name`:"wat", `order`:7, `version`:"0.5.2"})
create (_56357:`FileNode` {`nID`:226, `name`:"ariane.community.core.mapping-0.5.2.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_56358:`FileNode` {`nID`:227, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.2.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_56359:`FileNode` {`nID`:228, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.2"})
create (_56360:`Module` {`nID`:229, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.2"})
create (_56361:`FileNode` {`nID`:230, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_56362:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:231, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_56363:`FileNode` {`nID`:232, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_56364:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:233, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_56365:`FileNode` {`nID`:234, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_56366:`FileNode` {`nID`:235, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_56367:`FileNode` {`nID`:236, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_56368:`Module` {`nID`:237, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_56369:`FileNode` {`nID`:238, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.2"})
create (_56370:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:239, `name`:"base", `order`:1, `version`:"0.5.2"})
create (_56371:`FileNode` {`nID`:240, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.2"})
create (_56372:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:241, `name`:"wat", `order`:2, `version`:"0.5.2"})
create (_56373:`FileNode` {`nID`:242, `name`:"ariane.community.core.injector-0.5.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_56374:`FileNode` {`nID`:243, `name`:"net.echinopsii.ariane.community.core.injector_0.5.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_56375:`FileNode` {`nID`:244, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.2"})
create (_56376:`Module` {`nID`:245, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.2"})
create (_56377:`Module` {`nID`:246, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.2"})
create (_56378:`FileNode` {`nID`:247, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.1.0"})
create (_56379:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:248, `name`:"directory", `order`:1, `version`:"0.1.0"})
create (_56380:`FileNode` {`nID`:249, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.1.0"})
create (_56381:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:250, `name`:"jsonparser", `order`:2, `version`:"0.1.0"})
create (_56382:`FileNode` {`nID`:251, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.1.0"})
create (_56383:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:252, `name`:"injector", `order`:3, `version`:"0.1.0"})
create (_56384:`FileNode` {`nID`:253, `name`:"ariane.community.plugin.rabbitmq-0.1.0.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_56385:`FileNode` {`nID`:254, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.1.0.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.1.0"})
create (_56386:`FileNode` {`nID`:255, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_56387:`FileNode` {`nID`:256, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.1.0"})
create (_56388:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:257, `name`:"rabbitmq", `version`:"0.1.0"})
create (_56389:`FileNode` {`nID`:258, `name`:"ariane.community.distrib-0.5.3.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.3"})
create (_56390:`FileNode` {`nID`:259, `name`:"pom-ariane.community.distrib-0.5.3.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.3"})
create (_56391:`FileNode` {`nID`:260, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.3"})
create (_56392:`FileNode` {`nID`:261, `name`:"ariane.community.plugins-distrib-0.5.3.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.3"})
create (_56393:`FileNode` {`nID`:262, `name`:"ariane.community.git.repos-0.5.3.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.3"})
create (_56394:`Distribution` {`editable`:"false", `nID`:263, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.5.3"})
create (_56395:`FileNode` {`nID`:264, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.0"})
create (_56396:`Module` {`nID`:265, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.0"})
create (_56397:`FileNode` {`nID`:266, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_56398:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:267, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_56399:`FileNode` {`nID`:268, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_56400:`FileNode` {`nID`:269, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_56401:`FileNode` {`nID`:270, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_56402:`Module` {`nID`:271, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_56403:`FileNode` {`nID`:272, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.0"})
create (_56404:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:273, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_56405:`FileNode` {`nID`:274, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.0"})
create (_56406:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:275, `name`:"wat", `order`:2, `version`:"0.6.0"})
create (_56407:`FileNode` {`nID`:276, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.0"})
create (_56408:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:277, `name`:"idmwat", `order`:3, `version`:"0.6.0"})
create (_56409:`FileNode` {`nID`:278, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.0"})
create (_56410:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:279, `name`:"wab", `order`:4, `version`:"0.6.0"})
create (_56411:`FileNode` {`nID`:280, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.0"})
create (_56412:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:281, `name`:"wresources", `order`:5, `version`:"0.6.0"})
create (_56413:`FileNode` {`nID`:282, `name`:"ariane.community.core.portal-0.6.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_56414:`FileNode` {`nID`:283, `name`:"net.echinopsii.ariane.community.core.portal_0.6.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_56415:`FileNode` {`nID`:284, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.0"})
create (_56416:`Module` {`nID`:285, `name`:"portal", `order`:3, `type`:"core", `version`:"0.6.0"})
create (_56417:`FileNode` {`nID`:286, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.0"})
create (_56418:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:287, `name`:"api", `order`:1, `version`:"0.6.0"})
create (_56419:`FileNode` {`nID`:288, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.0"})
create (_56420:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:289, `name`:"blueprints", `order`:2, `version`:"0.6.0"})
create (_56421:`FileNode` {`nID`:290, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.0"})
create (_56422:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:291, `name`:"rim", `order`:3, `version`:"0.6.0"})
create (_56423:`FileNode` {`nID`:292, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.0"})
create (_56424:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:293, `name`:"dsl", `order`:4, `version`:"0.6.0"})
create (_56425:`FileNode` {`nID`:294, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.0"})
create (_56426:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:295, `name`:"ds", `order`:5, `version`:"0.6.0"})
create (_56427:`FileNode` {`nID`:296, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.0"})
create (_56428:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:297, `name`:"wat", `order`:6, `version`:"0.6.0"})
create (_56429:`FileNode` {`nID`:298, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.0"})
create (_56430:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:299, `name`:"taitale", `order`:7, `version`:"0.6.0"})
create (_56431:`FileNode` {`nID`:300, `name`:"ariane.community.core.mapping-0.6.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_56432:`FileNode` {`nID`:301, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_56433:`FileNode` {`nID`:302, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.0"})
create (_56434:`Module` {`nID`:303, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.6.0"})
create (_56435:`FileNode` {`nID`:304, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.0"})
create (_56436:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:305, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_56437:`FileNode` {`nID`:306, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.0"})
create (_56438:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:307, `name`:"wat", `order`:2, `version`:"0.6.0"})
create (_56439:`FileNode` {`nID`:308, `name`:"ariane.community.core.directory-0.6.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_56440:`FileNode` {`nID`:309, `name`:"net.echinopsii.ariane.community.core.directory_0.6.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_56441:`FileNode` {`nID`:310, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.0"})
create (_56442:`Module` {`nID`:311, `name`:"directory", `order`:5, `type`:"core", `version`:"0.6.0"})
create (_56443:`FileNode` {`nID`:312, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.0"})
create (_56444:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:313, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_56445:`FileNode` {`nID`:314, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.0"})
create (_56446:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:315, `name`:"messaging", `order`:2, `version`:"0.6.0"})
create (_56447:`FileNode` {`nID`:316, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.0"})
create (_56448:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:317, `name`:"wat", `order`:3, `version`:"0.6.0"})
create (_56449:`FileNode` {`nID`:318, `name`:"ariane.community.core.injector-0.6.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_56450:`FileNode` {`nID`:319, `name`:"net.echinopsii.ariane.community.core.injector_0.6.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_56451:`FileNode` {`nID`:320, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.0"})
create (_56452:`Module` {`nID`:321, `name`:"injector", `order`:6, `type`:"core", `version`:"0.6.0"})
create (_56453:`Module` {`nID`:322, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.6.0"})
create (_56454:`FileNode` {`nID`:323, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.0"})
create (_56455:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:324, `name`:"directory", `order`:1, `version`:"0.2.0"})
create (_56456:`FileNode` {`nID`:325, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.0"})
create (_56457:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:326, `name`:"jsonparser", `order`:2, `version`:"0.2.0"})
create (_56458:`FileNode` {`nID`:327, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.0"})
create (_56459:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:328, `name`:"injector", `order`:3, `version`:"0.2.0"})
create (_56460:`FileNode` {`nID`:329, `name`:"ariane.community.plugin.rabbitmq-0.2.0.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.0"})
create (_56545:`FileNode` {`nID`:330, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.0.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.0"})
create (_56553:`FileNode` {`nID`:331, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.0"})
create (_56554:`FileNode` {`nID`:332, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.0"})
create (_56555:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:333, `name`:"rabbitmq", `version`:"0.2.0"})
create (_56556:`FileNode` {`nID`:334, `name`:"ariane.community.distrib-0.6.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.0"})
create (_56557:`FileNode` {`nID`:335, `name`:"pom-ariane.community.distrib-0.6.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.0"})
create (_56558:`FileNode` {`nID`:336, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.0"})
create (_56559:`FileNode` {`nID`:337, `name`:"ariane.community.plugins-distrib-0.6.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.0"})
create (_56560:`FileNode` {`nID`:338, `name`:"ariane.community.git.repos-0.6.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.0"})
create (_56561:`Distribution` {`editable`:"false", `nID`:339, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.6.0"})
create (_56562:`FileNode` {`nID`:340, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.1"})
create (_56563:`Module` {`nID`:341, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.1"})
create (_56564:`FileNode` {`nID`:342, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_56565:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:343, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_56566:`FileNode` {`nID`:344, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_56567:`FileNode` {`nID`:345, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_56568:`FileNode` {`nID`:346, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_56569:`Module` {`nID`:347, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_56570:`FileNode` {`nID`:348, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.1"})
create (_56571:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:349, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_56572:`FileNode` {`nID`:350, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.1"})
create (_56573:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:351, `name`:"wat", `order`:2, `version`:"0.6.1"})
create (_56574:`FileNode` {`nID`:352, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.1"})
create (_56575:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:353, `name`:"idmwat", `order`:3, `version`:"0.6.1"})
create (_56576:`FileNode` {`nID`:354, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.1"})
create (_56577:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:355, `name`:"wab", `order`:4, `version`:"0.6.1"})
create (_56578:`FileNode` {`nID`:356, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.1"})
create (_56579:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:357, `name`:"wresources", `order`:5, `version`:"0.6.1"})
create (_56580:`FileNode` {`nID`:358, `name`:"ariane.community.core.portal-0.6.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_56581:`FileNode` {`nID`:359, `name`:"net.echinopsii.ariane.community.core.portal_0.6.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_56582:`FileNode` {`nID`:360, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.1"})
create (_56583:`Module` {`nID`:361, `name`:"portal", `order`:3, `type`:"core", `version`:"0.6.1"})
create (_56584:`FileNode` {`nID`:362, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.1"})
create (_56585:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:363, `name`:"api", `order`:1, `version`:"0.6.1"})
create (_56586:`FileNode` {`nID`:364, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.1"})
create (_56587:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:365, `name`:"blueprints", `order`:2, `version`:"0.6.1"})
create (_56588:`FileNode` {`nID`:366, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.1"})
create (_56589:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:367, `name`:"rim", `order`:3, `version`:"0.6.1"})
create (_56590:`FileNode` {`nID`:368, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.1"})
create (_56591:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:369, `name`:"dsl", `order`:4, `version`:"0.6.1"})
create (_56592:`FileNode` {`nID`:370, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.1"})
create (_56593:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:371, `name`:"ds", `order`:5, `version`:"0.6.1"})
create (_56594:`FileNode` {`nID`:372, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.1"})
create (_56595:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:373, `name`:"wat", `order`:6, `version`:"0.6.1"})
create (_56596:`FileNode` {`nID`:374, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.1"})
create (_56597:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:375, `name`:"taitale", `order`:7, `version`:"0.6.1"})
create (_56598:`FileNode` {`nID`:376, `name`:"ariane.community.core.mapping-0.6.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_56599:`FileNode` {`nID`:377, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_56600:`FileNode` {`nID`:378, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.1"})
create (_56601:`Module` {`nID`:379, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.6.1"})
create (_56602:`FileNode` {`nID`:380, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.1"})
create (_56603:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:381, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_56604:`FileNode` {`nID`:382, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.1"})
create (_56605:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:383, `name`:"wat", `order`:2, `version`:"0.6.1"})
create (_56606:`FileNode` {`nID`:384, `name`:"ariane.community.core.directory-0.6.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_56607:`FileNode` {`nID`:385, `name`:"net.echinopsii.ariane.community.core.directory_0.6.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_56608:`FileNode` {`nID`:386, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.1"})
create (_56609:`Module` {`nID`:387, `name`:"directory", `order`:5, `type`:"core", `version`:"0.6.1"})
create (_56610:`FileNode` {`nID`:388, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.1"})
create (_56611:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:389, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_56612:`FileNode` {`nID`:390, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.1"})
create (_56613:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:391, `name`:"messaging", `order`:2, `version`:"0.6.1"})
create (_56614:`FileNode` {`nID`:392, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.1"})
create (_56615:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:393, `name`:"wat", `order`:3, `version`:"0.6.1"})
create (_56616:`FileNode` {`nID`:394, `name`:"ariane.community.core.injector-0.6.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_56617:`FileNode` {`nID`:395, `name`:"net.echinopsii.ariane.community.core.injector_0.6.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_56618:`FileNode` {`nID`:396, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.1"})
create (_56619:`Module` {`nID`:397, `name`:"injector", `order`:6, `type`:"core", `version`:"0.6.1"})
create (_56620:`Module` {`nID`:398, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.6.1"})
create (_56621:`FileNode` {`nID`:399, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.1"})
create (_56622:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:400, `name`:"directory", `order`:1, `version`:"0.2.1"})
create (_56623:`FileNode` {`nID`:401, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.1"})
create (_56624:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:402, `name`:"jsonparser", `order`:2, `version`:"0.2.1"})
create (_56625:`FileNode` {`nID`:403, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.1"})
create (_56626:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:404, `name`:"injector", `order`:3, `version`:"0.2.1"})
create (_56627:`FileNode` {`nID`:405, `name`:"ariane.community.plugin.rabbitmq-0.2.1.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.1"})
create (_56628:`FileNode` {`nID`:406, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.1.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.1"})
create (_56629:`FileNode` {`nID`:407, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.1"})
create (_56630:`FileNode` {`nID`:408, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.1"})
create (_56631:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:409, `name`:"rabbitmq", `version`:"0.2.1"})
create (_56632:`FileNode` {`nID`:410, `name`:"ariane.community.distrib-0.6.1.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.1"})
create (_56633:`FileNode` {`nID`:411, `name`:"pom-ariane.community.distrib-0.6.1.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.1"})
create (_56634:`FileNode` {`nID`:412, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.1"})
create (_56635:`FileNode` {`nID`:413, `name`:"ariane.community.plugins-distrib-0.6.1.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.1"})
create (_56636:`FileNode` {`nID`:414, `name`:"ariane.community.git.repos-0.6.1.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.1"})
create (_56637:`Distribution` {`editable`:"false", `nID`:415, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.6.1"})
create (_56638:`FileNode` {`nID`:416, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.2"})
create (_56639:`Module` {`nID`:417, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.2"})
create (_56640:`FileNode` {`nID`:418, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_56641:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:419, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_56642:`FileNode` {`nID`:420, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_56643:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:421, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_56738:`FileNode` {`nID`:422, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_56739:`FileNode` {`nID`:423, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_56740:`FileNode` {`nID`:424, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_56741:`Module` {`nID`:425, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_56742:`Module` {`nID`:426, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.2"})
create (_56743:`FileNode` {`nID`:427, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.1"})
create (_56744:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:428, `name`:"base", `order`:1, `version`:"0.4.1"})
create (_56745:`FileNode` {`nID`:429, `name`:"ariane.community.core.idm-0.4.1.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.1"})
create (_56746:`FileNode` {`nID`:430, `name`:"net.echinopsii.ariane.community.core.idm_0.4.1.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.1"})
create (_56747:`FileNode` {`nID`:431, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.1"})
create (_56748:`Module` {`nID`:432, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.1"})
create (_56749:`FileNode` {`nID`:433, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.2"})
create (_56750:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:434, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_56751:`FileNode` {`nID`:435, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.2"})
create (_56752:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:436, `name`:"wat", `order`:2, `version`:"0.6.2"})
create (_56753:`FileNode` {`nID`:437, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.2"})
create (_56754:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:438, `name`:"idmwat", `order`:3, `version`:"0.6.2"})
create (_56755:`FileNode` {`nID`:439, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.2"})
create (_56756:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:440, `name`:"wab", `order`:4, `version`:"0.6.2"})
create (_56757:`FileNode` {`nID`:441, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.2"})
create (_56758:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:442, `name`:"wresources", `order`:5, `version`:"0.6.2"})
create (_56759:`FileNode` {`nID`:443, `name`:"ariane.community.core.portal-0.6.2.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_56760:`FileNode` {`nID`:444, `name`:"net.echinopsii.ariane.community.core.portal_0.6.2.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_56761:`FileNode` {`nID`:445, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.2"})
create (_56762:`FileNode` {`nID`:446, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.2"})
create (_56763:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:447, `name`:"api", `order`:1, `version`:"0.6.2"})
create (_56764:`FileNode` {`nID`:448, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.2"})
create (_56765:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:449, `name`:"blueprints", `order`:2, `version`:"0.6.2"})
create (_56766:`FileNode` {`nID`:450, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.2"})
create (_56767:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:451, `name`:"rim", `order`:3, `version`:"0.6.2"})
create (_56768:`FileNode` {`nID`:452, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.2"})
create (_56769:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:453, `name`:"dsl", `order`:4, `version`:"0.6.2"})
create (_56770:`FileNode` {`nID`:454, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.2"})
create (_56771:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:455, `name`:"ds", `order`:5, `version`:"0.6.2"})
create (_56772:`FileNode` {`nID`:456, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.2"})
create (_56773:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:457, `name`:"wat", `order`:6, `version`:"0.6.2"})
create (_56774:`FileNode` {`nID`:458, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.2"})
create (_56775:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:459, `name`:"taitale", `order`:7, `version`:"0.6.2"})
create (_56776:`FileNode` {`nID`:460, `name`:"ariane.community.core.mapping-0.6.2.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_56777:`FileNode` {`nID`:461, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.2.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_56778:`FileNode` {`nID`:462, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.2"})
create (_56779:`Module` {`nID`:463, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.2"})
create (_56780:`FileNode` {`nID`:464, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.2"})
create (_56781:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:465, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_56782:`FileNode` {`nID`:466, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.2"})
create (_56783:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:467, `name`:"wat", `order`:2, `version`:"0.6.2"})
create (_56784:`FileNode` {`nID`:468, `name`:"ariane.community.core.directory-0.6.2.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_56785:`FileNode` {`nID`:469, `name`:"net.echinopsii.ariane.community.core.directory_0.6.2.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_56786:`FileNode` {`nID`:470, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.2"})
create (_56787:`Module` {`nID`:471, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.2"})
create (_56788:`FileNode` {`nID`:472, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.2"})
create (_56789:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:473, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_56790:`FileNode` {`nID`:474, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.2"})
create (_56791:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:475, `name`:"messaging", `order`:2, `version`:"0.6.2"})
create (_56792:`FileNode` {`nID`:476, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.2"})
create (_56793:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:477, `name`:"wat", `order`:3, `version`:"0.6.2"})
create (_56794:`FileNode` {`nID`:478, `name`:"ariane.community.core.injector-0.6.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_56795:`FileNode` {`nID`:479, `name`:"net.echinopsii.ariane.community.core.injector_0.6.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_56796:`FileNode` {`nID`:480, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.2"})
create (_56797:`Module` {`nID`:481, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.2"})
create (_56798:`Module` {`nID`:482, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.2"})
create (_56799:`FileNode` {`nID`:483, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.2"})
create (_56800:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:484, `name`:"directory", `order`:1, `version`:"0.2.2"})
create (_56801:`FileNode` {`nID`:485, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.2"})
create (_56802:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:486, `name`:"jsonparser", `order`:2, `version`:"0.2.2"})
create (_56803:`FileNode` {`nID`:487, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.2"})
create (_56804:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:488, `name`:"injector", `order`:3, `version`:"0.2.2"})
create (_56805:`FileNode` {`nID`:489, `name`:"ariane.community.plugin.rabbitmq-0.2.2.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.2"})
create (_56806:`FileNode` {`nID`:490, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.2.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.2"})
create (_56807:`FileNode` {`nID`:491, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.2"})
create (_56808:`FileNode` {`nID`:492, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.2"})
create (_56809:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:493, `name`:"rabbitmq", `version`:"0.2.2"})
create (_56810:`FileNode` {`nID`:494, `name`:"ariane.community.distrib-0.6.2.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.2"})
create (_56811:`FileNode` {`nID`:495, `name`:"pom-ariane.community.distrib-0.6.2.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.2"})
create (_56812:`FileNode` {`nID`:496, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.2"})
create (_56813:`FileNode` {`nID`:497, `name`:"ariane.community.plugins-distrib-0.6.2.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.2"})
create (_56814:`FileNode` {`nID`:498, `name`:"ariane.community.git.repos-0.6.2.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.2"})
create (_56815:`Distribution` {`editable`:"false", `nID`:499, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.6.2"})
create (_56816:`FileNode` {`nID`:500, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.3"})
create (_56817:`Module` {`nID`:501, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.3"})
create (_56818:`FileNode` {`nID`:502, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_56819:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:503, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_56820:`FileNode` {`nID`:504, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_56821:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:505, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_56822:`FileNode` {`nID`:506, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_56823:`FileNode` {`nID`:507, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_56824:`FileNode` {`nID`:508, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_56825:`Module` {`nID`:509, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_56826:`Module` {`nID`:510, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.3"})
create (_56827:`FileNode` {`nID`:511, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2"})
create (_56828:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:512, `name`:"base", `order`:1, `version`:"0.4.2"})
create (_56832:`FileNode` {`nID`:513, `name`:"ariane.community.core.idm-0.4.2.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2"})
create (_56833:`FileNode` {`nID`:514, `name`:"net.echinopsii.ariane.community.core.idm_0.4.2.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2"})
create (_56834:`FileNode` {`nID`:515, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2"})
create (_56835:`Module` {`nID`:516, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2"})
create (_56836:`FileNode` {`nID`:517, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.3"})
create (_56837:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:518, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_56838:`FileNode` {`nID`:519, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.3"})
create (_56839:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:520, `name`:"wat", `order`:2, `version`:"0.6.3"})
create (_56840:`FileNode` {`nID`:521, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.3"})
create (_56841:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:522, `name`:"idmwat", `order`:3, `version`:"0.6.3"})
create (_56842:`FileNode` {`nID`:523, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.3"})
create (_56843:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:524, `name`:"wab", `order`:4, `version`:"0.6.3"})
create (_56844:`FileNode` {`nID`:525, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.3"})
create (_56845:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:526, `name`:"wresources", `order`:5, `version`:"0.6.3"})
create (_56846:`FileNode` {`nID`:527, `name`:"ariane.community.core.portal-0.6.3.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_56847:`FileNode` {`nID`:528, `name`:"net.echinopsii.ariane.community.core.portal_0.6.3.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_56848:`FileNode` {`nID`:529, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.3"})
create (_56849:`FileNode` {`nID`:530, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.3"})
create (_56850:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:531, `name`:"api", `order`:1, `version`:"0.6.3"})
create (_56851:`FileNode` {`nID`:532, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.3"})
create (_56852:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:533, `name`:"blueprints", `order`:2, `version`:"0.6.3"})
create (_56853:`FileNode` {`nID`:534, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.3"})
create (_56854:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:535, `name`:"rim", `order`:3, `version`:"0.6.3"})
create (_56855:`FileNode` {`nID`:536, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.3"})
create (_56856:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:537, `name`:"dsl", `order`:4, `version`:"0.6.3"})
create (_56857:`FileNode` {`nID`:538, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.3"})
create (_56858:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:539, `name`:"ds", `order`:5, `version`:"0.6.3"})
create (_56859:`FileNode` {`nID`:540, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.3"})
create (_56860:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:541, `name`:"wat", `order`:6, `version`:"0.6.3"})
create (_56861:`FileNode` {`nID`:542, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.3"})
create (_56862:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:543, `name`:"taitale", `order`:7, `version`:"0.6.3"})
create (_56863:`FileNode` {`nID`:544, `name`:"ariane.community.core.mapping-0.6.3.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_56864:`FileNode` {`nID`:545, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.3.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_56865:`FileNode` {`nID`:546, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.3"})
create (_56866:`Module` {`nID`:547, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.3"})
create (_56867:`FileNode` {`nID`:548, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.3"})
create (_56868:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:549, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_56869:`FileNode` {`nID`:550, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.3"})
create (_56870:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:551, `name`:"wat", `order`:2, `version`:"0.6.3"})
create (_56871:`FileNode` {`nID`:552, `name`:"ariane.community.core.directory-0.6.3.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_56872:`FileNode` {`nID`:553, `name`:"net.echinopsii.ariane.community.core.directory_0.6.3.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_56873:`FileNode` {`nID`:554, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.3"})
create (_56874:`Module` {`nID`:555, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.3"})
create (_56875:`FileNode` {`nID`:556, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.3"})
create (_56876:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:557, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_56877:`FileNode` {`nID`:558, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.3"})
create (_56878:`Module` {`nID`:566, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.3"})
create (_56879:`FileNode` {`nID`:567, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.3"})
create (_56880:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:568, `name`:"directory", `order`:1, `version`:"0.2.3"})
create (_56881:`FileNode` {`nID`:569, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.3"})
create (_56882:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:570, `name`:"jsonparser", `order`:2, `version`:"0.2.3"})
create (_56883:`FileNode` {`nID`:571, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.3"})
create (_56884:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:572, `name`:"injector", `order`:3, `version`:"0.2.3"})
create (_56885:`FileNode` {`nID`:573, `name`:"ariane.community.plugin.rabbitmq-0.2.3.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.3"})
create (_56886:`FileNode` {`nID`:574, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.3.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.3"})
create (_56887:`FileNode` {`nID`:575, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.3"})
create (_56888:`FileNode` {`nID`:576, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.3"})
create (_56889:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:577, `name`:"rabbitmq", `version`:"0.2.3"})
create (_56890:`FileNode` {`nID`:578, `name`:"ariane.community.distrib-0.6.3.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.3"})
create (_56891:`FileNode` {`nID`:579, `name`:"pom-ariane.community.distrib-0.6.3.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.3"})
create (_56892:`FileNode` {`nID`:580, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.3"})
create (_56893:`FileNode` {`nID`:581, `name`:"ariane.community.plugins-distrib-0.6.3.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.3"})
create (_56894:`FileNode` {`nID`:582, `name`:"ariane.community.git.repos-0.6.3.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.3"})
create (_56895:`Distribution` {`editable`:"false", `nID`:583, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.6.3"})
create (_56896:`FileNode` {`nID`:668, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56897:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:669, `name`:"wresources", `order`:5, `version`:"0.7.0"})
create (_56898:`FileNode` {`nID`:670, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56899:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:671, `name`:"wab", `order`:4, `version`:"0.7.0"})
create (_56900:`FileNode` {`nID`:672, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56901:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:673, `name`:"idmwat", `order`:3, `version`:"0.7.0"})
create (_56902:`FileNode` {`nID`:674, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56903:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:675, `name`:"wat", `order`:2, `version`:"0.7.0"})
create (_56904:`FileNode` {`nID`:676, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56905:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:677, `name`:"base", `order`:1, `version`:"0.7.0"})
create (_56906:`FileNode` {`nID`:678, `name`:"net.echinopsii.ariane.community.core.portal_0.7.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_56907:`FileNode` {`nID`:679, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.7.0"})
create (_56908:`FileNode` {`nID`:680, `name`:"ariane.community.core.portal-0.7.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_56909:`Module` {`nID`:681, `name`:"portal", `order`:4, `type`:"core", `version`:"0.7.0"})
create (_56910:`Module` {`nID`:682, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2"})
create (_56911:`FileNode` {`nID`:683, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_56912:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:684, `name`:"base", `order`:1, `version`:"0.4.2"})
create (_56913:`FileNode` {`nID`:685, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2"})
create (_56914:`FileNode` {`nID`:686, `name`:"net.echinopsii.ariane.community.core.idm_0.4.2.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2"})
create (_56915:`FileNode` {`nID`:687, `name`:"ariane.community.core.idm-0.4.2.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2"})
create (_56916:`Module` {`nID`:688, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.7.0"})
create (_56917:`FileNode` {`nID`:689, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56918:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:690, `name`:"wat", `order`:3, `version`:"0.7.0"})
create (_56919:`FileNode` {`nID`:691, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56920:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:692, `name`:"base", `order`:1, `version`:"0.7.0"})
create (_56921:`FileNode` {`nID`:693, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56922:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:694, `name`:"messaging", `order`:2, `version`:"0.7.0"})
create (_56923:`FileNode` {`nID`:695, `name`:"ariane.community.core.injector-0.7.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_56924:`FileNode` {`nID`:696, `name`:"net.echinopsii.ariane.community.core.injector_0.7.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_56925:`FileNode` {`nID`:697, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.7.0"})
create (_56926:`Module` {`nID`:698, `name`:"injector", `order`:7, `type`:"core", `version`:"0.7.0"})
create (_56927:`Module` {`nID`:699, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_56928:`FileNode` {`nID`:700, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56929:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:701, `name`:"base", `order`:1, `version`:"0.7.0"})
create (_56930:`FileNode` {`nID`:702, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56931:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:703, `name`:"wat", `order`:2, `version`:"0.7.0"})
create (_56932:`FileNode` {`nID`:704, `name`:"net.echinopsii.ariane.community.core.directory_0.7.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_56933:`FileNode` {`nID`:705, `name`:"ariane.community.core.directory-0.7.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_56934:`FileNode` {`nID`:706, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.7.0"})
create (_56935:`Module` {`nID`:707, `name`:"directory", `order`:6, `type`:"core", `version`:"0.7.0"})
create (_56936:`FileNode` {`nID`:708, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56937:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:709, `name`:"taitale", `order`:6, `version`:"0.7.0"})
create (_56938:`FileNode` {`nID`:710, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56939:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:711, `name`:"wat", `order`:7, `version`:"0.7.0"})
create (_56940:`FileNode` {`nID`:712, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56941:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:713, `name`:"blueprints", `order`:2, `version`:"0.7.0"})
create (_56942:`FileNode` {`nID`:714, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56943:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:715, `name`:"rim", `order`:3, `version`:"0.7.0"})
create (_56944:`FileNode` {`nID`:716, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56945:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:717, `name`:"api", `order`:1, `version`:"0.7.0"})
create (_56946:`FileNode` {`nID`:718, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56947:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:719, `name`:"dsl", `order`:4, `version`:"0.7.0"})
create (_56948:`FileNode` {`nID`:720, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_56949:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:721, `name`:"ds", `order`:5, `version`:"0.7.0"})
create (_56950:`FileNode` {`nID`:722, `name`:"ariane.community.core.mapping-0.7.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_56951:`FileNode` {`nID`:723, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.7.0"})
create (_56952:`FileNode` {`nID`:724, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_56953:`Module` {`nID`:725, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.7.0"})
create (_56954:`FileNode` {`nID`:726, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.7.0"})
create (_56955:`Module` {`nID`:727, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.7.0"})
create (_56956:`FileNode` {`nID`:728, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_56957:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:729, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_56958:`FileNode` {`nID`:730, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_56959:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:731, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_56960:`FileNode` {`nID`:732, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_56961:`FileNode` {`nID`:733, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_56962:`FileNode` {`nID`:734, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_56963:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:559, `name`:"messaging", `order`:2, `version`:"0.6.3"})
create (_56964:`FileNode` {`nID`:560, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.3"})
create (_57148:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:561, `name`:"wat", `order`:3, `version`:"0.6.3"})
create (_57149:`FileNode` {`nID`:562, `name`:"ariane.community.core.injector-0.6.3.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_57150:`FileNode` {`nID`:563, `name`:"net.echinopsii.ariane.community.core.injector_0.6.3.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_57151:`FileNode` {`nID`:564, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.3"})
create (_57152:`Module` {`nID`:565, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.3"})
create (_57153:`FileNode` {`nID`:735, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_57154:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:736, `name`:"injector", `order`:3, `version`:"0.2.4"})
create (_57155:`FileNode` {`nID`:737, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_57156:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:738, `name`:"jsonparser", `order`:2, `version`:"0.2.4"})
create (_57157:`FileNode` {`nID`:739, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_57158:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:740, `name`:"directory", `order`:1, `version`:"0.2.4"})
create (_57159:`FileNode` {`nID`:741, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.4"})
create (_57160:`FileNode` {`nID`:742, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.4"})
create (_57161:`FileNode` {`nID`:743, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.4.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.4"})
create (_57162:`FileNode` {`nID`:744, `name`:"ariane.community.plugin.rabbitmq-0.2.4.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.4"})
create (_57163:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:745, `name`:"rabbitmq", `version`:"0.2.4"})
create (_57164:`FileNode` {`nID`:746, `name`:"ariane.community.distrib-0.7.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.4-SNAPSHOT"})
create (_57165:`FileNode` {`nID`:747, `name`:"ariane.community.git.repos-0.7.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.4-SNAPSHOT"})
create (_57166:`FileNode` {`nID`:748, `name`:"ariane.community.plugins-distrib-0.7.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.4-SNAPSHOT"})
create (_57167:`FileNode` {`nID`:749, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.4-SNAPSHOT"})
create (_57168:`FileNode` {`nID`:750, `name`:"pom-ariane.community.distrib-0.7.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.4-SNAPSHOT"})
create (_57169:`Distribution` {`editable`:"false", `nID`:751, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.7.0"})
create (_57170:`FileNode` {`nID`:752, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_57171:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:753, `name`:"api", `order`:1, `version`:"0.1.1-SNAPSHOT"})
create (_57172:`FileNode` {`nID`:754, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_57173:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:755, `name`:"rabbitmq", `order`:2, `version`:"0.1.1-SNAPSHOT"})
create (_57174:`FileNode` {`nID`:756, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_57175:`FileNode` {`nID`:757, `name`:"ariane.community.messaging-master.SNAPSHOT.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.1-SNAPSHOT"})
create (_57176:`FileNode` {`nID`:758, `name`:"net.echinopsii.ariane.community.messaging_master.SNAPSHOT.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.1-SNAPSHOT"})
create (_57177:`Module` {`nID`:759, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.1-SNAPSHOT"})
create (_57178:`FileNode` {`nID`:760, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.7.1-SNAPSHOT"})
create (_57179:`Module` {`nID`:761, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.7.1-SNAPSHOT"})
create (_57180:`FileNode` {`nID`:762, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_57181:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:763, `name`:"wat", `order`:7, `version`:"0.7.1-SNAPSHOT"})
create (_57182:`FileNode` {`nID`:764, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_57183:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:765, `name`:"taitale", `order`:6, `version`:"0.7.1-SNAPSHOT"})
create (_57184:`FileNode` {`nID`:766, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_57185:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:767, `name`:"dsl", `order`:4, `version`:"0.7.1-SNAPSHOT"})
create (_57186:`FileNode` {`nID`:768, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_57187:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:769, `name`:"api", `order`:1, `version`:"0.7.1-SNAPSHOT"})
create (_57188:`FileNode` {`nID`:770, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_57189:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:771, `name`:"rim", `order`:3, `version`:"0.7.1-SNAPSHOT"})
create (_57190:`FileNode` {`nID`:772, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_57191:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:773, `name`:"blueprints", `order`:2, `version`:"0.7.1-SNAPSHOT"})
create (_57192:`FileNode` {`nID`:774, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_57193:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:775, `name`:"ds", `order`:5, `version`:"0.7.1-SNAPSHOT"})
create (_57194:`FileNode` {`nID`:776, `name`:"net.echinopsii.ariane.community.core.mapping_master.SNAPSHOT.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1-SNAPSHOT"})
create (_57195:`FileNode` {`nID`:777, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.7.1-SNAPSHOT"})
create (_57196:`FileNode` {`nID`:778, `name`:"ariane.community.core.mapping-master.SNAPSHOT.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1-SNAPSHOT"})
create (_57197:`Module` {`nID`:779, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.7.1-SNAPSHOT"})
create (_57198:`Module` {`nID`:780, `name`:"portal", `order`:4, `type`:"core", `version`:"0.7.1-SNAPSHOT"})
create (_57199:`Module` {`nID`:781, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.3-SNAPSHOT"})
create (_57200:`FileNode` {`nID`:782, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_57201:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:783, `name`:"wat", `order`:2, `version`:"0.7.1-SNAPSHOT"})
create (_57202:`FileNode` {`nID`:784, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_57203:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:785, `name`:"base", `order`:1, `version`:"0.7.1-SNAPSHOT"})
create (_57204:`FileNode` {`nID`:786, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.7.1-SNAPSHOT"})
create (_57205:`FileNode` {`nID`:787, `name`:"ariane.community.core.directory-master.SNAPSHOT.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1-SNAPSHOT"})
create (_57206:`FileNode` {`nID`:788, `name`:"net.echinopsii.ariane.community.core.directory_master.SNAPSHOT.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1-SNAPSHOT"})
create (_57207:`Module` {`nID`:789, `name`:"directory", `order`:6, `type`:"core", `version`:"0.7.1-SNAPSHOT"})
create (_57208:`FileNode` {`nID`:790, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_57209:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:791, `name`:"messaging", `order`:2, `version`:"0.7.1-SNAPSHOT"})
create (_57210:`FileNode` {`nID`:792, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_57211:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:793, `name`:"base", `order`:1, `version`:"0.7.1-SNAPSHOT"})
create (_57212:`FileNode` {`nID`:794, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_57213:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:795, `name`:"wat", `order`:3, `version`:"0.7.1-SNAPSHOT"})
create (_57214:`FileNode` {`nID`:796, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.7.1-SNAPSHOT"})
create (_57215:`FileNode` {`nID`:797, `name`:"net.echinopsii.ariane.community.core.injector_master.SNAPSHOT.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1-SNAPSHOT"})
create (_57216:`FileNode` {`nID`:798, `name`:"ariane.community.core.injector-master.SNAPSHOT.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1-SNAPSHOT"})
create (_57217:`Module` {`nID`:799, `name`:"injector", `order`:7, `type`:"core", `version`:"0.7.1-SNAPSHOT"})
create (_57218:`Module` {`nID`:800, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.7.1-SNAPSHOT"})
create (_57219:`FileNode` {`nID`:801, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_57220:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:802, `name`:"base", `order`:1, `version`:"0.4.3-SNAPSHOT"})
create (_57221:`FileNode` {`nID`:803, `name`:"ariane.community.core.idm-master.SNAPSHOT.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.3-SNAPSHOT"})
create (_57222:`FileNode` {`nID`:804, `name`:"net.echinopsii.ariane.community.core.idm_master.SNAPSHOT.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.3-SNAPSHOT"})
create (_57223:`FileNode` {`nID`:805, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.3-SNAPSHOT"})
create (_57224:`FileNode` {`nID`:806, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_57225:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:807, `name`:"base", `order`:1, `version`:"0.7.1-SNAPSHOT"})
create (_57226:`FileNode` {`nID`:808, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_57227:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:809, `name`:"wat", `order`:2, `version`:"0.7.1-SNAPSHOT"})
create (_57228:`FileNode` {`nID`:810, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_57229:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:811, `name`:"idmwat", `order`:3, `version`:"0.7.1-SNAPSHOT"})
create (_57230:`FileNode` {`nID`:812, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_57231:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:813, `name`:"wab", `order`:4, `version`:"0.7.1-SNAPSHOT"})
create (_57232:`FileNode` {`nID`:814, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_57233:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:815, `name`:"wresources", `order`:5, `version`:"0.7.1-SNAPSHOT"})
create (_57234:`FileNode` {`nID`:816, `name`:"ariane.community.core.portal-master.SNAPSHOT.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1-SNAPSHOT"})
create (_57235:`FileNode` {`nID`:817, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.7.1-SNAPSHOT"})
create (_57236:`FileNode` {`nID`:818, `name`:"net.echinopsii.ariane.community.core.portal_master.SNAPSHOT.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1-SNAPSHOT"})
create (_57237:`FileNode` {`nID`:819, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_57238:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:820, `name`:"directory", `order`:1, `version`:"0.2.5-SNAPSHOT"})
create (_57499:`FileNode` {`nID`:821, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_57500:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:822, `name`:"jsonparser", `order`:2, `version`:"0.2.5-SNAPSHOT"})
create (_57501:`FileNode` {`nID`:823, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_57502:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:824, `name`:"injector", `order`:3, `version`:"0.2.5-SNAPSHOT"})
create (_57503:`FileNode` {`nID`:825, `name`:"ariane.community.plugin.rabbitmq-master.SNAPSHOT.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.5-SNAPSHOT"})
create (_57504:`FileNode` {`nID`:826, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_master.SNAPSHOT.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.5-SNAPSHOT"})
create (_57505:`FileNode` {`nID`:827, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.5-SNAPSHOT"})
create (_57506:`FileNode` {`nID`:828, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.5-SNAPSHOT"})
create (_57507:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:829, `name`:"rabbitmq", `version`:"0.2.5-SNAPSHOT"})
create (_57508:`FileNode` {`nID`:830, `name`:"pom-ariane.community.distrib-master.SNAPSHOT.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.4-SNAPSHOT"})
create (_57509:`FileNode` {`nID`:831, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.4-SNAPSHOT"})
create (_57510:`FileNode` {`nID`:832, `name`:"ariane.community.plugins-distrib-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.4-SNAPSHOT"})
create (_57511:`FileNode` {`nID`:833, `name`:"ariane.community.git.repos-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.4-SNAPSHOT"})
create (_57512:`FileNode` {`nID`:834, `name`:"ariane.community.distrib-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.4-SNAPSHOT"})
create (_57513:`Distribution` {`editable`:"true", `nID`:835, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.7.1-SNAPSHOT"})
create (_57514:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:836, `name`:"procos", `version`:"0.1.0"})
create (_57515:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:837, `name`:"procos", `version`:"0.1.1-b01"})
create (_57516:`FileNode` {`nID`:838, `name`:"net.echinopsii.ariane.community.messaging_0.1.1-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.1.1-SNAPSHOT"})
create (_57517:`FileNode` {`nID`:839, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.1-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1-SNAPSHOT"})
create (_57518:`FileNode` {`nID`:840, `name`:"net.echinopsii.ariane.community.core.injector_0.7.1-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1-SNAPSHOT"})
create (_57519:`FileNode` {`nID`:841, `name`:"net.echinopsii.ariane.community.core.portal_0.7.1-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1-SNAPSHOT"})
create (_57520:`FileNode` {`nID`:842, `name`:"net.echinopsii.ariane.community.core.directory_0.7.1-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1-SNAPSHOT"})
create (_57521:`FileNode` {`nID`:843, `name`:"net.echinopsii.ariane.community.core.idm_0.4.3-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.4.3-SNAPSHOT"})
create _56133-[:`CONTAINS`]->_56132
create _56133-[:`DEPENDS ON`]->_56194
create _56135-[:`CONTAINS`]->_56134
create _56139-[:`COMPOSED OF`]->_56135
create _56139-[:`CONTAINS`]->_56136
create _56139-[:`CONTAINS`]->_56138
create _56139-[:`CONTAINS`]->_56137
create _56139-[:`DEPENDS ON`]->_56194
create _56141-[:`CONTAINS`]->_56140
create _56143-[:`CONTAINS`]->_56142
create _56145-[:`CONTAINS`]->_56144
create _56147-[:`CONTAINS`]->_56146
create _56149-[:`CONTAINS`]->_56148
create _56153-[:`COMPOSED OF`]->_56147
create _56153-[:`COMPOSED OF`]->_56141
create _56153-[:`COMPOSED OF`]->_56149
create _56153-[:`COMPOSED OF`]->_56145
create _56153-[:`COMPOSED OF`]->_56143
create _56153-[:`CONTAINS`]->_56150
create _56153-[:`CONTAINS`]->_56152
create _56153-[:`CONTAINS`]->_56151
create _56153-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56139
create _56153-[:`DEPENDS ON`]->_56194
create _56155-[:`CONTAINS`]->_56154
create _56157-[:`CONTAINS`]->_56156
create _56159-[:`CONTAINS`]->_56158
create _56161-[:`CONTAINS`]->_56160
create _56163-[:`COMPOSED OF`]->_56157
create _56163-[:`COMPOSED OF`]->_56161
create _56163-[:`COMPOSED OF`]->_56155
create _56163-[:`COMPOSED OF`]->_56159
create _56163-[:`CONTAINS`]->_56162
create _56165-[:`CONTAINS`]->_56164
create _56167-[:`CONTAINS`]->_56166
create _56171-[:`COMPOSED OF`]->_56165
create _56171-[:`COMPOSED OF`]->_56167
create _56171-[:`COMPOSED OF`]->_56163
create _56171-[:`CONTAINS`]->_56169
create _56171-[:`CONTAINS`]->_56168
create _56171-[:`CONTAINS`]->_56170
create _56171-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56139
create _56171-[:`DEPENDS ON`]->_56194
create _56171-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_56153
create _56173-[:`CONTAINS`]->_56172
create _56175-[:`CONTAINS`]->_56174
create _56179-[:`COMPOSED OF`]->_56175
create _56179-[:`COMPOSED OF`]->_56173
create _56179-[:`CONTAINS`]->_56176
create _56179-[:`CONTAINS`]->_56178
create _56179-[:`CONTAINS`]->_56177
create _56179-[:`DEPENDS ON`]->_56194
create _56179-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_56153
create _56181-[:`CONTAINS`]->_56180
create _56183-[:`CONTAINS`]->_56182
create _56187-[:`COMPOSED OF`]->_56181
create _56187-[:`COMPOSED OF`]->_56183
create _56187-[:`CONTAINS`]->_56186
create _56187-[:`CONTAINS`]->_56185
create _56187-[:`CONTAINS`]->_56184
create _56187-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_56153
create _56187-[:`DEPENDS ON`]->_56194
create _56188-[:`DEPENDS ON`]->_56194
create _56194-[:`CONTAINS`]->_56193
create _56194-[:`CONTAINS`]->_56192
create _56194-[:`CONTAINS`]->_56191
create _56194-[:`CONTAINS`]->_56190
create _56194-[:`CONTAINS`]->_56189
create _56196-[:`CONTAINS`]->_56195
create _56196-[:`DEPENDS ON`]->_56257
create _56198-[:`CONTAINS`]->_56197
create _56202-[:`COMPOSED OF`]->_56198
create _56202-[:`CONTAINS`]->_56199
create _56202-[:`CONTAINS`]->_56201
create _56202-[:`CONTAINS`]->_56200
create _56202-[:`DEPENDS ON`]->_56257
create _56204-[:`CONTAINS`]->_56203
create _56206-[:`CONTAINS`]->_56205
create _56208-[:`CONTAINS`]->_56207
create _56210-[:`CONTAINS`]->_56209
create _56212-[:`CONTAINS`]->_56211
create _56216-[:`COMPOSED OF`]->_56204
create _56216-[:`COMPOSED OF`]->_56210
create _56216-[:`COMPOSED OF`]->_56206
create _56216-[:`COMPOSED OF`]->_56208
create _56216-[:`COMPOSED OF`]->_56212
create _56216-[:`CONTAINS`]->_56215
create _56216-[:`CONTAINS`]->_56214
create _56216-[:`CONTAINS`]->_56213
create _56216-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56202
create _56216-[:`DEPENDS ON`]->_56257
create _56218-[:`CONTAINS`]->_56217
create _56220-[:`CONTAINS`]->_56219
create _56222-[:`CONTAINS`]->_56221
create _56224-[:`CONTAINS`]->_56223
create _56226-[:`COMPOSED OF`]->_56220
create _56226-[:`COMPOSED OF`]->_56218
create _56226-[:`COMPOSED OF`]->_56224
create _56226-[:`COMPOSED OF`]->_56222
create _56226-[:`CONTAINS`]->_56225
create _56228-[:`CONTAINS`]->_56227
create _56230-[:`CONTAINS`]->_56229
create _56234-[:`COMPOSED OF`]->_56226
create _56234-[:`COMPOSED OF`]->_56230
create _56234-[:`COMPOSED OF`]->_56228
create _56234-[:`CONTAINS`]->_56232
create _56234-[:`CONTAINS`]->_56231
create _56234-[:`CONTAINS`]->_56233
create _56234-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56202
create _56234-[:`DEPENDS ON`]->_56257
create _56234-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_56216
create _56236-[:`CONTAINS`]->_56235
create _56238-[:`CONTAINS`]->_56237
create _56242-[:`COMPOSED OF`]->_56238
create _56242-[:`COMPOSED OF`]->_56236
create _56242-[:`CONTAINS`]->_56241
create _56242-[:`CONTAINS`]->_56240
create _56242-[:`CONTAINS`]->_56239
create _56242-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_56216
create _56242-[:`DEPENDS ON`]->_56257
create _56244-[:`CONTAINS`]->_56243
create _56246-[:`CONTAINS`]->_56245
create _56250-[:`COMPOSED OF`]->_56246
create _56250-[:`COMPOSED OF`]->_56244
create _56250-[:`CONTAINS`]->_56248
create _56250-[:`CONTAINS`]->_56249
create _56250-[:`CONTAINS`]->_56247
create _56250-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_56216
create _56250-[:`DEPENDS ON`]->_56257
create _56251-[:`DEPENDS ON`]->_56257
create _56257-[:`CONTAINS`]->_56256
create _56257-[:`CONTAINS`]->_56253
create _56257-[:`CONTAINS`]->_56254
create _56257-[:`CONTAINS`]->_56252
create _56257-[:`CONTAINS`]->_56255
create _56259-[:`CONTAINS`]->_56258
create _56259-[:`DEPENDS ON`]->_56320
create _56261-[:`CONTAINS`]->_56260
create _56265-[:`COMPOSED OF`]->_56261
create _56265-[:`CONTAINS`]->_56264
create _56265-[:`CONTAINS`]->_56262
create _56265-[:`CONTAINS`]->_56263
create _56265-[:`DEPENDS ON`]->_56320
create _56267-[:`CONTAINS`]->_56266
create _56269-[:`CONTAINS`]->_56268
create _56271-[:`CONTAINS`]->_56270
create _56273-[:`CONTAINS`]->_56272
create _56275-[:`CONTAINS`]->_56274
create _56279-[:`COMPOSED OF`]->_56271
create _56279-[:`COMPOSED OF`]->_56273
create _56279-[:`COMPOSED OF`]->_56269
create _56279-[:`COMPOSED OF`]->_56267
create _56279-[:`COMPOSED OF`]->_56275
create _56279-[:`CONTAINS`]->_56276
create _56279-[:`CONTAINS`]->_56277
create _56279-[:`CONTAINS`]->_56278
create _56279-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56265
create _56279-[:`DEPENDS ON`]->_56320
create _56281-[:`CONTAINS`]->_56280
create _56283-[:`CONTAINS`]->_56282
create _56285-[:`CONTAINS`]->_56284
create _56287-[:`CONTAINS`]->_56286
create _56289-[:`COMPOSED OF`]->_56285
create _56289-[:`COMPOSED OF`]->_56281
create _56289-[:`COMPOSED OF`]->_56287
create _56289-[:`COMPOSED OF`]->_56283
create _56289-[:`CONTAINS`]->_56288
create _56291-[:`CONTAINS`]->_56290
create _56293-[:`CONTAINS`]->_56292
create _56297-[:`COMPOSED OF`]->_56289
create _56297-[:`COMPOSED OF`]->_56291
create _56297-[:`COMPOSED OF`]->_56293
create _56297-[:`CONTAINS`]->_56295
create _56297-[:`CONTAINS`]->_56294
create _56297-[:`CONTAINS`]->_56296
create _56297-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56265
create _56297-[:`DEPENDS ON`]->_56320
create _56297-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_56279
create _56299-[:`CONTAINS`]->_56298
create _56301-[:`CONTAINS`]->_56300
create _56305-[:`COMPOSED OF`]->_56299
create _56305-[:`COMPOSED OF`]->_56301
create _56305-[:`CONTAINS`]->_56302
create _56305-[:`CONTAINS`]->_56303
create _56305-[:`CONTAINS`]->_56304
create _56305-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_56279
create _56305-[:`DEPENDS ON`]->_56320
create _56307-[:`CONTAINS`]->_56306
create _56309-[:`CONTAINS`]->_56308
create _56313-[:`COMPOSED OF`]->_56307
create _56313-[:`COMPOSED OF`]->_56309
create _56313-[:`CONTAINS`]->_56310
create _56313-[:`CONTAINS`]->_56311
create _56313-[:`CONTAINS`]->_56312
create _56313-[:`DEPENDS ON`]->_56320
create _56313-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_56279
create _56314-[:`DEPENDS ON`]->_56320
create _56320-[:`CONTAINS`]->_56319
create _56320-[:`CONTAINS`]->_56317
create _56320-[:`CONTAINS`]->_56318
create _56320-[:`CONTAINS`]->_56316
create _56320-[:`CONTAINS`]->_56315
create _56322-[:`CONTAINS`]->_56321
create _56322-[:`DEPENDS ON`]->_56394
create _56324-[:`CONTAINS`]->_56323
create _56328-[:`COMPOSED OF`]->_56324
create _56328-[:`CONTAINS`]->_56325
create _56328-[:`CONTAINS`]->_56327
create _56328-[:`CONTAINS`]->_56326
create _56328-[:`DEPENDS ON`]->_56394
create _56330-[:`CONTAINS`]->_56329
create _56332-[:`CONTAINS`]->_56331
create _56334-[:`CONTAINS`]->_56333
create _56336-[:`CONTAINS`]->_56335
create _56338-[:`CONTAINS`]->_56337
create _56342-[:`COMPOSED OF`]->_56338
create _56342-[:`COMPOSED OF`]->_56332
create _56342-[:`COMPOSED OF`]->_56330
create _56342-[:`COMPOSED OF`]->_56334
create _56342-[:`COMPOSED OF`]->_56336
create _56342-[:`CONTAINS`]->_56340
create _56342-[:`CONTAINS`]->_56339
create _56342-[:`CONTAINS`]->_56341
create _56342-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56328
create _56342-[:`DEPENDS ON`]->_56394
create _56344-[:`CONTAINS`]->_56343
create _56346-[:`CONTAINS`]->_56345
create _56348-[:`CONTAINS`]->_56347
create _56350-[:`CONTAINS`]->_56349
create _56352-[:`COMPOSED OF`]->_56344
create _56352-[:`COMPOSED OF`]->_56350
create _56352-[:`COMPOSED OF`]->_56346
create _56352-[:`COMPOSED OF`]->_56348
create _56352-[:`CONTAINS`]->_56351
create _56354-[:`CONTAINS`]->_56353
create _56356-[:`CONTAINS`]->_56355
create _56360-[:`COMPOSED OF`]->_56352
create _56360-[:`COMPOSED OF`]->_56356
create _56360-[:`COMPOSED OF`]->_56354
create _56360-[:`CONTAINS`]->_56358
create _56360-[:`CONTAINS`]->_56359
create _56360-[:`CONTAINS`]->_56357
create _56360-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_56342
create _56360-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56328
create _56360-[:`DEPENDS ON`]->_56394
create _56362-[:`CONTAINS`]->_56361
create _56364-[:`CONTAINS`]->_56363
create _56368-[:`COMPOSED OF`]->_56362
create _56368-[:`COMPOSED OF`]->_56364
create _56368-[:`CONTAINS`]->_56366
create _56368-[:`CONTAINS`]->_56367
create _56368-[:`CONTAINS`]->_56365
create _56368-[:`DEPENDS ON`]->_56394
create _56368-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_56342
create _56370-[:`CONTAINS`]->_56369
create _56372-[:`CONTAINS`]->_56371
create _56376-[:`COMPOSED OF`]->_56370
create _56376-[:`COMPOSED OF`]->_56372
create _56376-[:`CONTAINS`]->_56374
create _56376-[:`CONTAINS`]->_56373
create _56376-[:`CONTAINS`]->_56375
create _56376-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_56342
create _56376-[:`DEPENDS ON`]->_56394
create _56377-[:`DEPENDS ON`]->_56394
create _56379-[:`CONTAINS`]->_56378
create _56381-[:`CONTAINS`]->_56380
create _56383-[:`CONTAINS`]->_56382
create _56388-[:`COMPOSED OF`]->_56383
create _56388-[:`COMPOSED OF`]->_56381
create _56388-[:`COMPOSED OF`]->_56379
create _56388-[:`CONTAINS`]->_56385
create _56388-[:`CONTAINS`]->_56386
create _56388-[:`CONTAINS`]->_56387
create _56388-[:`CONTAINS`]->_56384
create _56388-[:`COMPATIBLE WITH`]->_56394
create _56388-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_56342
create _56388-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_56376
create _56388-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_56368
create _56388-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_56360
create _56394-[:`CONTAINS`]->_56389
create _56394-[:`CONTAINS`]->_56391
create _56394-[:`CONTAINS`]->_56392
create _56394-[:`CONTAINS`]->_56393
create _56394-[:`CONTAINS`]->_56390
create _56396-[:`CONTAINS`]->_56395
create _56396-[:`DEPENDS ON`]->_56561
create _56398-[:`CONTAINS`]->_56397
create _56402-[:`COMPOSED OF`]->_56398
create _56402-[:`CONTAINS`]->_56400
create _56402-[:`CONTAINS`]->_56401
create _56402-[:`CONTAINS`]->_56399
create _56402-[:`DEPENDS ON`]->_56561
create _56404-[:`CONTAINS`]->_56403
create _56406-[:`CONTAINS`]->_56405
create _56408-[:`CONTAINS`]->_56407
create _56410-[:`CONTAINS`]->_56409
create _56412-[:`CONTAINS`]->_56411
create _56416-[:`COMPOSED OF`]->_56408
create _56416-[:`COMPOSED OF`]->_56406
create _56416-[:`COMPOSED OF`]->_56404
create _56416-[:`COMPOSED OF`]->_56410
create _56416-[:`COMPOSED OF`]->_56412
create _56416-[:`CONTAINS`]->_56413
create _56416-[:`CONTAINS`]->_56415
create _56416-[:`CONTAINS`]->_56414
create _56416-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56402
create _56416-[:`DEPENDS ON`]->_56561
create _56418-[:`CONTAINS`]->_56417
create _56420-[:`CONTAINS`]->_56419
create _56422-[:`CONTAINS`]->_56421
create _56424-[:`CONTAINS`]->_56423
create _56426-[:`COMPOSED OF`]->_56422
create _56426-[:`COMPOSED OF`]->_56418
create _56426-[:`COMPOSED OF`]->_56420
create _56426-[:`COMPOSED OF`]->_56424
create _56426-[:`CONTAINS`]->_56425
create _56428-[:`CONTAINS`]->_56427
create _56430-[:`CONTAINS`]->_56429
create _56434-[:`COMPOSED OF`]->_56430
create _56434-[:`COMPOSED OF`]->_56428
create _56434-[:`COMPOSED OF`]->_56426
create _56434-[:`CONTAINS`]->_56432
create _56434-[:`CONTAINS`]->_56431
create _56434-[:`CONTAINS`]->_56433
create _56434-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56416
create _56434-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56402
create _56434-[:`DEPENDS ON`]->_56561
create _56436-[:`CONTAINS`]->_56435
create _56438-[:`CONTAINS`]->_56437
create _56442-[:`COMPOSED OF`]->_56438
create _56442-[:`COMPOSED OF`]->_56436
create _56442-[:`CONTAINS`]->_56441
create _56442-[:`CONTAINS`]->_56440
create _56442-[:`CONTAINS`]->_56439
create _56442-[:`DEPENDS ON`]->_56561
create _56442-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56416
create _56444-[:`CONTAINS`]->_56443
create _56446-[:`CONTAINS`]->_56445
create _56448-[:`CONTAINS`]->_56447
create _56452-[:`COMPOSED OF`]->_56444
create _56452-[:`COMPOSED OF`]->_56448
create _56452-[:`COMPOSED OF`]->_56446
create _56452-[:`CONTAINS`]->_56451
create _56452-[:`CONTAINS`]->_56450
create _56452-[:`CONTAINS`]->_56449
create _56452-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56416
create _56452-[:`DEPENDS ON`]->_56561
create _56453-[:`DEPENDS ON`]->_56561
create _56455-[:`CONTAINS`]->_56454
create _56457-[:`CONTAINS`]->_56456
create _56459-[:`CONTAINS`]->_56458
create _56555-[:`COMPOSED OF`]->_56455
create _56555-[:`COMPOSED OF`]->_56457
create _56555-[:`COMPOSED OF`]->_56459
create _56555-[:`CONTAINS`]->_56554
create _56555-[:`CONTAINS`]->_56460
create _56555-[:`CONTAINS`]->_56553
create _56555-[:`CONTAINS`]->_56545
create _56555-[:`COMPATIBLE WITH` {`version_max`:"0.2.1", `version_min`:"0.2.0"}]->_56561
create _56555-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56434
create _56555-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56416
create _56555-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56452
create _56555-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56442
create _56561-[:`CONTAINS`]->_56560
create _56561-[:`CONTAINS`]->_56556
create _56561-[:`CONTAINS`]->_56557
create _56561-[:`CONTAINS`]->_56558
create _56561-[:`CONTAINS`]->_56559
create _56563-[:`CONTAINS`]->_56562
create _56563-[:`DEPENDS ON`]->_56637
create _56565-[:`CONTAINS`]->_56564
create _56569-[:`COMPOSED OF`]->_56565
create _56569-[:`CONTAINS`]->_56568
create _56569-[:`CONTAINS`]->_56566
create _56569-[:`CONTAINS`]->_56567
create _56569-[:`DEPENDS ON`]->_56637
create _56571-[:`CONTAINS`]->_56570
create _56573-[:`CONTAINS`]->_56572
create _56575-[:`CONTAINS`]->_56574
create _56577-[:`CONTAINS`]->_56576
create _56579-[:`CONTAINS`]->_56578
create _56583-[:`COMPOSED OF`]->_56573
create _56583-[:`COMPOSED OF`]->_56577
create _56583-[:`COMPOSED OF`]->_56579
create _56583-[:`COMPOSED OF`]->_56571
create _56583-[:`COMPOSED OF`]->_56575
create _56583-[:`CONTAINS`]->_56582
create _56583-[:`CONTAINS`]->_56581
create _56583-[:`CONTAINS`]->_56580
create _56583-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56569
create _56583-[:`DEPENDS ON`]->_56637
create _56585-[:`CONTAINS`]->_56584
create _56587-[:`CONTAINS`]->_56586
create _56589-[:`CONTAINS`]->_56588
create _56591-[:`CONTAINS`]->_56590
create _56593-[:`COMPOSED OF`]->_56585
create _56593-[:`COMPOSED OF`]->_56591
create _56593-[:`COMPOSED OF`]->_56589
create _56593-[:`COMPOSED OF`]->_56587
create _56593-[:`CONTAINS`]->_56592
create _56595-[:`CONTAINS`]->_56594
create _56597-[:`CONTAINS`]->_56596
create _56601-[:`COMPOSED OF`]->_56593
create _56601-[:`COMPOSED OF`]->_56597
create _56601-[:`COMPOSED OF`]->_56595
create _56601-[:`CONTAINS`]->_56598
create _56601-[:`CONTAINS`]->_56599
create _56601-[:`CONTAINS`]->_56600
create _56601-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56583
create _56601-[:`DEPENDS ON`]->_56637
create _56601-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56569
create _56603-[:`CONTAINS`]->_56602
create _56605-[:`CONTAINS`]->_56604
create _56609-[:`COMPOSED OF`]->_56605
create _56609-[:`COMPOSED OF`]->_56603
create _56609-[:`CONTAINS`]->_56608
create _56609-[:`CONTAINS`]->_56607
create _56609-[:`CONTAINS`]->_56606
create _56609-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56583
create _56609-[:`DEPENDS ON`]->_56637
create _56611-[:`CONTAINS`]->_56610
create _56613-[:`CONTAINS`]->_56612
create _56615-[:`CONTAINS`]->_56614
create _56619-[:`COMPOSED OF`]->_56613
create _56619-[:`COMPOSED OF`]->_56611
create _56619-[:`COMPOSED OF`]->_56615
create _56619-[:`CONTAINS`]->_56616
create _56619-[:`CONTAINS`]->_56618
create _56619-[:`CONTAINS`]->_56617
create _56619-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56583
create _56619-[:`DEPENDS ON`]->_56637
create _56620-[:`DEPENDS ON`]->_56637
create _56622-[:`CONTAINS`]->_56621
create _56624-[:`CONTAINS`]->_56623
create _56626-[:`CONTAINS`]->_56625
create _56631-[:`COMPOSED OF`]->_56622
create _56631-[:`COMPOSED OF`]->_56626
create _56631-[:`COMPOSED OF`]->_56624
create _56631-[:`CONTAINS`]->_56629
create _56631-[:`CONTAINS`]->_56628
create _56631-[:`CONTAINS`]->_56627
create _56631-[:`CONTAINS`]->_56630
create _56631-[:`COMPATIBLE WITH`]->_56637
create _56631-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56619
create _56631-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56601
create _56631-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56609
create _56631-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56583
create _56637-[:`CONTAINS`]->_56634
create _56637-[:`CONTAINS`]->_56635
create _56637-[:`CONTAINS`]->_56633
create _56637-[:`CONTAINS`]->_56636
create _56637-[:`CONTAINS`]->_56632
create _56639-[:`CONTAINS`]->_56638
create _56639-[:`DEPENDS ON`]->_56815
create _56641-[:`CONTAINS`]->_56640
create _56643-[:`CONTAINS`]->_56642
create _56741-[:`COMPOSED OF`]->_56641
create _56741-[:`COMPOSED OF`]->_56643
create _56741-[:`CONTAINS`]->_56740
create _56741-[:`CONTAINS`]->_56738
create _56741-[:`CONTAINS`]->_56739
create _56741-[:`DEPENDS ON`]->_56815
create _56741-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56742
create _56742-[:`COMPOSED OF`]->_56754
create _56742-[:`COMPOSED OF`]->_56750
create _56742-[:`COMPOSED OF`]->_56752
create _56742-[:`COMPOSED OF`]->_56756
create _56742-[:`COMPOSED OF`]->_56758
create _56742-[:`CONTAINS`]->_56760
create _56742-[:`CONTAINS`]->_56761
create _56742-[:`CONTAINS`]->_56759
create _56742-[:`DEPENDS ON`]->_56815
create _56742-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56748
create _56744-[:`CONTAINS`]->_56743
create _56748-[:`COMPOSED OF`]->_56744
create _56748-[:`CONTAINS`]->_56746
create _56748-[:`CONTAINS`]->_56747
create _56748-[:`CONTAINS`]->_56745
create _56748-[:`DEPENDS ON`]->_56815
create _56750-[:`CONTAINS`]->_56749
create _56752-[:`CONTAINS`]->_56751
create _56754-[:`CONTAINS`]->_56753
create _56756-[:`CONTAINS`]->_56755
create _56758-[:`CONTAINS`]->_56757
create _56763-[:`CONTAINS`]->_56762
create _56765-[:`CONTAINS`]->_56764
create _56767-[:`CONTAINS`]->_56766
create _56769-[:`CONTAINS`]->_56768
create _56771-[:`COMPOSED OF`]->_56767
create _56771-[:`COMPOSED OF`]->_56765
create _56771-[:`COMPOSED OF`]->_56763
create _56771-[:`COMPOSED OF`]->_56769
create _56771-[:`CONTAINS`]->_56770
create _56773-[:`CONTAINS`]->_56772
create _56775-[:`CONTAINS`]->_56774
create _56779-[:`COMPOSED OF`]->_56773
create _56779-[:`COMPOSED OF`]->_56775
create _56779-[:`COMPOSED OF`]->_56771
create _56779-[:`CONTAINS`]->_56778
create _56779-[:`CONTAINS`]->_56777
create _56779-[:`CONTAINS`]->_56776
create _56779-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56748
create _56779-[:`DEPENDS ON`]->_56815
create _56779-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56742
create _56781-[:`CONTAINS`]->_56780
create _56783-[:`CONTAINS`]->_56782
create _56787-[:`COMPOSED OF`]->_56783
create _56787-[:`COMPOSED OF`]->_56781
create _56787-[:`CONTAINS`]->_56786
create _56787-[:`CONTAINS`]->_56784
create _56787-[:`CONTAINS`]->_56785
create _56787-[:`DEPENDS ON`]->_56815
create _56787-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56742
create _56789-[:`CONTAINS`]->_56788
create _56791-[:`CONTAINS`]->_56790
create _56793-[:`CONTAINS`]->_56792
create _56797-[:`COMPOSED OF`]->_56789
create _56797-[:`COMPOSED OF`]->_56791
create _56797-[:`COMPOSED OF`]->_56793
create _56797-[:`CONTAINS`]->_56796
create _56797-[:`CONTAINS`]->_56795
create _56797-[:`CONTAINS`]->_56794
create _56797-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_56741
create _56797-[:`DEPENDS ON`]->_56815
create _56797-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56742
create _56798-[:`DEPENDS ON`]->_56815
create _56800-[:`CONTAINS`]->_56799
create _56802-[:`CONTAINS`]->_56801
create _56804-[:`CONTAINS`]->_56803
create _56809-[:`COMPOSED OF`]->_56802
create _56809-[:`COMPOSED OF`]->_56804
create _56809-[:`COMPOSED OF`]->_56800
create _56809-[:`CONTAINS`]->_56806
create _56809-[:`CONTAINS`]->_56805
create _56809-[:`CONTAINS`]->_56808
create _56809-[:`CONTAINS`]->_56807
create _56809-[:`COMPATIBLE WITH`]->_56815
create _56809-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56742
create _56809-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56779
create _56809-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56797
create _56809-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56787
create _56815-[:`CONTAINS`]->_56811
create _56815-[:`CONTAINS`]->_56812
create _56815-[:`CONTAINS`]->_56814
create _56815-[:`CONTAINS`]->_56813
create _56815-[:`CONTAINS`]->_56810
create _56817-[:`CONTAINS`]->_56816
create _56817-[:`DEPENDS ON`]->_56895
create _56819-[:`CONTAINS`]->_56818
create _56821-[:`CONTAINS`]->_56820
create _56825-[:`COMPOSED OF`]->_56819
create _56825-[:`COMPOSED OF`]->_56821
create _56825-[:`CONTAINS`]->_56823
create _56825-[:`CONTAINS`]->_56822
create _56825-[:`CONTAINS`]->_56824
create _56825-[:`DEPENDS ON`]->_56895
create _56825-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56826
create _56826-[:`COMPOSED OF`]->_56839
create _56826-[:`COMPOSED OF`]->_56841
create _56826-[:`COMPOSED OF`]->_56843
create _56826-[:`COMPOSED OF`]->_56837
create _56826-[:`COMPOSED OF`]->_56845
create _56826-[:`CONTAINS`]->_56846
create _56826-[:`CONTAINS`]->_56847
create _56826-[:`CONTAINS`]->_56848
create _56826-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56835
create _56826-[:`DEPENDS ON`]->_56895
create _56828-[:`CONTAINS`]->_56827
create _56835-[:`COMPOSED OF`]->_56828
create _56835-[:`CONTAINS`]->_56833
create _56835-[:`CONTAINS`]->_56832
create _56835-[:`CONTAINS`]->_56834
create _56835-[:`DEPENDS ON`]->_56895
create _56837-[:`CONTAINS`]->_56836
create _56839-[:`CONTAINS`]->_56838
create _56841-[:`CONTAINS`]->_56840
create _56843-[:`CONTAINS`]->_56842
create _56845-[:`CONTAINS`]->_56844
create _56850-[:`CONTAINS`]->_56849
create _56852-[:`CONTAINS`]->_56851
create _56854-[:`CONTAINS`]->_56853
create _56856-[:`CONTAINS`]->_56855
create _56858-[:`COMPOSED OF`]->_56854
create _56858-[:`COMPOSED OF`]->_56852
create _56858-[:`COMPOSED OF`]->_56850
create _56858-[:`COMPOSED OF`]->_56856
create _56858-[:`CONTAINS`]->_56857
create _56860-[:`CONTAINS`]->_56859
create _56862-[:`CONTAINS`]->_56861
create _56866-[:`COMPOSED OF`]->_56862
create _56866-[:`COMPOSED OF`]->_56860
create _56866-[:`COMPOSED OF`]->_56858
create _56866-[:`CONTAINS`]->_56863
create _56866-[:`CONTAINS`]->_56864
create _56866-[:`CONTAINS`]->_56865
create _56866-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56835
create _56866-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56826
create _56866-[:`DEPENDS ON`]->_56895
create _56868-[:`CONTAINS`]->_56867
create _56870-[:`CONTAINS`]->_56869
create _56874-[:`COMPOSED OF`]->_56870
create _56874-[:`COMPOSED OF`]->_56868
create _56874-[:`CONTAINS`]->_56873
create _56874-[:`CONTAINS`]->_56872
create _56874-[:`CONTAINS`]->_56871
create _56874-[:`DEPENDS ON`]->_56895
create _56874-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56826
create _56876-[:`CONTAINS`]->_56875
create _56878-[:`DEPENDS ON`]->_56895
create _56880-[:`CONTAINS`]->_56879
create _56882-[:`CONTAINS`]->_56881
create _56884-[:`CONTAINS`]->_56883
create _56889-[:`COMPOSED OF`]->_56884
create _56889-[:`COMPOSED OF`]->_56882
create _56889-[:`COMPOSED OF`]->_56880
create _56889-[:`CONTAINS`]->_56888
create _56889-[:`CONTAINS`]->_56886
create _56889-[:`CONTAINS`]->_56885
create _56889-[:`CONTAINS`]->_56887
create _56889-[:`COMPATIBLE WITH`]->_56895
create _56889-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56866
create _56889-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56826
create _56889-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_57152
create _56889-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56874
create _56895-[:`CONTAINS`]->_56893
create _56895-[:`CONTAINS`]->_56894
create _56895-[:`CONTAINS`]->_56892
create _56895-[:`CONTAINS`]->_56891
create _56895-[:`CONTAINS`]->_56890
create _56897-[:`CONTAINS`]->_56896
create _56899-[:`CONTAINS`]->_56898
create _56901-[:`CONTAINS`]->_56900
create _56903-[:`CONTAINS`]->_56902
create _56905-[:`CONTAINS`]->_56904
create _56909-[:`COMPOSED OF`]->_56901
create _56909-[:`COMPOSED OF`]->_56899
create _56909-[:`COMPOSED OF`]->_56905
create _56909-[:`COMPOSED OF`]->_56903
create _56909-[:`COMPOSED OF`]->_56897
create _56909-[:`CONTAINS`]->_56907
create _56909-[:`CONTAINS`]->_56908
create _56909-[:`CONTAINS`]->_56906
create _56909-[:`DEPENDS ON`]->_57169
create _56909-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56910
create _56910-[:`COMPOSED OF`]->_56912
create _56910-[:`CONTAINS`]->_56915
create _56910-[:`CONTAINS`]->_56914
create _56910-[:`CONTAINS`]->_56913
create _56910-[:`DEPENDS ON`]->_57169
create _56912-[:`CONTAINS`]->_56911
create _56916-[:`DEPENDS ON`]->_57169
create _56918-[:`CONTAINS`]->_56917
create _56920-[:`CONTAINS`]->_56919
create _56922-[:`CONTAINS`]->_56921
create _56926-[:`COMPOSED OF`]->_56920
create _56926-[:`COMPOSED OF`]->_56918
create _56926-[:`COMPOSED OF`]->_56922
create _56926-[:`CONTAINS`]->_56924
create _56926-[:`CONTAINS`]->_56923
create _56926-[:`CONTAINS`]->_56925
create _56926-[:`DEPENDS ON`]->_57169
create _56926-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_56909
create _56926-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_56927
create _56927-[:`COMPOSED OF`]->_56959
create _56927-[:`COMPOSED OF`]->_56957
create _56927-[:`CONTAINS`]->_56960
create _56927-[:`CONTAINS`]->_56961
create _56927-[:`CONTAINS`]->_56962
create _56927-[:`DEPENDS ON`]->_57169
create _56929-[:`CONTAINS`]->_56928
create _56931-[:`CONTAINS`]->_56930
create _56935-[:`COMPOSED OF`]->_56929
create _56935-[:`COMPOSED OF`]->_56931
create _56935-[:`CONTAINS`]->_56932
create _56935-[:`CONTAINS`]->_56933
create _56935-[:`CONTAINS`]->_56934
create _56935-[:`DEPENDS ON`]->_57169
create _56935-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_56909
create _56937-[:`CONTAINS`]->_56936
create _56939-[:`CONTAINS`]->_56938
create _56941-[:`CONTAINS`]->_56940
create _56943-[:`CONTAINS`]->_56942
create _56945-[:`CONTAINS`]->_56944
create _56947-[:`CONTAINS`]->_56946
create _56949-[:`COMPOSED OF`]->_56945
create _56949-[:`COMPOSED OF`]->_56947
create _56949-[:`COMPOSED OF`]->_56943
create _56949-[:`COMPOSED OF`]->_56941
create _56949-[:`CONTAINS`]->_56948
create _56953-[:`COMPOSED OF`]->_56949
create _56953-[:`COMPOSED OF`]->_56939
create _56953-[:`COMPOSED OF`]->_56937
create _56953-[:`CONTAINS`]->_56951
create _56953-[:`CONTAINS`]->_56952
create _56953-[:`CONTAINS`]->_56950
create _56953-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_56910
create _56953-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_56909
create _56953-[:`DEPENDS ON`]->_57169
create _56955-[:`CONTAINS`]->_56954
create _56955-[:`DEPENDS ON`]->_57169
create _56957-[:`CONTAINS`]->_56956
create _56959-[:`CONTAINS`]->_56958
create _56963-[:`CONTAINS`]->_56877
create _57148-[:`CONTAINS`]->_56964
create _57152-[:`COMPOSED OF`]->_56963
create _57152-[:`COMPOSED OF`]->_56876
create _57152-[:`COMPOSED OF`]->_57148
create _57152-[:`CONTAINS`]->_57151
create _57152-[:`CONTAINS`]->_57149
create _57152-[:`CONTAINS`]->_57150
create _57152-[:`DEPENDS ON`]->_56895
create _57152-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_56825
create _57152-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_56826
create _57154-[:`CONTAINS`]->_57153
create _57156-[:`CONTAINS`]->_57155
create _57158-[:`CONTAINS`]->_57157
create _57163-[:`COMPOSED OF`]->_57156
create _57163-[:`COMPOSED OF`]->_57154
create _57163-[:`COMPOSED OF`]->_57158
create _57163-[:`CONTAINS`]->_57161
create _57163-[:`CONTAINS`]->_57160
create _57163-[:`CONTAINS`]->_57159
create _57163-[:`CONTAINS`]->_57162
create _57163-[:`COMPATIBLE WITH`]->_57169
create _57163-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_56953
create _57163-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_56935
create _57163-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_56926
create _57163-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_56909
create _57169-[:`CONTAINS`]->_57165
create _57169-[:`CONTAINS`]->_57166
create _57169-[:`CONTAINS`]->_57164
create _57169-[:`CONTAINS`]->_57167
create _57169-[:`CONTAINS`]->_57168
create _57171-[:`CONTAINS`]->_57170
create _57173-[:`CONTAINS`]->_57172
create _57177-[:`COMPOSED OF`]->_57173
create _57177-[:`COMPOSED OF`]->_57171
create _57177-[:`CONTAINS`]->_57174
create _57177-[:`CONTAINS`]->_57176
create _57177-[:`CONTAINS`]->_57175
create _57177-[:`DEPENDS ON`]->_57513
create _57179-[:`CONTAINS`]->_57178
create _57179-[:`DEPENDS ON`]->_57513
create _57181-[:`CONTAINS`]->_57180
create _57183-[:`CONTAINS`]->_57182
create _57185-[:`CONTAINS`]->_57184
create _57187-[:`CONTAINS`]->_57186
create _57189-[:`CONTAINS`]->_57188
create _57191-[:`CONTAINS`]->_57190
create _57193-[:`COMPOSED OF`]->_57189
create _57193-[:`COMPOSED OF`]->_57187
create _57193-[:`COMPOSED OF`]->_57185
create _57193-[:`COMPOSED OF`]->_57191
create _57193-[:`CONTAINS`]->_57192
create _57197-[:`COMPOSED OF`]->_57193
create _57197-[:`COMPOSED OF`]->_57181
create _57197-[:`COMPOSED OF`]->_57183
create _57197-[:`CONTAINS`]->_57196
create _57197-[:`CONTAINS`]->_57194
create _57197-[:`CONTAINS`]->_57195
create _57197-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_57199
create _57197-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_57198
create _57197-[:`DEPENDS ON`]->_57513
create _57198-[:`COMPOSED OF`]->_57225
create _57198-[:`COMPOSED OF`]->_57231
create _57198-[:`COMPOSED OF`]->_57227
create _57198-[:`COMPOSED OF`]->_57229
create _57198-[:`COMPOSED OF`]->_57233
create _57198-[:`CONTAINS`]->_57235
create _57198-[:`CONTAINS`]->_57236
create _57198-[:`CONTAINS`]->_57234
create _57198-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_57199
create _57198-[:`DEPENDS ON`]->_57513
create _57199-[:`COMPOSED OF`]->_57220
create _57199-[:`CONTAINS`]->_57223
create _57199-[:`CONTAINS`]->_57221
create _57199-[:`CONTAINS`]->_57222
create _57199-[:`DEPENDS ON`]->_57513
create _57201-[:`CONTAINS`]->_57200
create _57203-[:`CONTAINS`]->_57202
create _57207-[:`COMPOSED OF`]->_57201
create _57207-[:`COMPOSED OF`]->_57203
create _57207-[:`CONTAINS`]->_57205
create _57207-[:`CONTAINS`]->_57204
create _57207-[:`CONTAINS`]->_57206
create _57207-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_57198
create _57207-[:`DEPENDS ON`]->_57513
create _57209-[:`CONTAINS`]->_57208
create _57211-[:`CONTAINS`]->_57210
create _57213-[:`CONTAINS`]->_57212
create _57217-[:`COMPOSED OF`]->_57211
create _57217-[:`COMPOSED OF`]->_57209
create _57217-[:`COMPOSED OF`]->_57213
create _57217-[:`CONTAINS`]->_57216
create _57217-[:`CONTAINS`]->_57215
create _57217-[:`CONTAINS`]->_57214
create _57217-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_57177
create _57217-[:`DEPENDS ON`]->_57513
create _57217-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_57198
create _57218-[:`CONTAINS`]->_57517
create _57218-[:`CONTAINS`]->_57518
create _57218-[:`CONTAINS`]->_57519
create _57218-[:`CONTAINS`]->_57520
create _57218-[:`CONTAINS`]->_57516
create _57218-[:`CONTAINS`]->_57521
create _57218-[:`DEPENDS ON`]->_57513
create _57220-[:`CONTAINS`]->_57219
create _57225-[:`CONTAINS`]->_57224
create _57227-[:`CONTAINS`]->_57226
create _57229-[:`CONTAINS`]->_57228
create _57231-[:`CONTAINS`]->_57230
create _57233-[:`CONTAINS`]->_57232
create _57238-[:`CONTAINS`]->_57237
create _57500-[:`CONTAINS`]->_57499
create _57502-[:`CONTAINS`]->_57501
create _57507-[:`COMPOSED OF`]->_57238
create _57507-[:`COMPOSED OF`]->_57500
create _57507-[:`COMPOSED OF`]->_57502
create _57507-[:`CONTAINS`]->_57506
create _57507-[:`CONTAINS`]->_57504
create _57507-[:`CONTAINS`]->_57505
create _57507-[:`CONTAINS`]->_57503
create _57507-[:`COMPATIBLE WITH`]->_57513
create _57507-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_57197
create _57507-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_57198
create _57507-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_57217
create _57507-[:`DEPENDS ON` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_57207
create _57513-[:`CONTAINS`]->_57511
create _57513-[:`CONTAINS`]->_57508
create _57513-[:`CONTAINS`]->_57510
create _57513-[:`CONTAINS`]->_57509
create _57513-[:`CONTAINS`]->_57512
create _57514-[:`COMPATIBLE WITH`]->_57169
create _57515-[:`COMPATIBLE WITH`]->_57513
;
commit
