begin
create (_282755:`FileNode` {`nID`:4, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.0"})
create (_282756:`Module` {`git_repos`:"net.echinopsii.ariane.community.installer.git", `nID`:5, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.0"})
create (_282757:`FileNode` {`nID`:6, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_282758:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:7, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_282759:`FileNode` {`nID`:8, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_282760:`FileNode` {`nID`:9, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_282761:`FileNode` {`nID`:10, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_282762:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.idm.git", `nID`:11, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_282763:`FileNode` {`nID`:12, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.0"})
create (_282764:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:13, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_282765:`FileNode` {`nID`:14, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.0"})
create (_282766:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:15, `name`:"idmwat", `order`:2, `version`:"0.5.0"})
create (_282767:`FileNode` {`nID`:16, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.0"})
create (_282768:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:17, `name`:"wab", `order`:3, `version`:"0.5.0"})
create (_282769:`FileNode` {`nID`:18, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.0"})
create (_282770:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:19, `name`:"wat", `order`:4, `version`:"0.5.0"})
create (_282771:`FileNode` {`nID`:20, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.0"})
create (_282772:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:21, `name`:"wresources", `order`:5, `version`:"0.5.0"})
create (_282773:`FileNode` {`nID`:22, `name`:"ariane.community.core.portal-0.5.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_282774:`FileNode` {`nID`:23, `name`:"net.echinopsii.ariane.community.core.portal_0.5.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_282775:`FileNode` {`nID`:24, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.0"})
create (_282776:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.portal.git", `nID`:25, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.0"})
create (_282777:`FileNode` {`nID`:26, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.0"})
create (_282778:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:27, `name`:"api", `order`:1, `version`:"0.5.0"})
create (_282779:`FileNode` {`nID`:28, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.0"})
create (_282780:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:29, `name`:"blueprints", `order`:2, `version`:"0.5.0"})
create (_282781:`FileNode` {`nID`:30, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.0"})
create (_282782:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:31, `name`:"dsl", `order`:3, `version`:"0.5.0"})
create (_282783:`FileNode` {`nID`:32, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.0"})
create (_282784:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:33, `name`:"rim", `order`:4, `version`:"0.5.0"})
create (_282785:`FileNode` {`nID`:34, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.0"})
create (_282786:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:35, `name`:"ds", `order`:5, `version`:"0.5.0"})
create (_282787:`FileNode` {`nID`:36, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.0"})
create (_282788:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:37, `name`:"taitale", `order`:6, `version`:"0.5.0"})
create (_282789:`FileNode` {`nID`:38, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.0"})
create (_282790:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:39, `name`:"wat", `order`:7, `version`:"0.5.0"})
create (_282791:`FileNode` {`nID`:40, `name`:"ariane.community.core.mapping-0.5.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_282792:`FileNode` {`nID`:41, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_282793:`FileNode` {`nID`:42, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.0"})
create (_282794:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.mapping.git", `nID`:43, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.0"})
create (_282795:`FileNode` {`nID`:44, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.0"})
create (_282796:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:45, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_282797:`FileNode` {`nID`:46, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.0"})
create (_282798:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:47, `name`:"wat", `order`:2, `version`:"0.5.0"})
create (_282799:`FileNode` {`nID`:48, `name`:"ariane.community.core.directory-0.5.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_282800:`FileNode` {`nID`:49, `name`:"net.echinopsii.ariane.community.core.directory_0.5.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_282801:`FileNode` {`nID`:50, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.0"})
create (_282802:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.directory.git", `nID`:51, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.0"})
create (_282803:`FileNode` {`nID`:52, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.0"})
create (_282804:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:53, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_282805:`FileNode` {`nID`:54, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.0"})
create (_282806:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:55, `name`:"wat", `order`:2, `version`:"0.5.0"})
create (_282807:`FileNode` {`nID`:56, `name`:"ariane.community.core.injector-0.5.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_282808:`FileNode` {`nID`:57, `name`:"net.echinopsii.ariane.community.core.injector_0.5.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_282809:`FileNode` {`nID`:58, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.0"})
create (_282810:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.injector.git", `nID`:59, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.0"})
create (_282811:`Module` {`git_repos`:"net.echinopsii.ariane.community.environment.git", `nID`:60, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.0"})
create (_282812:`FileNode` {`nID`:61, `name`:"ariane.community.distrib-0.5.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.0"})
create (_282813:`FileNode` {`nID`:62, `name`:"pom-ariane.community.distrib-0.5.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.0"})
create (_282814:`FileNode` {`nID`:63, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.0"})
create (_282815:`FileNode` {`nID`:64, `name`:"ariane.community.plugins-distrib-0.5.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.0"})
create (_282816:`FileNode` {`nID`:65, `name`:"ariane.community.git.repos-0.5.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.0"})
create (_282817:`Distribution` {`editable`:"false", `nID`:66, `name`:"community", `version`:"0.5.0"})
create (_282821:`FileNode` {`nID`:70, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.1"})
create (_282822:`Module` {`git_repos`:"net.echinopsii.ariane.community.installer.git", `nID`:71, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.1"})
create (_282823:`FileNode` {`nID`:72, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_282824:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:73, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_282825:`FileNode` {`nID`:74, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_282826:`FileNode` {`nID`:75, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_282827:`FileNode` {`nID`:76, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_282828:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.idm.git", `nID`:77, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_282829:`FileNode` {`nID`:78, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_282830:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:79, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_282831:`FileNode` {`nID`:80, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_282832:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:81, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_282833:`FileNode` {`nID`:82, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_282834:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:83, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_282835:`FileNode` {`nID`:84, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_282836:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:85, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_282837:`FileNode` {`nID`:86, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_282838:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:87, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_282839:`FileNode` {`nID`:88, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_282840:`FileNode` {`nID`:89, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_282841:`FileNode` {`nID`:90, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_282842:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.portal.git", `nID`:91, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_282843:`FileNode` {`nID`:92, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.1"})
create (_282844:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:93, `name`:"api", `order`:1, `version`:"0.5.1"})
create (_282845:`FileNode` {`nID`:94, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.1"})
create (_282846:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:95, `name`:"blueprints", `order`:2, `version`:"0.5.1"})
create (_282847:`FileNode` {`nID`:96, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.1"})
create (_282848:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:97, `name`:"dsl", `order`:3, `version`:"0.5.1"})
create (_282849:`FileNode` {`nID`:98, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.1"})
create (_282850:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:99, `name`:"rim", `order`:4, `version`:"0.5.1"})
create (_282851:`FileNode` {`nID`:100, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.1"})
create (_282852:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:101, `name`:"ds", `order`:5, `version`:"0.5.1"})
create (_282853:`FileNode` {`nID`:102, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.1"})
create (_282854:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:103, `name`:"taitale", `order`:6, `version`:"0.5.1"})
create (_282855:`FileNode` {`nID`:104, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.1"})
create (_282856:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:105, `name`:"wat", `order`:7, `version`:"0.5.1"})
create (_282857:`FileNode` {`nID`:106, `name`:"ariane.community.core.mapping-0.5.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_282858:`FileNode` {`nID`:107, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_282859:`FileNode` {`nID`:108, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.1"})
create (_282860:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.mapping.git", `nID`:109, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.1"})
create (_282861:`FileNode` {`nID`:110, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_282862:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:111, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_282863:`FileNode` {`nID`:112, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_282864:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:113, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_282865:`FileNode` {`nID`:114, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_282866:`FileNode` {`nID`:115, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_282867:`FileNode` {`nID`:116, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_282868:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.directory.git", `nID`:117, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_282869:`FileNode` {`nID`:118, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.1"})
create (_282870:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:119, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_282871:`FileNode` {`nID`:120, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.1"})
create (_282872:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:121, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_282873:`FileNode` {`nID`:122, `name`:"ariane.community.core.injector-0.5.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_282874:`FileNode` {`nID`:123, `name`:"net.echinopsii.ariane.community.core.injector_0.5.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_282875:`FileNode` {`nID`:124, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.1"})
create (_282876:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.injector.git", `nID`:125, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.1"})
create (_282877:`Module` {`git_repos`:"net.echinopsii.ariane.community.environment.git", `nID`:126, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.1"})
create (_282878:`FileNode` {`nID`:127, `name`:"ariane.community.distrib-0.5.1.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.1"})
create (_282879:`FileNode` {`nID`:128, `name`:"pom-ariane.community.distrib-0.5.1.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.1"})
create (_282880:`FileNode` {`nID`:129, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.1"})
create (_282881:`FileNode` {`nID`:130, `name`:"ariane.community.plugins-distrib-0.5.1.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.1"})
create (_282882:`FileNode` {`nID`:131, `name`:"ariane.community.git.repos-0.5.1.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.1"})
create (_282883:`Distribution` {`editable`:"false", `nID`:132, `name`:"community", `version`:"0.5.1"})
create (_282887:`FileNode` {`nID`:136, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.2"})
create (_282888:`Module` {`git_repos`:"net.echinopsii.ariane.community.installer.git", `nID`:137, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.2"})
create (_282889:`FileNode` {`nID`:138, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_282890:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:139, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_282891:`FileNode` {`nID`:140, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_282892:`FileNode` {`nID`:141, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_282893:`FileNode` {`nID`:142, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_282894:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.idm.git", `nID`:143, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_282895:`FileNode` {`nID`:144, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_282896:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:145, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_282897:`FileNode` {`nID`:146, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_282898:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:147, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_282899:`FileNode` {`nID`:148, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_282900:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:149, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_282901:`FileNode` {`nID`:150, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_282902:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:151, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_282903:`FileNode` {`nID`:152, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_282904:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:153, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_282905:`FileNode` {`nID`:154, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_282906:`FileNode` {`nID`:155, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_282907:`FileNode` {`nID`:156, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_282908:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.portal.git", `nID`:157, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_282909:`FileNode` {`nID`:158, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.1"})
create (_282910:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:159, `name`:"api", `order`:1, `version`:"0.5.1"})
create (_282911:`FileNode` {`nID`:160, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.1"})
create (_282912:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:161, `name`:"blueprints", `order`:2, `version`:"0.5.1"})
create (_282913:`FileNode` {`nID`:162, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.1"})
create (_282914:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:163, `name`:"dsl", `order`:3, `version`:"0.5.1"})
create (_282915:`FileNode` {`nID`:164, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.1"})
create (_282916:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:165, `name`:"rim", `order`:4, `version`:"0.5.1"})
create (_282917:`FileNode` {`nID`:166, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.1"})
create (_282918:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:167, `name`:"ds", `order`:5, `version`:"0.5.1"})
create (_282919:`FileNode` {`nID`:168, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.1"})
create (_282920:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:169, `name`:"taitale", `order`:6, `version`:"0.5.1"})
create (_282921:`FileNode` {`nID`:170, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.1"})
create (_282922:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:171, `name`:"wat", `order`:7, `version`:"0.5.1"})
create (_282923:`FileNode` {`nID`:172, `name`:"ariane.community.core.mapping-0.5.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_282924:`FileNode` {`nID`:173, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_282925:`FileNode` {`nID`:174, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.1"})
create (_282926:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.mapping.git", `nID`:175, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.1"})
create (_282927:`FileNode` {`nID`:176, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_282928:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:177, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_282929:`FileNode` {`nID`:178, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_282930:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:179, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_282931:`FileNode` {`nID`:180, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_282932:`FileNode` {`nID`:181, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_282933:`FileNode` {`nID`:182, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_282934:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.directory.git", `nID`:183, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_282935:`FileNode` {`nID`:184, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.2"})
create (_282936:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:185, `name`:"base", `order`:1, `version`:"0.5.2"})
create (_282937:`FileNode` {`nID`:186, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.2"})
create (_282938:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:187, `name`:"wat", `order`:2, `version`:"0.5.2"})
create (_282939:`FileNode` {`nID`:188, `name`:"ariane.community.core.injector-0.5.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_282940:`FileNode` {`nID`:189, `name`:"net.echinopsii.ariane.community.core.injector_0.5.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_282941:`FileNode` {`nID`:190, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.2"})
create (_282942:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.injector.git", `nID`:191, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.2"})
create (_282943:`Module` {`git_repos`:"net.echinopsii.ariane.community.environment.git", `nID`:192, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.2"})
create (_282944:`FileNode` {`nID`:193, `name`:"ariane.community.distrib-0.5.2.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.2"})
create (_282945:`FileNode` {`nID`:194, `name`:"pom-ariane.community.distrib-0.5.2.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.2"})
create (_282946:`FileNode` {`nID`:195, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.2"})
create (_282947:`FileNode` {`nID`:196, `name`:"ariane.community.plugins-distrib-0.5.2.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.2"})
create (_282948:`FileNode` {`nID`:197, `name`:"ariane.community.git.repos-0.5.2.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.2"})
create (_282949:`Distribution` {`editable`:"false", `nID`:198, `name`:"community", `version`:"0.5.2"})
create (_282953:`FileNode` {`nID`:202, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.3"})
create (_282954:`Module` {`git_repos`:"net.echinopsii.ariane.community.installer.git", `nID`:203, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.3"})
create (_282955:`FileNode` {`nID`:204, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_282956:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:205, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_282957:`FileNode` {`nID`:206, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_282958:`FileNode` {`nID`:207, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_282959:`FileNode` {`nID`:208, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_282960:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.idm.git", `nID`:209, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_282961:`FileNode` {`nID`:210, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_282962:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:211, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_282963:`FileNode` {`nID`:212, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_282964:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:213, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_282965:`FileNode` {`nID`:214, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_282966:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:215, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_282967:`FileNode` {`nID`:216, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_282968:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:217, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_282969:`FileNode` {`nID`:218, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_282970:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:219, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_282971:`FileNode` {`nID`:220, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_282972:`FileNode` {`nID`:221, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_282973:`FileNode` {`nID`:222, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_282974:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.portal.git", `nID`:223, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_282975:`FileNode` {`nID`:224, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.2"})
create (_282976:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:225, `name`:"api", `order`:1, `version`:"0.5.2"})
create (_282977:`FileNode` {`nID`:226, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.2"})
create (_282978:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:227, `name`:"blueprints", `order`:2, `version`:"0.5.2"})
create (_282979:`FileNode` {`nID`:228, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.2"})
create (_282980:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:229, `name`:"dsl", `order`:3, `version`:"0.5.2"})
create (_282981:`FileNode` {`nID`:230, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.2"})
create (_282982:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:231, `name`:"rim", `order`:4, `version`:"0.5.2"})
create (_282983:`FileNode` {`nID`:232, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.2"})
create (_282984:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:233, `name`:"ds", `order`:5, `version`:"0.5.2"})
create (_282985:`FileNode` {`nID`:234, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.2"})
create (_282986:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:235, `name`:"taitale", `order`:6, `version`:"0.5.2"})
create (_282987:`FileNode` {`nID`:236, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.2"})
create (_282988:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:237, `name`:"wat", `order`:7, `version`:"0.5.2"})
create (_282989:`FileNode` {`nID`:238, `name`:"ariane.community.core.mapping-0.5.2.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_282990:`FileNode` {`nID`:239, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.2.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_282991:`FileNode` {`nID`:240, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.2"})
create (_282992:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.mapping.git", `nID`:241, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.2"})
create (_282993:`FileNode` {`nID`:242, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_282994:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:243, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_282995:`FileNode` {`nID`:244, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_282996:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:245, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_282997:`FileNode` {`nID`:246, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_282998:`FileNode` {`nID`:247, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_282999:`FileNode` {`nID`:248, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_283000:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.directory.git", `nID`:249, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_283001:`FileNode` {`nID`:250, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.2"})
create (_283002:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:251, `name`:"base", `order`:1, `version`:"0.5.2"})
create (_283003:`FileNode` {`nID`:252, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.2"})
create (_283004:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:253, `name`:"wat", `order`:2, `version`:"0.5.2"})
create (_283005:`FileNode` {`nID`:254, `name`:"ariane.community.core.injector-0.5.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_283006:`FileNode` {`nID`:255, `name`:"net.echinopsii.ariane.community.core.injector_0.5.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_283007:`FileNode` {`nID`:256, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.2"})
create (_283008:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.injector.git", `nID`:257, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.2"})
create (_283009:`Module` {`git_repos`:"net.echinopsii.ariane.community.environment.git", `nID`:258, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.2"})
create (_283010:`FileNode` {`nID`:259, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.1.0"})
create (_283011:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:260, `name`:"directory", `order`:1, `version`:"0.1.0"})
create (_283012:`FileNode` {`nID`:261, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.1.0"})
create (_283013:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:262, `name`:"jsonparser", `order`:2, `version`:"0.1.0"})
create (_283014:`FileNode` {`nID`:263, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.1.0"})
create (_283015:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:264, `name`:"injector", `order`:3, `version`:"0.1.0"})
create (_283016:`FileNode` {`nID`:265, `name`:"ariane.community.plugin.rabbitmq-0.1.0.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_283017:`FileNode` {`nID`:266, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.1.0.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.1.0"})
create (_283018:`FileNode` {`nID`:267, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_283019:`FileNode` {`nID`:268, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.1.0"})
create (_283020:`Plugin` {`nID`:269, `name`:"rabbitmq", `version`:"0.1.0"})
create (_283021:`FileNode` {`nID`:270, `name`:"ariane.community.distrib-0.5.3.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.3"})
create (_283022:`FileNode` {`nID`:271, `name`:"pom-ariane.community.distrib-0.5.3.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.3"})
create (_283023:`FileNode` {`nID`:272, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.3"})
create (_283024:`FileNode` {`nID`:273, `name`:"ariane.community.plugins-distrib-0.5.3.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.3"})
create (_283025:`FileNode` {`nID`:274, `name`:"ariane.community.git.repos-0.5.3.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.3"})
create (_283026:`Distribution` {`editable`:"false", `nID`:275, `name`:"community", `version`:"0.5.3"})
create (_283030:`FileNode` {`nID`:279, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.0"})
create (_283031:`Module` {`git_repos`:"net.echinopsii.ariane.community.installer.git", `nID`:280, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.0"})
create (_283032:`FileNode` {`nID`:281, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_283033:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:282, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_283034:`FileNode` {`nID`:283, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_283035:`FileNode` {`nID`:284, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_283036:`FileNode` {`nID`:285, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_283037:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.idm.git", `nID`:286, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_283038:`FileNode` {`nID`:287, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.0"})
create (_283039:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:288, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_283040:`FileNode` {`nID`:289, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.0"})
create (_283041:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:290, `name`:"wat", `order`:2, `version`:"0.6.0"})
create (_283042:`FileNode` {`nID`:291, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.0"})
create (_283043:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:292, `name`:"idmwat", `order`:3, `version`:"0.6.0"})
create (_283044:`FileNode` {`nID`:293, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.0"})
create (_283045:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:294, `name`:"wab", `order`:4, `version`:"0.6.0"})
create (_283046:`FileNode` {`nID`:295, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.0"})
create (_283047:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:296, `name`:"wresources", `order`:5, `version`:"0.6.0"})
create (_283048:`FileNode` {`nID`:297, `name`:"ariane.community.core.portal-0.6.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_283049:`FileNode` {`nID`:298, `name`:"net.echinopsii.ariane.community.core.portal_0.6.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_283050:`FileNode` {`nID`:299, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.0"})
create (_283051:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.portal.git", `nID`:300, `name`:"portal", `order`:3, `type`:"core", `version`:"0.6.0"})
create (_283052:`FileNode` {`nID`:301, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.0"})
create (_283053:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:302, `name`:"api", `order`:1, `version`:"0.6.0"})
create (_283054:`FileNode` {`nID`:303, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.0"})
create (_283055:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:304, `name`:"blueprints", `order`:2, `version`:"0.6.0"})
create (_283056:`FileNode` {`nID`:305, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.0"})
create (_283057:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:306, `name`:"rim", `order`:3, `version`:"0.6.0"})
create (_283058:`FileNode` {`nID`:307, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.0"})
create (_283059:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:308, `name`:"dsl", `order`:4, `version`:"0.6.0"})
create (_283060:`FileNode` {`nID`:309, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.0"})
create (_283061:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:310, `name`:"ds", `order`:5, `version`:"0.6.0"})
create (_283062:`FileNode` {`nID`:311, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.0"})
create (_283063:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:312, `name`:"wat", `order`:6, `version`:"0.6.0"})
create (_283064:`FileNode` {`nID`:313, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.0"})
create (_283065:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:314, `name`:"taitale", `order`:7, `version`:"0.6.0"})
create (_283066:`FileNode` {`nID`:315, `name`:"ariane.community.core.mapping-0.6.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_283067:`FileNode` {`nID`:316, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_283068:`FileNode` {`nID`:317, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.0"})
create (_283069:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.mapping.git", `nID`:318, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.6.0"})
create (_283070:`FileNode` {`nID`:319, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.0"})
create (_283071:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:320, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_283072:`FileNode` {`nID`:321, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.0"})
create (_283073:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:322, `name`:"wat", `order`:2, `version`:"0.6.0"})
create (_283074:`FileNode` {`nID`:323, `name`:"ariane.community.core.directory-0.6.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_283075:`FileNode` {`nID`:324, `name`:"net.echinopsii.ariane.community.core.directory_0.6.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_283076:`FileNode` {`nID`:325, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.0"})
create (_283077:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.directory.git", `nID`:326, `name`:"directory", `order`:5, `type`:"core", `version`:"0.6.0"})
create (_283078:`FileNode` {`nID`:327, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.0"})
create (_283079:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:328, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_283080:`FileNode` {`nID`:329, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.0"})
create (_283081:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:330, `name`:"messaging", `order`:2, `version`:"0.6.0"})
create (_283082:`FileNode` {`nID`:331, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.0"})
create (_283083:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:332, `name`:"wat", `order`:3, `version`:"0.6.0"})
create (_283084:`FileNode` {`nID`:333, `name`:"ariane.community.core.injector-0.6.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_283085:`FileNode` {`nID`:334, `name`:"net.echinopsii.ariane.community.core.injector_0.6.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_283086:`FileNode` {`nID`:335, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.0"})
create (_283087:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.injector.git", `nID`:336, `name`:"injector", `order`:6, `type`:"core", `version`:"0.6.0"})
create (_283088:`Module` {`git_repos`:"net.echinopsii.ariane.community.environment.git", `nID`:337, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.6.0"})
create (_283089:`FileNode` {`nID`:338, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.0"})
create (_283090:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:339, `name`:"directory", `order`:1, `version`:"0.2.0"})
create (_283091:`FileNode` {`nID`:340, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.0"})
create (_283092:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:341, `name`:"jsonparser", `order`:2, `version`:"0.2.0"})
create (_283093:`FileNode` {`nID`:342, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.0"})
create (_283094:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:343, `name`:"injector", `order`:3, `version`:"0.2.0"})
create (_283095:`FileNode` {`nID`:344, `name`:"ariane.community.plugin.rabbitmq-0.2.0.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.0"})
create (_283096:`FileNode` {`nID`:345, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.0.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.0"})
create (_283097:`FileNode` {`nID`:346, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.0"})
create (_283098:`FileNode` {`nID`:347, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.0"})
create (_283099:`Plugin` {`nID`:348, `name`:"rabbitmq", `version`:"0.2.0"})
create (_283100:`FileNode` {`nID`:349, `name`:"ariane.community.distrib-0.6.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.0"})
create (_283101:`FileNode` {`nID`:350, `name`:"pom-ariane.community.distrib-0.6.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.0"})
create (_283102:`FileNode` {`nID`:351, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.0"})
create (_283103:`FileNode` {`nID`:352, `name`:"ariane.community.plugins-distrib-0.6.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.0"})
create (_283104:`FileNode` {`nID`:353, `name`:"ariane.community.git.repos-0.6.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.0"})
create (_283105:`Distribution` {`editable`:"false", `nID`:354, `name`:"community", `version`:"0.6.0"})
create (_283109:`FileNode` {`nID`:358, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.1"})
create (_283110:`Module` {`git_repos`:"net.echinopsii.ariane.community.installer.git", `nID`:359, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.1"})
create (_283111:`FileNode` {`nID`:360, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_283112:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:361, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_283113:`FileNode` {`nID`:362, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_283114:`FileNode` {`nID`:363, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_283115:`FileNode` {`nID`:364, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_283116:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.idm.git", `nID`:365, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_283117:`FileNode` {`nID`:366, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.1"})
create (_283118:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:367, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_283119:`FileNode` {`nID`:368, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.1"})
create (_283120:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:369, `name`:"wat", `order`:2, `version`:"0.6.1"})
create (_283121:`FileNode` {`nID`:370, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.1"})
create (_283122:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:371, `name`:"idmwat", `order`:3, `version`:"0.6.1"})
create (_283123:`FileNode` {`nID`:372, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.1"})
create (_283124:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:373, `name`:"wab", `order`:4, `version`:"0.6.1"})
create (_283125:`FileNode` {`nID`:374, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.1"})
create (_283126:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:375, `name`:"wresources", `order`:5, `version`:"0.6.1"})
create (_283127:`FileNode` {`nID`:376, `name`:"ariane.community.core.portal-0.6.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_283128:`FileNode` {`nID`:377, `name`:"net.echinopsii.ariane.community.core.portal_0.6.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_283129:`FileNode` {`nID`:378, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.1"})
create (_283130:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.portal.git", `nID`:379, `name`:"portal", `order`:3, `type`:"core", `version`:"0.6.1"})
create (_283131:`FileNode` {`nID`:380, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.1"})
create (_283132:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:381, `name`:"api", `order`:1, `version`:"0.6.1"})
create (_283133:`FileNode` {`nID`:382, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.1"})
create (_283134:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:383, `name`:"blueprints", `order`:2, `version`:"0.6.1"})
create (_283135:`FileNode` {`nID`:384, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.1"})
create (_283136:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:385, `name`:"rim", `order`:3, `version`:"0.6.1"})
create (_283137:`FileNode` {`nID`:386, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.1"})
create (_283138:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:387, `name`:"dsl", `order`:4, `version`:"0.6.1"})
create (_283139:`FileNode` {`nID`:388, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.1"})
create (_283140:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:389, `name`:"ds", `order`:5, `version`:"0.6.1"})
create (_283141:`FileNode` {`nID`:390, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.1"})
create (_283142:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:391, `name`:"wat", `order`:6, `version`:"0.6.1"})
create (_283143:`FileNode` {`nID`:392, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.1"})
create (_283144:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:393, `name`:"taitale", `order`:7, `version`:"0.6.1"})
create (_283145:`FileNode` {`nID`:394, `name`:"ariane.community.core.mapping-0.6.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_283146:`FileNode` {`nID`:395, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_283147:`FileNode` {`nID`:396, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.1"})
create (_283148:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.mapping.git", `nID`:397, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.6.1"})
create (_283149:`FileNode` {`nID`:398, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.1"})
create (_283150:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:399, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_283151:`FileNode` {`nID`:400, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.1"})
create (_283152:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:401, `name`:"wat", `order`:2, `version`:"0.6.1"})
create (_283153:`FileNode` {`nID`:402, `name`:"ariane.community.core.directory-0.6.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_283154:`FileNode` {`nID`:403, `name`:"net.echinopsii.ariane.community.core.directory_0.6.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_283155:`FileNode` {`nID`:404, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.1"})
create (_283156:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.directory.git", `nID`:405, `name`:"directory", `order`:5, `type`:"core", `version`:"0.6.1"})
create (_283157:`FileNode` {`nID`:406, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.1"})
create (_283158:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:407, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_283159:`FileNode` {`nID`:408, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.1"})
create (_283160:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:409, `name`:"messaging", `order`:2, `version`:"0.6.1"})
create (_283161:`FileNode` {`nID`:410, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.1"})
create (_283162:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:411, `name`:"wat", `order`:3, `version`:"0.6.1"})
create (_283163:`FileNode` {`nID`:412, `name`:"ariane.community.core.injector-0.6.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_283164:`FileNode` {`nID`:413, `name`:"net.echinopsii.ariane.community.core.injector_0.6.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_283165:`FileNode` {`nID`:414, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.1"})
create (_283166:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.injector.git", `nID`:415, `name`:"injector", `order`:6, `type`:"core", `version`:"0.6.1"})
create (_283167:`Module` {`git_repos`:"net.echinopsii.ariane.community.environment.git", `nID`:416, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.6.1"})
create (_283168:`FileNode` {`nID`:417, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.1"})
create (_283169:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:418, `name`:"directory", `order`:1, `version`:"0.2.1"})
create (_283170:`FileNode` {`nID`:419, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.1"})
create (_283171:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:420, `name`:"jsonparser", `order`:2, `version`:"0.2.1"})
create (_283172:`FileNode` {`nID`:421, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.1"})
create (_283173:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:422, `name`:"injector", `order`:3, `version`:"0.2.1"})
create (_283174:`FileNode` {`nID`:423, `name`:"ariane.community.plugin.rabbitmq-0.2.1.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.1"})
create (_283175:`FileNode` {`nID`:424, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.1.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.1"})
create (_283176:`FileNode` {`nID`:425, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.1"})
create (_283177:`FileNode` {`nID`:426, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.1"})
create (_283178:`Plugin` {`nID`:427, `name`:"rabbitmq", `version`:"0.2.1"})
create (_283179:`FileNode` {`nID`:428, `name`:"ariane.community.distrib-0.6.1.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.1"})
create (_283180:`FileNode` {`nID`:429, `name`:"pom-ariane.community.distrib-0.6.1.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.1"})
create (_283181:`FileNode` {`nID`:430, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.1"})
create (_283182:`FileNode` {`nID`:431, `name`:"ariane.community.plugins-distrib-0.6.1.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.1"})
create (_283183:`FileNode` {`nID`:432, `name`:"ariane.community.git.repos-0.6.1.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.1"})
create (_283184:`Distribution` {`editable`:"false", `nID`:433, `name`:"community", `version`:"0.6.1"})
create (_283188:`FileNode` {`nID`:437, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.2"})
create (_283189:`Module` {`git_repos`:"net.echinopsii.ariane.community.installer.git", `nID`:438, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.2"})
create (_283190:`FileNode` {`nID`:439, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_283191:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:440, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_283192:`FileNode` {`nID`:441, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_283193:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:442, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_283194:`FileNode` {`nID`:443, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_283195:`FileNode` {`nID`:444, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_283196:`FileNode` {`nID`:445, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_283197:`Module` {`git_repos`:"net.echinopsii.ariane.community.messaging.git", `nID`:446, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_283198:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.portal.git", `nID`:447, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.2"})
create (_283199:`FileNode` {`nID`:448, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.1"})
create (_283200:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:449, `name`:"base", `order`:1, `version`:"0.4.1"})
create (_283201:`FileNode` {`nID`:450, `name`:"ariane.community.core.idm-0.4.1.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.1"})
create (_283202:`FileNode` {`nID`:451, `name`:"net.echinopsii.ariane.community.core.idm_0.4.1.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.1"})
create (_283203:`FileNode` {`nID`:452, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.1"})
create (_283204:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.idm.git", `nID`:453, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.1"})
create (_283205:`FileNode` {`nID`:454, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.2"})
create (_283206:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:455, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_283207:`FileNode` {`nID`:456, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.2"})
create (_283208:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:457, `name`:"wat", `order`:2, `version`:"0.6.2"})
create (_283209:`FileNode` {`nID`:458, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.2"})
create (_283210:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:459, `name`:"idmwat", `order`:3, `version`:"0.6.2"})
create (_283211:`FileNode` {`nID`:460, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.2"})
create (_283212:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:461, `name`:"wab", `order`:4, `version`:"0.6.2"})
create (_283213:`FileNode` {`nID`:462, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.2"})
create (_283214:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:463, `name`:"wresources", `order`:5, `version`:"0.6.2"})
create (_283215:`FileNode` {`nID`:464, `name`:"ariane.community.core.portal-0.6.2.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_283216:`FileNode` {`nID`:465, `name`:"net.echinopsii.ariane.community.core.portal_0.6.2.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_283217:`FileNode` {`nID`:466, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.2"})
create (_283218:`FileNode` {`nID`:467, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.2"})
create (_283219:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:468, `name`:"api", `order`:1, `version`:"0.6.2"})
create (_283220:`FileNode` {`nID`:469, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.2"})
create (_283221:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:470, `name`:"blueprints", `order`:2, `version`:"0.6.2"})
create (_283222:`FileNode` {`nID`:471, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.2"})
create (_283223:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:472, `name`:"rim", `order`:3, `version`:"0.6.2"})
create (_283224:`FileNode` {`nID`:473, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.2"})
create (_283225:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:474, `name`:"dsl", `order`:4, `version`:"0.6.2"})
create (_283226:`FileNode` {`nID`:475, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.2"})
create (_283227:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:476, `name`:"ds", `order`:5, `version`:"0.6.2"})
create (_283228:`FileNode` {`nID`:477, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.2"})
create (_283229:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:478, `name`:"wat", `order`:6, `version`:"0.6.2"})
create (_283230:`FileNode` {`nID`:479, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.2"})
create (_283231:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:480, `name`:"taitale", `order`:7, `version`:"0.6.2"})
create (_283232:`FileNode` {`nID`:481, `name`:"ariane.community.core.mapping-0.6.2.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_283233:`FileNode` {`nID`:482, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.2.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_283234:`FileNode` {`nID`:483, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.2"})
create (_283235:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.mapping.git", `nID`:484, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.2"})
create (_283236:`FileNode` {`nID`:485, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.2"})
create (_283237:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:486, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_283238:`FileNode` {`nID`:487, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.2"})
create (_283239:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:488, `name`:"wat", `order`:2, `version`:"0.6.2"})
create (_283240:`FileNode` {`nID`:489, `name`:"ariane.community.core.directory-0.6.2.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_283241:`FileNode` {`nID`:490, `name`:"net.echinopsii.ariane.community.core.directory_0.6.2.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_283242:`FileNode` {`nID`:491, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.2"})
create (_283243:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.directory.git", `nID`:492, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.2"})
create (_283244:`FileNode` {`nID`:493, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.2"})
create (_283245:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:494, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_283246:`FileNode` {`nID`:495, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.2"})
create (_283247:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:496, `name`:"messaging", `order`:2, `version`:"0.6.2"})
create (_283248:`FileNode` {`nID`:497, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.2"})
create (_283249:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:498, `name`:"wat", `order`:3, `version`:"0.6.2"})
create (_283250:`FileNode` {`nID`:499, `name`:"ariane.community.core.injector-0.6.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_283251:`FileNode` {`nID`:500, `name`:"net.echinopsii.ariane.community.core.injector_0.6.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_283252:`FileNode` {`nID`:501, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.2"})
create (_283253:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.injector.git", `nID`:502, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.2"})
create (_283254:`Module` {`git_repos`:"net.echinopsii.ariane.community.environment.git", `nID`:503, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.2"})
create (_283255:`FileNode` {`nID`:504, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.2"})
create (_283256:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:505, `name`:"directory", `order`:1, `version`:"0.2.2"})
create (_283257:`FileNode` {`nID`:506, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.2"})
create (_283258:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:507, `name`:"jsonparser", `order`:2, `version`:"0.2.2"})
create (_283259:`FileNode` {`nID`:508, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.2"})
create (_283260:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:509, `name`:"injector", `order`:3, `version`:"0.2.2"})
create (_283261:`FileNode` {`nID`:510, `name`:"ariane.community.plugin.rabbitmq-0.2.2.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.2"})
create (_283262:`FileNode` {`nID`:511, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.2.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.2"})
create (_283263:`FileNode` {`nID`:512, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.2"})
create (_283264:`FileNode` {`nID`:513, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.2"})
create (_283265:`Plugin` {`nID`:514, `name`:"rabbitmq", `version`:"0.2.2"})
create (_283266:`FileNode` {`nID`:515, `name`:"ariane.community.distrib-0.6.2.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.2"})
create (_283267:`FileNode` {`nID`:516, `name`:"pom-ariane.community.distrib-0.6.2.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.2"})
create (_283268:`FileNode` {`nID`:517, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.2"})
create (_283269:`FileNode` {`nID`:518, `name`:"ariane.community.plugins-distrib-0.6.2.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.2"})
create (_283270:`FileNode` {`nID`:519, `name`:"ariane.community.git.repos-0.6.2.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.2"})
create (_283271:`Distribution` {`editable`:"false", `nID`:520, `name`:"community", `version`:"0.6.2"})
create (_283275:`FileNode` {`nID`:524, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.3"})
create (_283276:`Module` {`git_repos`:"net.echinopsii.ariane.community.installer.git", `nID`:525, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.3"})
create (_283277:`FileNode` {`nID`:526, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_283278:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:527, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_283279:`FileNode` {`nID`:528, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_283280:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:529, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_283281:`FileNode` {`nID`:530, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_283282:`FileNode` {`nID`:531, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_283283:`FileNode` {`nID`:532, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_283284:`Module` {`git_repos`:"net.echinopsii.ariane.community.messaging.git", `nID`:533, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_283285:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.portal.git", `nID`:534, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.3"})
create (_283286:`FileNode` {`nID`:535, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2"})
create (_283287:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:536, `name`:"base", `order`:1, `version`:"0.4.2"})
create (_283288:`FileNode` {`nID`:537, `name`:"ariane.community.core.idm-0.4.2.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2"})
create (_283289:`FileNode` {`nID`:538, `name`:"net.echinopsii.ariane.community.core.idm_0.4.2.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2"})
create (_283290:`FileNode` {`nID`:539, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2"})
create (_283291:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.idm.git", `nID`:540, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2"})
create (_283292:`FileNode` {`nID`:541, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.3"})
create (_283293:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:542, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_283294:`FileNode` {`nID`:543, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.3"})
create (_283295:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:544, `name`:"wat", `order`:2, `version`:"0.6.3"})
create (_283296:`FileNode` {`nID`:545, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.3"})
create (_283297:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:546, `name`:"idmwat", `order`:3, `version`:"0.6.3"})
create (_283298:`FileNode` {`nID`:547, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.3"})
create (_283299:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:548, `name`:"wab", `order`:4, `version`:"0.6.3"})
create (_283300:`FileNode` {`nID`:549, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.3"})
create (_283301:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:550, `name`:"wresources", `order`:5, `version`:"0.6.3"})
create (_283302:`FileNode` {`nID`:551, `name`:"ariane.community.core.portal-0.6.3.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_283303:`FileNode` {`nID`:552, `name`:"net.echinopsii.ariane.community.core.portal_0.6.3.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_283304:`FileNode` {`nID`:553, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.3"})
create (_283305:`FileNode` {`nID`:554, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.3"})
create (_283306:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:555, `name`:"api", `order`:1, `version`:"0.6.3"})
create (_283307:`FileNode` {`nID`:556, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.3"})
create (_283308:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:557, `name`:"blueprints", `order`:2, `version`:"0.6.3"})
create (_283309:`FileNode` {`nID`:558, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.3"})
create (_283310:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:559, `name`:"rim", `order`:3, `version`:"0.6.3"})
create (_283311:`FileNode` {`nID`:560, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.3"})
create (_283312:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:561, `name`:"dsl", `order`:4, `version`:"0.6.3"})
create (_283313:`FileNode` {`nID`:562, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.3"})
create (_283314:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:563, `name`:"ds", `order`:5, `version`:"0.6.3"})
create (_283315:`FileNode` {`nID`:564, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.3"})
create (_283316:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:565, `name`:"wat", `order`:6, `version`:"0.6.3"})
create (_283317:`FileNode` {`nID`:566, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.3"})
create (_283318:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:567, `name`:"taitale", `order`:7, `version`:"0.6.3"})
create (_283319:`FileNode` {`nID`:568, `name`:"ariane.community.core.mapping-0.6.3.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_283320:`FileNode` {`nID`:569, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.3.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_283321:`FileNode` {`nID`:570, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.3"})
create (_283322:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.mapping.git", `nID`:571, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.3"})
create (_283323:`FileNode` {`nID`:572, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.3"})
create (_283324:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:573, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_283325:`FileNode` {`nID`:574, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.3"})
create (_283326:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:575, `name`:"wat", `order`:2, `version`:"0.6.3"})
create (_283327:`FileNode` {`nID`:576, `name`:"ariane.community.core.directory-0.6.3.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_283328:`FileNode` {`nID`:577, `name`:"net.echinopsii.ariane.community.core.directory_0.6.3.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_283329:`FileNode` {`nID`:578, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.3"})
create (_283330:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.directory.git", `nID`:579, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.3"})
create (_283331:`FileNode` {`nID`:580, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.3"})
create (_283332:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:581, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_283333:`FileNode` {`nID`:582, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.3"})
create (_283334:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:583, `name`:"messaging", `order`:2, `version`:"0.6.3"})
create (_283335:`FileNode` {`nID`:584, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.3"})
create (_283336:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:585, `name`:"wat", `order`:3, `version`:"0.6.3"})
create (_283337:`FileNode` {`nID`:586, `name`:"ariane.community.core.injector-0.6.3.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_283338:`FileNode` {`nID`:587, `name`:"net.echinopsii.ariane.community.core.injector_0.6.3.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_283339:`FileNode` {`nID`:588, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.3"})
create (_283340:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.injector.git", `nID`:589, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.3"})
create (_283341:`Module` {`git_repos`:"net.echinopsii.ariane.community.environment.git", `nID`:590, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.3"})
create (_283342:`FileNode` {`nID`:591, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.3"})
create (_283343:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:592, `name`:"directory", `order`:1, `version`:"0.2.3"})
create (_283344:`FileNode` {`nID`:593, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.3"})
create (_283345:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:594, `name`:"jsonparser", `order`:2, `version`:"0.2.3"})
create (_283346:`FileNode` {`nID`:595, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.3"})
create (_283347:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:596, `name`:"injector", `order`:3, `version`:"0.2.3"})
create (_283348:`FileNode` {`nID`:597, `name`:"ariane.community.plugin.rabbitmq-0.2.3.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.3"})
create (_283349:`FileNode` {`nID`:598, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.3.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.3"})
create (_283350:`FileNode` {`nID`:599, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.3"})
create (_283351:`FileNode` {`nID`:600, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.3"})
create (_283352:`Plugin` {`nID`:601, `name`:"rabbitmq", `version`:"0.2.3"})
create (_283353:`FileNode` {`nID`:602, `name`:"ariane.community.distrib-0.6.3.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.3"})
create (_283354:`FileNode` {`nID`:603, `name`:"pom-ariane.community.distrib-0.6.3.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.3"})
create (_283355:`FileNode` {`nID`:604, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.3"})
create (_283356:`FileNode` {`nID`:605, `name`:"ariane.community.plugins-distrib-0.6.3.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.3"})
create (_283357:`FileNode` {`nID`:606, `name`:"ariane.community.git.repos-0.6.3.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.3"})
create (_283358:`Distribution` {`editable`:"false", `nID`:607, `name`:"community", `version`:"0.6.3"})
create (_283362:`FileNode` {`nID`:611, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.4-SNAPSHOT"})
create (_283363:`Module` {`git_repos`:"net.echinopsii.ariane.community.installer.git", `nID`:612, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.4-SNAPSHOT"})
create (_283364:`FileNode` {`nID`:613, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_283365:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:614, `name`:"api", `order`:1, `version`:"0.1.1-SNAPSHOT"})
create (_283366:`FileNode` {`nID`:615, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_283367:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:616, `name`:"rabbitmq", `order`:2, `version`:"0.1.1-SNAPSHOT"})
create (_283368:`FileNode` {`nID`:617, `name`:"ariane.community.messaging-master.SNAPSHOT.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.1-SNAPSHOT"})
create (_283369:`FileNode` {`nID`:618, `name`:"net.echinopsii.ariane.community.messaging_master.SNAPSHOT.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.1-SNAPSHOT"})
create (_283370:`FileNode` {`nID`:619, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_283371:`Module` {`git_repos`:"net.echinopsii.ariane.community.messaging.git", `nID`:620, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.1-SNAPSHOT"})
create (_283372:`FileNode` {`nID`:621, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_283373:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:622, `name`:"base", `order`:1, `version`:"0.4.2-SNAPSHOT"})
create (_283374:`FileNode` {`nID`:623, `name`:"ariane.community.core.idm-master.SNAPSHOT.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2-SNAPSHOT"})
create (_283375:`FileNode` {`nID`:624, `name`:"net.echinopsii.ariane.community.core.idm_master.SNAPSHOT.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2-SNAPSHOT"})
create (_283376:`FileNode` {`nID`:625, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_283377:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.idm.git", `nID`:626, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2-SNAPSHOT"})
create (_283378:`FileNode` {`nID`:627, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_283379:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:628, `name`:"base", `order`:1, `version`:"0.6.4-SNAPSHOT"})
create (_283380:`FileNode` {`nID`:629, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_283381:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:630, `name`:"wat", `order`:2, `version`:"0.6.4-SNAPSHOT"})
create (_283382:`FileNode` {`nID`:631, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_283383:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:632, `name`:"idmwat", `order`:3, `version`:"0.6.4-SNAPSHOT"})
create (_283384:`FileNode` {`nID`:633, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_283385:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:634, `name`:"wab", `order`:4, `version`:"0.6.4-SNAPSHOT"})
create (_283386:`FileNode` {`nID`:635, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_283387:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:636, `name`:"wresources", `order`:5, `version`:"0.6.4-SNAPSHOT"})
create (_283388:`FileNode` {`nID`:637, `name`:"ariane.community.core.portal-master.SNAPSHOT.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.4-SNAPSHOT"})
create (_283389:`FileNode` {`nID`:638, `name`:"net.echinopsii.ariane.community.core.portal_master.SNAPSHOT.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.4-SNAPSHOT"})
create (_283390:`FileNode` {`nID`:639, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_283391:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.portal.git", `nID`:640, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.4-SNAPSHOT"})
create (_283392:`FileNode` {`nID`:641, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_283393:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:642, `name`:"api", `order`:1, `version`:"0.6.4-SNAPSHOT"})
create (_283394:`FileNode` {`nID`:643, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_283395:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:644, `name`:"blueprints", `order`:2, `version`:"0.6.4-SNAPSHOT"})
create (_283396:`FileNode` {`nID`:645, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_283397:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:646, `name`:"rim", `order`:3, `version`:"0.6.4-SNAPSHOT"})
create (_283398:`FileNode` {`nID`:647, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_283399:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:648, `name`:"dsl", `order`:4, `version`:"0.6.4-SNAPSHOT"})
create (_283400:`FileNode` {`nID`:649, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_283401:`SubModuleParent` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:650, `name`:"ds", `order`:5, `version`:"0.6.4-SNAPSHOT"})
create (_283402:`FileNode` {`nID`:651, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_283403:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:652, `name`:"taitale", `order`:6, `version`:"0.6.4-SNAPSHOT"})
create (_283404:`FileNode` {`nID`:653, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_283405:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:654, `name`:"wat", `order`:7, `version`:"0.6.4-SNAPSHOT"})
create (_283406:`FileNode` {`nID`:655, `name`:"ariane.community.core.mapping-master.SNAPSHOT.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.4-SNAPSHOT"})
create (_283407:`FileNode` {`nID`:656, `name`:"net.echinopsii.ariane.community.core.mapping_master.SNAPSHOT.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.4-SNAPSHOT"})
create (_283408:`FileNode` {`nID`:657, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_283409:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.mapping.git", `nID`:658, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.4-SNAPSHOT"})
create (_283410:`FileNode` {`nID`:659, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_283411:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:660, `name`:"base", `order`:1, `version`:"0.6.4-SNAPSHOT"})
create (_283412:`FileNode` {`nID`:661, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_283413:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:662, `name`:"wat", `order`:2, `version`:"0.6.4-SNAPSHOT"})
create (_283414:`FileNode` {`nID`:663, `name`:"ariane.community.core.directory-master.SNAPSHOT.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.4-SNAPSHOT"})
create (_283415:`FileNode` {`nID`:664, `name`:"net.echinopsii.ariane.community.core.directory_master.SNAPSHOT.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.4-SNAPSHOT"})
create (_283416:`FileNode` {`nID`:665, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_283417:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.directory.git", `nID`:666, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.4-SNAPSHOT"})
create (_283418:`FileNode` {`nID`:667, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_283419:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:668, `name`:"base", `order`:1, `version`:"0.6.4-SNAPSHOT"})
create (_283420:`FileNode` {`nID`:669, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_283421:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:670, `name`:"messaging", `order`:2, `version`:"0.6.4-SNAPSHOT"})
create (_283422:`FileNode` {`nID`:671, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_283423:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:672, `name`:"wat", `order`:3, `version`:"0.6.4-SNAPSHOT"})
create (_283424:`FileNode` {`nID`:673, `name`:"ariane.community.core.injector-master.SNAPSHOT.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.4-SNAPSHOT"})
create (_283425:`FileNode` {`nID`:674, `name`:"net.echinopsii.ariane.community.core.injector_master.SNAPSHOT.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.4-SNAPSHOT"})
create (_283426:`FileNode` {`nID`:675, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_283427:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.injector.git", `nID`:676, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.4-SNAPSHOT"})
create (_283428:`Module` {`git_repos`:"net.echinopsii.ariane.community.environment.git", `nID`:677, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.4-SNAPSHOT"})
create (_283429:`FileNode` {`nID`:678, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_283430:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:679, `name`:"directory", `order`:1, `version`:"0.2.4-SNAPSHOT"})
create (_283431:`FileNode` {`nID`:680, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_283432:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:681, `name`:"jsonparser", `order`:2, `version`:"0.2.4-SNAPSHOT"})
create (_283433:`FileNode` {`nID`:682, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_283434:`SubModule` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:683, `name`:"injector", `order`:3, `version`:"0.2.4-SNAPSHOT"})
create (_283435:`FileNode` {`nID`:684, `name`:"ariane.community.plugin.rabbitmq-master.SNAPSHOT.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.4-SNAPSHOT"})
create (_283436:`FileNode` {`nID`:685, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_master.SNAPSHOT.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.4-SNAPSHOT"})
create (_283437:`FileNode` {`nID`:686, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_283438:`FileNode` {`nID`:687, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.4-SNAPSHOT"})
create (_283439:`Plugin` {`nID`:688, `name`:"rabbitmq", `version`:"0.2.4-SNAPSHOT"})
create (_283440:`FileNode` {`nID`:689, `name`:"ariane.community.distrib-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.4-SNAPSHOT"})
create (_283441:`FileNode` {`nID`:690, `name`:"pom-ariane.community.distrib-master.SNAPSHOT.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.4-SNAPSHOT"})
create (_283442:`FileNode` {`nID`:691, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.4-SNAPSHOT"})
create (_283443:`FileNode` {`nID`:692, `name`:"ariane.community.plugins-distrib-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.4-SNAPSHOT"})
create (_283444:`FileNode` {`nID`:693, `name`:"ariane.community.git.repos-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.4-SNAPSHOT"})
create (_283445:`Distribution` {`editable`:"false", `nID`:694, `name`:"community", `version`:"0.6.4-SNAPSHOT"})
create _282756-[:`DEPENDS ON`]->_282817
create _282756-[:`CONTAINS`]->_282755
create _282758-[:`CONTAINS`]->_282757
create _282762-[:`COMPOSED OF`]->_282758
create _282762-[:`DEPENDS ON`]->_282817
create _282762-[:`CONTAINS`]->_282759
create _282762-[:`CONTAINS`]->_282761
create _282762-[:`CONTAINS`]->_282760
create _282764-[:`CONTAINS`]->_282763
create _282766-[:`CONTAINS`]->_282765
create _282768-[:`CONTAINS`]->_282767
create _282770-[:`CONTAINS`]->_282769
create _282772-[:`CONTAINS`]->_282771
create _282776-[:`COMPOSED OF`]->_282766
create _282776-[:`COMPOSED OF`]->_282768
create _282776-[:`COMPOSED OF`]->_282764
create _282776-[:`COMPOSED OF`]->_282772
create _282776-[:`COMPOSED OF`]->_282770
create _282776-[:`DEPENDS ON`]->_282817
create _282776-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_282762
create _282776-[:`CONTAINS`]->_282775
create _282776-[:`CONTAINS`]->_282773
create _282776-[:`CONTAINS`]->_282774
create _282778-[:`CONTAINS`]->_282777
create _282780-[:`CONTAINS`]->_282779
create _282782-[:`CONTAINS`]->_282781
create _282784-[:`CONTAINS`]->_282783
create _282786-[:`COMPOSED OF`]->_282782
create _282786-[:`COMPOSED OF`]->_282784
create _282786-[:`COMPOSED OF`]->_282778
create _282786-[:`COMPOSED OF`]->_282780
create _282786-[:`CONTAINS`]->_282785
create _282788-[:`CONTAINS`]->_282787
create _282790-[:`CONTAINS`]->_282789
create _282794-[:`COMPOSED OF`]->_282790
create _282794-[:`COMPOSED OF`]->_282788
create _282794-[:`COMPOSED OF`]->_282786
create _282794-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_282776
create _282794-[:`DEPENDS ON`]->_282817
create _282794-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_282762
create _282794-[:`CONTAINS`]->_282792
create _282794-[:`CONTAINS`]->_282791
create _282794-[:`CONTAINS`]->_282793
create _282796-[:`CONTAINS`]->_282795
create _282798-[:`CONTAINS`]->_282797
create _282802-[:`COMPOSED OF`]->_282798
create _282802-[:`COMPOSED OF`]->_282796
create _282802-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_282776
create _282802-[:`DEPENDS ON`]->_282817
create _282802-[:`CONTAINS`]->_282800
create _282802-[:`CONTAINS`]->_282801
create _282802-[:`CONTAINS`]->_282799
create _282804-[:`CONTAINS`]->_282803
create _282806-[:`CONTAINS`]->_282805
create _282810-[:`COMPOSED OF`]->_282804
create _282810-[:`COMPOSED OF`]->_282806
create _282810-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_282776
create _282810-[:`DEPENDS ON`]->_282817
create _282810-[:`CONTAINS`]->_282809
create _282810-[:`CONTAINS`]->_282807
create _282810-[:`CONTAINS`]->_282808
create _282811-[:`DEPENDS ON`]->_282817
create _282817-[:`CONTAINS`]->_282816
create _282817-[:`CONTAINS`]->_282814
create _282817-[:`CONTAINS`]->_282815
create _282817-[:`CONTAINS`]->_282812
create _282817-[:`CONTAINS`]->_282813
create _282822-[:`DEPENDS ON`]->_282883
create _282822-[:`CONTAINS`]->_282821
create _282824-[:`CONTAINS`]->_282823
create _282828-[:`COMPOSED OF`]->_282824
create _282828-[:`DEPENDS ON`]->_282883
create _282828-[:`CONTAINS`]->_282826
create _282828-[:`CONTAINS`]->_282827
create _282828-[:`CONTAINS`]->_282825
create _282830-[:`CONTAINS`]->_282829
create _282832-[:`CONTAINS`]->_282831
create _282834-[:`CONTAINS`]->_282833
create _282836-[:`CONTAINS`]->_282835
create _282838-[:`CONTAINS`]->_282837
create _282842-[:`COMPOSED OF`]->_282838
create _282842-[:`COMPOSED OF`]->_282836
create _282842-[:`COMPOSED OF`]->_282834
create _282842-[:`COMPOSED OF`]->_282832
create _282842-[:`COMPOSED OF`]->_282830
create _282842-[:`DEPENDS ON`]->_282883
create _282842-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_282828
create _282842-[:`CONTAINS`]->_282840
create _282842-[:`CONTAINS`]->_282839
create _282842-[:`CONTAINS`]->_282841
create _282844-[:`CONTAINS`]->_282843
create _282846-[:`CONTAINS`]->_282845
create _282848-[:`CONTAINS`]->_282847
create _282850-[:`CONTAINS`]->_282849
create _282852-[:`COMPOSED OF`]->_282844
create _282852-[:`COMPOSED OF`]->_282846
create _282852-[:`COMPOSED OF`]->_282848
create _282852-[:`COMPOSED OF`]->_282850
create _282852-[:`CONTAINS`]->_282851
create _282854-[:`CONTAINS`]->_282853
create _282856-[:`CONTAINS`]->_282855
create _282860-[:`COMPOSED OF`]->_282852
create _282860-[:`COMPOSED OF`]->_282854
create _282860-[:`COMPOSED OF`]->_282856
create _282860-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_282842
create _282860-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_282828
create _282860-[:`DEPENDS ON`]->_282883
create _282860-[:`CONTAINS`]->_282858
create _282860-[:`CONTAINS`]->_282857
create _282860-[:`CONTAINS`]->_282859
create _282862-[:`CONTAINS`]->_282861
create _282864-[:`CONTAINS`]->_282863
create _282868-[:`COMPOSED OF`]->_282864
create _282868-[:`COMPOSED OF`]->_282862
create _282868-[:`DEPENDS ON`]->_282883
create _282868-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_282842
create _282868-[:`CONTAINS`]->_282865
create _282868-[:`CONTAINS`]->_282867
create _282868-[:`CONTAINS`]->_282866
create _282870-[:`CONTAINS`]->_282869
create _282872-[:`CONTAINS`]->_282871
create _282876-[:`COMPOSED OF`]->_282870
create _282876-[:`COMPOSED OF`]->_282872
create _282876-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_282842
create _282876-[:`DEPENDS ON`]->_282883
create _282876-[:`CONTAINS`]->_282875
create _282876-[:`CONTAINS`]->_282873
create _282876-[:`CONTAINS`]->_282874
create _282877-[:`DEPENDS ON`]->_282883
create _282883-[:`CONTAINS`]->_282882
create _282883-[:`CONTAINS`]->_282880
create _282883-[:`CONTAINS`]->_282881
create _282883-[:`CONTAINS`]->_282878
create _282883-[:`CONTAINS`]->_282879
create _282888-[:`DEPENDS ON`]->_282949
create _282888-[:`CONTAINS`]->_282887
create _282890-[:`CONTAINS`]->_282889
create _282894-[:`COMPOSED OF`]->_282890
create _282894-[:`DEPENDS ON`]->_282949
create _282894-[:`CONTAINS`]->_282893
create _282894-[:`CONTAINS`]->_282892
create _282894-[:`CONTAINS`]->_282891
create _282896-[:`CONTAINS`]->_282895
create _282898-[:`CONTAINS`]->_282897
create _282900-[:`CONTAINS`]->_282899
create _282902-[:`CONTAINS`]->_282901
create _282904-[:`CONTAINS`]->_282903
create _282908-[:`COMPOSED OF`]->_282904
create _282908-[:`COMPOSED OF`]->_282902
create _282908-[:`COMPOSED OF`]->_282900
create _282908-[:`COMPOSED OF`]->_282898
create _282908-[:`COMPOSED OF`]->_282896
create _282908-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_282894
create _282908-[:`DEPENDS ON`]->_282949
create _282908-[:`CONTAINS`]->_282905
create _282908-[:`CONTAINS`]->_282906
create _282908-[:`CONTAINS`]->_282907
create _282910-[:`CONTAINS`]->_282909
create _282912-[:`CONTAINS`]->_282911
create _282914-[:`CONTAINS`]->_282913
create _282916-[:`CONTAINS`]->_282915
create _282918-[:`COMPOSED OF`]->_282910
create _282918-[:`COMPOSED OF`]->_282912
create _282918-[:`COMPOSED OF`]->_282914
create _282918-[:`COMPOSED OF`]->_282916
create _282918-[:`CONTAINS`]->_282917
create _282920-[:`CONTAINS`]->_282919
create _282922-[:`CONTAINS`]->_282921
create _282926-[:`COMPOSED OF`]->_282920
create _282926-[:`COMPOSED OF`]->_282918
create _282926-[:`COMPOSED OF`]->_282922
create _282926-[:`DEPENDS ON`]->_282949
create _282926-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_282894
create _282926-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_282908
create _282926-[:`CONTAINS`]->_282924
create _282926-[:`CONTAINS`]->_282923
create _282926-[:`CONTAINS`]->_282925
create _282928-[:`CONTAINS`]->_282927
create _282930-[:`CONTAINS`]->_282929
create _282934-[:`COMPOSED OF`]->_282930
create _282934-[:`COMPOSED OF`]->_282928
create _282934-[:`DEPENDS ON`]->_282949
create _282934-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_282908
create _282934-[:`CONTAINS`]->_282933
create _282934-[:`CONTAINS`]->_282932
create _282934-[:`CONTAINS`]->_282931
create _282936-[:`CONTAINS`]->_282935
create _282938-[:`CONTAINS`]->_282937
create _282942-[:`COMPOSED OF`]->_282938
create _282942-[:`COMPOSED OF`]->_282936
create _282942-[:`DEPENDS ON`]->_282949
create _282942-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_282908
create _282942-[:`CONTAINS`]->_282941
create _282942-[:`CONTAINS`]->_282939
create _282942-[:`CONTAINS`]->_282940
create _282943-[:`DEPENDS ON`]->_282949
create _282949-[:`CONTAINS`]->_282948
create _282949-[:`CONTAINS`]->_282946
create _282949-[:`CONTAINS`]->_282947
create _282949-[:`CONTAINS`]->_282944
create _282949-[:`CONTAINS`]->_282945
create _282954-[:`DEPENDS ON`]->_283026
create _282954-[:`CONTAINS`]->_282953
create _282956-[:`CONTAINS`]->_282955
create _282960-[:`COMPOSED OF`]->_282956
create _282960-[:`DEPENDS ON`]->_283026
create _282960-[:`CONTAINS`]->_282959
create _282960-[:`CONTAINS`]->_282958
create _282960-[:`CONTAINS`]->_282957
create _282962-[:`CONTAINS`]->_282961
create _282964-[:`CONTAINS`]->_282963
create _282966-[:`CONTAINS`]->_282965
create _282968-[:`CONTAINS`]->_282967
create _282970-[:`CONTAINS`]->_282969
create _282974-[:`COMPOSED OF`]->_282964
create _282974-[:`COMPOSED OF`]->_282966
create _282974-[:`COMPOSED OF`]->_282968
create _282974-[:`COMPOSED OF`]->_282970
create _282974-[:`COMPOSED OF`]->_282962
create _282974-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_282960
create _282974-[:`DEPENDS ON`]->_283026
create _282974-[:`CONTAINS`]->_282973
create _282974-[:`CONTAINS`]->_282971
create _282974-[:`CONTAINS`]->_282972
create _282976-[:`CONTAINS`]->_282975
create _282978-[:`CONTAINS`]->_282977
create _282980-[:`CONTAINS`]->_282979
create _282982-[:`CONTAINS`]->_282981
create _282984-[:`COMPOSED OF`]->_282978
create _282984-[:`COMPOSED OF`]->_282976
create _282984-[:`COMPOSED OF`]->_282980
create _282984-[:`COMPOSED OF`]->_282982
create _282984-[:`CONTAINS`]->_282983
create _282986-[:`CONTAINS`]->_282985
create _282988-[:`CONTAINS`]->_282987
create _282992-[:`COMPOSED OF`]->_282986
create _282992-[:`COMPOSED OF`]->_282984
create _282992-[:`COMPOSED OF`]->_282988
create _282992-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_282974
create _282992-[:`DEPENDS ON`]->_283026
create _282992-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_282960
create _282992-[:`CONTAINS`]->_282991
create _282992-[:`CONTAINS`]->_282990
create _282992-[:`CONTAINS`]->_282989
create _282994-[:`CONTAINS`]->_282993
create _282996-[:`CONTAINS`]->_282995
create _283000-[:`COMPOSED OF`]->_282994
create _283000-[:`COMPOSED OF`]->_282996
create _283000-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_282974
create _283000-[:`DEPENDS ON`]->_283026
create _283000-[:`CONTAINS`]->_282998
create _283000-[:`CONTAINS`]->_282999
create _283000-[:`CONTAINS`]->_282997
create _283002-[:`CONTAINS`]->_283001
create _283004-[:`CONTAINS`]->_283003
create _283008-[:`COMPOSED OF`]->_283004
create _283008-[:`COMPOSED OF`]->_283002
create _283008-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_282974
create _283008-[:`DEPENDS ON`]->_283026
create _283008-[:`CONTAINS`]->_283007
create _283008-[:`CONTAINS`]->_283005
create _283008-[:`CONTAINS`]->_283006
create _283009-[:`DEPENDS ON`]->_283026
create _283011-[:`CONTAINS`]->_283010
create _283013-[:`CONTAINS`]->_283012
create _283015-[:`CONTAINS`]->_283014
create _283020-[:`COMPOSED OF`]->_283015
create _283020-[:`COMPOSED OF`]->_283013
create _283020-[:`COMPOSED OF`]->_283011
create _283020-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_283008
create _283020-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_282974
create _283020-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_283000
create _283020-[:`DEPENDS ON` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_282992
create _283020-[:`COMPATIBLE WITH`]->_283026
create _283020-[:`CONTAINS`]->_283019
create _283020-[:`CONTAINS`]->_283018
create _283020-[:`CONTAINS`]->_283017
create _283020-[:`CONTAINS`]->_283016
create _283026-[:`CONTAINS`]->_283021
create _283026-[:`CONTAINS`]->_283022
create _283026-[:`CONTAINS`]->_283023
create _283026-[:`CONTAINS`]->_283024
create _283026-[:`CONTAINS`]->_283025
create _283031-[:`DEPENDS ON`]->_283105
create _283031-[:`CONTAINS`]->_283030
create _283033-[:`CONTAINS`]->_283032
create _283037-[:`COMPOSED OF`]->_283033
create _283037-[:`DEPENDS ON`]->_283105
create _283037-[:`CONTAINS`]->_283034
create _283037-[:`CONTAINS`]->_283035
create _283037-[:`CONTAINS`]->_283036
create _283039-[:`CONTAINS`]->_283038
create _283041-[:`CONTAINS`]->_283040
create _283043-[:`CONTAINS`]->_283042
create _283045-[:`CONTAINS`]->_283044
create _283047-[:`CONTAINS`]->_283046
create _283051-[:`COMPOSED OF`]->_283045
create _283051-[:`COMPOSED OF`]->_283043
create _283051-[:`COMPOSED OF`]->_283047
create _283051-[:`COMPOSED OF`]->_283041
create _283051-[:`COMPOSED OF`]->_283039
create _283051-[:`DEPENDS ON`]->_283105
create _283051-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_283037
create _283051-[:`CONTAINS`]->_283048
create _283051-[:`CONTAINS`]->_283050
create _283051-[:`CONTAINS`]->_283049
create _283053-[:`CONTAINS`]->_283052
create _283055-[:`CONTAINS`]->_283054
create _283057-[:`CONTAINS`]->_283056
create _283059-[:`CONTAINS`]->_283058
create _283061-[:`COMPOSED OF`]->_283059
create _283061-[:`COMPOSED OF`]->_283057
create _283061-[:`COMPOSED OF`]->_283055
create _283061-[:`COMPOSED OF`]->_283053
create _283061-[:`CONTAINS`]->_283060
create _283063-[:`CONTAINS`]->_283062
create _283065-[:`CONTAINS`]->_283064
create _283069-[:`COMPOSED OF`]->_283065
create _283069-[:`COMPOSED OF`]->_283063
create _283069-[:`COMPOSED OF`]->_283061
create _283069-[:`DEPENDS ON`]->_283105
create _283069-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_283037
create _283069-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283051
create _283069-[:`CONTAINS`]->_283067
create _283069-[:`CONTAINS`]->_283068
create _283069-[:`CONTAINS`]->_283066
create _283071-[:`CONTAINS`]->_283070
create _283073-[:`CONTAINS`]->_283072
create _283077-[:`COMPOSED OF`]->_283073
create _283077-[:`COMPOSED OF`]->_283071
create _283077-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283051
create _283077-[:`DEPENDS ON`]->_283105
create _283077-[:`CONTAINS`]->_283076
create _283077-[:`CONTAINS`]->_283074
create _283077-[:`CONTAINS`]->_283075
create _283079-[:`CONTAINS`]->_283078
create _283081-[:`CONTAINS`]->_283080
create _283083-[:`CONTAINS`]->_283082
create _283087-[:`COMPOSED OF`]->_283081
create _283087-[:`COMPOSED OF`]->_283079
create _283087-[:`COMPOSED OF`]->_283083
create _283087-[:`DEPENDS ON`]->_283105
create _283087-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283051
create _283087-[:`CONTAINS`]->_283084
create _283087-[:`CONTAINS`]->_283086
create _283087-[:`CONTAINS`]->_283085
create _283088-[:`DEPENDS ON`]->_283105
create _283090-[:`CONTAINS`]->_283089
create _283092-[:`CONTAINS`]->_283091
create _283094-[:`CONTAINS`]->_283093
create _283099-[:`COMPOSED OF`]->_283094
create _283099-[:`COMPOSED OF`]->_283092
create _283099-[:`COMPOSED OF`]->_283090
create _283099-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283069
create _283099-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283077
create _283099-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283087
create _283099-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283051
create _283099-[:`COMPATIBLE WITH` {`version_max`:"0.2.1", `version_min`:"0.2.0"}]->_283105
create _283099-[:`CONTAINS`]->_283098
create _283099-[:`CONTAINS`]->_283095
create _283099-[:`CONTAINS`]->_283096
create _283099-[:`CONTAINS`]->_283097
create _283105-[:`CONTAINS`]->_283100
create _283105-[:`CONTAINS`]->_283101
create _283105-[:`CONTAINS`]->_283102
create _283105-[:`CONTAINS`]->_283103
create _283105-[:`CONTAINS`]->_283104
create _283110-[:`DEPENDS ON`]->_283184
create _283110-[:`CONTAINS`]->_283109
create _283112-[:`CONTAINS`]->_283111
create _283116-[:`COMPOSED OF`]->_283112
create _283116-[:`DEPENDS ON`]->_283184
create _283116-[:`CONTAINS`]->_283115
create _283116-[:`CONTAINS`]->_283114
create _283116-[:`CONTAINS`]->_283113
create _283118-[:`CONTAINS`]->_283117
create _283120-[:`CONTAINS`]->_283119
create _283122-[:`CONTAINS`]->_283121
create _283124-[:`CONTAINS`]->_283123
create _283126-[:`CONTAINS`]->_283125
create _283130-[:`COMPOSED OF`]->_283118
create _283130-[:`COMPOSED OF`]->_283126
create _283130-[:`COMPOSED OF`]->_283124
create _283130-[:`COMPOSED OF`]->_283122
create _283130-[:`COMPOSED OF`]->_283120
create _283130-[:`DEPENDS ON`]->_283184
create _283130-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_283116
create _283130-[:`CONTAINS`]->_283127
create _283130-[:`CONTAINS`]->_283128
create _283130-[:`CONTAINS`]->_283129
create _283132-[:`CONTAINS`]->_283131
create _283134-[:`CONTAINS`]->_283133
create _283136-[:`CONTAINS`]->_283135
create _283138-[:`CONTAINS`]->_283137
create _283140-[:`COMPOSED OF`]->_283132
create _283140-[:`COMPOSED OF`]->_283134
create _283140-[:`COMPOSED OF`]->_283136
create _283140-[:`COMPOSED OF`]->_283138
create _283140-[:`CONTAINS`]->_283139
create _283142-[:`CONTAINS`]->_283141
create _283144-[:`CONTAINS`]->_283143
create _283148-[:`COMPOSED OF`]->_283142
create _283148-[:`COMPOSED OF`]->_283140
create _283148-[:`COMPOSED OF`]->_283144
create _283148-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283130
create _283148-[:`DEPENDS ON`]->_283184
create _283148-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_283116
create _283148-[:`CONTAINS`]->_283146
create _283148-[:`CONTAINS`]->_283145
create _283148-[:`CONTAINS`]->_283147
create _283150-[:`CONTAINS`]->_283149
create _283152-[:`CONTAINS`]->_283151
create _283156-[:`COMPOSED OF`]->_283152
create _283156-[:`COMPOSED OF`]->_283150
create _283156-[:`DEPENDS ON`]->_283184
create _283156-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283130
create _283156-[:`CONTAINS`]->_283153
create _283156-[:`CONTAINS`]->_283154
create _283156-[:`CONTAINS`]->_283155
create _283158-[:`CONTAINS`]->_283157
create _283160-[:`CONTAINS`]->_283159
create _283162-[:`CONTAINS`]->_283161
create _283166-[:`COMPOSED OF`]->_283158
create _283166-[:`COMPOSED OF`]->_283160
create _283166-[:`COMPOSED OF`]->_283162
create _283166-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283130
create _283166-[:`DEPENDS ON`]->_283184
create _283166-[:`CONTAINS`]->_283163
create _283166-[:`CONTAINS`]->_283164
create _283166-[:`CONTAINS`]->_283165
create _283167-[:`DEPENDS ON`]->_283184
create _283169-[:`CONTAINS`]->_283168
create _283171-[:`CONTAINS`]->_283170
create _283173-[:`CONTAINS`]->_283172
create _283178-[:`COMPOSED OF`]->_283171
create _283178-[:`COMPOSED OF`]->_283173
create _283178-[:`COMPOSED OF`]->_283169
create _283178-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283156
create _283178-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283130
create _283178-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283166
create _283178-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283148
create _283178-[:`COMPATIBLE WITH`]->_283184
create _283178-[:`CONTAINS`]->_283176
create _283178-[:`CONTAINS`]->_283177
create _283178-[:`CONTAINS`]->_283174
create _283178-[:`CONTAINS`]->_283175
create _283184-[:`CONTAINS`]->_283182
create _283184-[:`CONTAINS`]->_283183
create _283184-[:`CONTAINS`]->_283179
create _283184-[:`CONTAINS`]->_283181
create _283184-[:`CONTAINS`]->_283180
create _283189-[:`DEPENDS ON`]->_283271
create _283189-[:`CONTAINS`]->_283188
create _283191-[:`CONTAINS`]->_283190
create _283193-[:`CONTAINS`]->_283192
create _283197-[:`COMPOSED OF`]->_283193
create _283197-[:`COMPOSED OF`]->_283191
create _283197-[:`DEPENDS ON`]->_283271
create _283197-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283198
create _283197-[:`CONTAINS`]->_283194
create _283197-[:`CONTAINS`]->_283196
create _283197-[:`CONTAINS`]->_283195
create _283198-[:`COMPOSED OF`]->_283214
create _283198-[:`COMPOSED OF`]->_283210
create _283198-[:`COMPOSED OF`]->_283212
create _283198-[:`COMPOSED OF`]->_283206
create _283198-[:`COMPOSED OF`]->_283208
create _283198-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_283204
create _283198-[:`DEPENDS ON`]->_283271
create _283198-[:`CONTAINS`]->_283216
create _283198-[:`CONTAINS`]->_283217
create _283198-[:`CONTAINS`]->_283215
create _283200-[:`CONTAINS`]->_283199
create _283204-[:`COMPOSED OF`]->_283200
create _283204-[:`DEPENDS ON`]->_283271
create _283204-[:`CONTAINS`]->_283202
create _283204-[:`CONTAINS`]->_283203
create _283204-[:`CONTAINS`]->_283201
create _283206-[:`CONTAINS`]->_283205
create _283208-[:`CONTAINS`]->_283207
create _283210-[:`CONTAINS`]->_283209
create _283212-[:`CONTAINS`]->_283211
create _283214-[:`CONTAINS`]->_283213
create _283219-[:`CONTAINS`]->_283218
create _283221-[:`CONTAINS`]->_283220
create _283223-[:`CONTAINS`]->_283222
create _283225-[:`CONTAINS`]->_283224
create _283227-[:`COMPOSED OF`]->_283225
create _283227-[:`COMPOSED OF`]->_283223
create _283227-[:`COMPOSED OF`]->_283221
create _283227-[:`COMPOSED OF`]->_283219
create _283227-[:`CONTAINS`]->_283226
create _283229-[:`CONTAINS`]->_283228
create _283231-[:`CONTAINS`]->_283230
create _283235-[:`COMPOSED OF`]->_283227
create _283235-[:`COMPOSED OF`]->_283229
create _283235-[:`COMPOSED OF`]->_283231
create _283235-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283198
create _283235-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_283204
create _283235-[:`DEPENDS ON`]->_283271
create _283235-[:`CONTAINS`]->_283234
create _283235-[:`CONTAINS`]->_283232
create _283235-[:`CONTAINS`]->_283233
create _283237-[:`CONTAINS`]->_283236
create _283239-[:`CONTAINS`]->_283238
create _283243-[:`COMPOSED OF`]->_283237
create _283243-[:`COMPOSED OF`]->_283239
create _283243-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283198
create _283243-[:`DEPENDS ON`]->_283271
create _283243-[:`CONTAINS`]->_283240
create _283243-[:`CONTAINS`]->_283242
create _283243-[:`CONTAINS`]->_283241
create _283245-[:`CONTAINS`]->_283244
create _283247-[:`CONTAINS`]->_283246
create _283249-[:`CONTAINS`]->_283248
create _283253-[:`COMPOSED OF`]->_283249
create _283253-[:`COMPOSED OF`]->_283247
create _283253-[:`COMPOSED OF`]->_283245
create _283253-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_283197
create _283253-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283198
create _283253-[:`DEPENDS ON`]->_283271
create _283253-[:`CONTAINS`]->_283250
create _283253-[:`CONTAINS`]->_283252
create _283253-[:`CONTAINS`]->_283251
create _283254-[:`DEPENDS ON`]->_283271
create _283256-[:`CONTAINS`]->_283255
create _283258-[:`CONTAINS`]->_283257
create _283260-[:`CONTAINS`]->_283259
create _283265-[:`COMPOSED OF`]->_283256
create _283265-[:`COMPOSED OF`]->_283258
create _283265-[:`COMPOSED OF`]->_283260
create _283265-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283198
create _283265-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283253
create _283265-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283235
create _283265-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283243
create _283265-[:`COMPATIBLE WITH`]->_283271
create _283265-[:`CONTAINS`]->_283262
create _283265-[:`CONTAINS`]->_283263
create _283265-[:`CONTAINS`]->_283261
create _283265-[:`CONTAINS`]->_283264
create _283271-[:`CONTAINS`]->_283270
create _283271-[:`CONTAINS`]->_283269
create _283271-[:`CONTAINS`]->_283268
create _283271-[:`CONTAINS`]->_283267
create _283271-[:`CONTAINS`]->_283266
create _283276-[:`DEPENDS ON`]->_283358
create _283276-[:`CONTAINS`]->_283275
create _283278-[:`CONTAINS`]->_283277
create _283280-[:`CONTAINS`]->_283279
create _283284-[:`COMPOSED OF`]->_283278
create _283284-[:`COMPOSED OF`]->_283280
create _283284-[:`DEPENDS ON`]->_283358
create _283284-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283285
create _283284-[:`CONTAINS`]->_283282
create _283284-[:`CONTAINS`]->_283281
create _283284-[:`CONTAINS`]->_283283
create _283285-[:`COMPOSED OF`]->_283301
create _283285-[:`COMPOSED OF`]->_283299
create _283285-[:`COMPOSED OF`]->_283293
create _283285-[:`COMPOSED OF`]->_283297
create _283285-[:`COMPOSED OF`]->_283295
create _283285-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_283291
create _283285-[:`DEPENDS ON`]->_283358
create _283285-[:`CONTAINS`]->_283303
create _283285-[:`CONTAINS`]->_283302
create _283285-[:`CONTAINS`]->_283304
create _283287-[:`CONTAINS`]->_283286
create _283291-[:`COMPOSED OF`]->_283287
create _283291-[:`DEPENDS ON`]->_283358
create _283291-[:`CONTAINS`]->_283290
create _283291-[:`CONTAINS`]->_283288
create _283291-[:`CONTAINS`]->_283289
create _283293-[:`CONTAINS`]->_283292
create _283295-[:`CONTAINS`]->_283294
create _283297-[:`CONTAINS`]->_283296
create _283299-[:`CONTAINS`]->_283298
create _283301-[:`CONTAINS`]->_283300
create _283306-[:`CONTAINS`]->_283305
create _283308-[:`CONTAINS`]->_283307
create _283310-[:`CONTAINS`]->_283309
create _283312-[:`CONTAINS`]->_283311
create _283314-[:`COMPOSED OF`]->_283312
create _283314-[:`COMPOSED OF`]->_283306
create _283314-[:`COMPOSED OF`]->_283308
create _283314-[:`COMPOSED OF`]->_283310
create _283314-[:`CONTAINS`]->_283313
create _283316-[:`CONTAINS`]->_283315
create _283318-[:`CONTAINS`]->_283317
create _283322-[:`COMPOSED OF`]->_283318
create _283322-[:`COMPOSED OF`]->_283316
create _283322-[:`COMPOSED OF`]->_283314
create _283322-[:`DEPENDS ON`]->_283358
create _283322-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_283291
create _283322-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283285
create _283322-[:`CONTAINS`]->_283321
create _283322-[:`CONTAINS`]->_283320
create _283322-[:`CONTAINS`]->_283319
create _283324-[:`CONTAINS`]->_283323
create _283326-[:`CONTAINS`]->_283325
create _283330-[:`COMPOSED OF`]->_283326
create _283330-[:`COMPOSED OF`]->_283324
create _283330-[:`DEPENDS ON`]->_283358
create _283330-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283285
create _283330-[:`CONTAINS`]->_283329
create _283330-[:`CONTAINS`]->_283327
create _283330-[:`CONTAINS`]->_283328
create _283332-[:`CONTAINS`]->_283331
create _283334-[:`CONTAINS`]->_283333
create _283336-[:`CONTAINS`]->_283335
create _283340-[:`COMPOSED OF`]->_283332
create _283340-[:`COMPOSED OF`]->_283334
create _283340-[:`COMPOSED OF`]->_283336
create _283340-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_283284
create _283340-[:`DEPENDS ON`]->_283358
create _283340-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283285
create _283340-[:`CONTAINS`]->_283339
create _283340-[:`CONTAINS`]->_283337
create _283340-[:`CONTAINS`]->_283338
create _283341-[:`DEPENDS ON`]->_283358
create _283343-[:`CONTAINS`]->_283342
create _283345-[:`CONTAINS`]->_283344
create _283347-[:`CONTAINS`]->_283346
create _283352-[:`COMPOSED OF`]->_283343
create _283352-[:`COMPOSED OF`]->_283347
create _283352-[:`COMPOSED OF`]->_283345
create _283352-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283322
create _283352-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283285
create _283352-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283330
create _283352-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283340
create _283352-[:`COMPATIBLE WITH`]->_283358
create _283352-[:`CONTAINS`]->_283349
create _283352-[:`CONTAINS`]->_283348
create _283352-[:`CONTAINS`]->_283351
create _283352-[:`CONTAINS`]->_283350
create _283358-[:`CONTAINS`]->_283353
create _283358-[:`CONTAINS`]->_283354
create _283358-[:`CONTAINS`]->_283355
create _283358-[:`CONTAINS`]->_283356
create _283358-[:`CONTAINS`]->_283357
create _283363-[:`DEPENDS ON`]->_283445
create _283363-[:`CONTAINS`]->_283362
create _283365-[:`CONTAINS`]->_283364
create _283367-[:`CONTAINS`]->_283366
create _283371-[:`COMPOSED OF`]->_283365
create _283371-[:`COMPOSED OF`]->_283367
create _283371-[:`DEPENDS ON`]->_283445
create _283371-[:`CONTAINS`]->_283369
create _283371-[:`CONTAINS`]->_283368
create _283371-[:`CONTAINS`]->_283370
create _283373-[:`CONTAINS`]->_283372
create _283377-[:`COMPOSED OF`]->_283373
create _283377-[:`DEPENDS ON`]->_283445
create _283377-[:`CONTAINS`]->_283376
create _283377-[:`CONTAINS`]->_283375
create _283377-[:`CONTAINS`]->_283374
create _283379-[:`CONTAINS`]->_283378
create _283381-[:`CONTAINS`]->_283380
create _283383-[:`CONTAINS`]->_283382
create _283385-[:`CONTAINS`]->_283384
create _283387-[:`CONTAINS`]->_283386
create _283391-[:`COMPOSED OF`]->_283387
create _283391-[:`COMPOSED OF`]->_283385
create _283391-[:`COMPOSED OF`]->_283383
create _283391-[:`COMPOSED OF`]->_283379
create _283391-[:`COMPOSED OF`]->_283381
create _283391-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_283377
create _283391-[:`DEPENDS ON`]->_283445
create _283391-[:`CONTAINS`]->_283389
create _283391-[:`CONTAINS`]->_283390
create _283391-[:`CONTAINS`]->_283388
create _283393-[:`CONTAINS`]->_283392
create _283395-[:`CONTAINS`]->_283394
create _283397-[:`CONTAINS`]->_283396
create _283399-[:`CONTAINS`]->_283398
create _283401-[:`COMPOSED OF`]->_283395
create _283401-[:`COMPOSED OF`]->_283397
create _283401-[:`COMPOSED OF`]->_283393
create _283401-[:`COMPOSED OF`]->_283399
create _283401-[:`CONTAINS`]->_283400
create _283403-[:`CONTAINS`]->_283402
create _283405-[:`CONTAINS`]->_283404
create _283409-[:`COMPOSED OF`]->_283401
create _283409-[:`COMPOSED OF`]->_283403
create _283409-[:`COMPOSED OF`]->_283405
create _283409-[:`DEPENDS ON`]->_283445
create _283409-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283391
create _283409-[:`DEPENDS ON` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_283377
create _283409-[:`CONTAINS`]->_283407
create _283409-[:`CONTAINS`]->_283408
create _283409-[:`CONTAINS`]->_283406
create _283411-[:`CONTAINS`]->_283410
create _283413-[:`CONTAINS`]->_283412
create _283417-[:`COMPOSED OF`]->_283413
create _283417-[:`COMPOSED OF`]->_283411
create _283417-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283391
create _283417-[:`DEPENDS ON`]->_283445
create _283417-[:`CONTAINS`]->_283416
create _283417-[:`CONTAINS`]->_283415
create _283417-[:`CONTAINS`]->_283414
create _283419-[:`CONTAINS`]->_283418
create _283421-[:`CONTAINS`]->_283420
create _283423-[:`CONTAINS`]->_283422
create _283427-[:`COMPOSED OF`]->_283423
create _283427-[:`COMPOSED OF`]->_283421
create _283427-[:`COMPOSED OF`]->_283419
create _283427-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283391
create _283427-[:`DEPENDS ON`]->_283445
create _283427-[:`DEPENDS ON` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_283371
create _283427-[:`CONTAINS`]->_283426
create _283427-[:`CONTAINS`]->_283425
create _283427-[:`CONTAINS`]->_283424
create _283428-[:`DEPENDS ON`]->_283445
create _283430-[:`CONTAINS`]->_283429
create _283432-[:`CONTAINS`]->_283431
create _283434-[:`CONTAINS`]->_283433
create _283439-[:`COMPOSED OF`]->_283430
create _283439-[:`COMPOSED OF`]->_283432
create _283439-[:`COMPOSED OF`]->_283434
create _283439-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283427
create _283439-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283409
create _283439-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283417
create _283439-[:`DEPENDS ON` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_283391
create _283439-[:`COMPATIBLE WITH`]->_283445
create _283439-[:`CONTAINS`]->_283435
create _283439-[:`CONTAINS`]->_283436
create _283439-[:`CONTAINS`]->_283437
create _283439-[:`CONTAINS`]->_283438
create _283445-[:`CONTAINS`]->_283440
create _283445-[:`CONTAINS`]->_283442
create _283445-[:`CONTAINS`]->_283441
create _283445-[:`CONTAINS`]->_283444
create _283445-[:`CONTAINS`]->_283443
;
commit
