begin
create (_104455:`FileNode` {`nID`:1138, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.7.1"})
create (_104456:`FileNode` {`nID`:1149, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.7.1"})
create (_104457:`FileNode` {`nID`:1150, `name`:"net.echinopsii.ariane.community.core.directory_0.7.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1"})
create (_104458:`Component` {`nID`:1133, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2"})
create (_104459:`FileNode` {`nID`:1134, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.7.1"})
create (_104460:`FileNode` {`nID`:1155, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_104461:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:1156, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_104462:`FileNode` {`nID`:1157, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_104463:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:1158, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_104464:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:1990, `name`:"api", `order`:1, `version`:"0.8.0"})
create (_104465:`FileNode` {`nID`:1964, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.5.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.8.0"})
create (_104466:`FileNode` {`nID`:2287, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.8.1-MFRT-SNAPSHOT"})
create (_104467:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:2288, `name`:"dsl", `order`:2, `version`:"0.8.1-MFRT-SNAPSHOT"})
create (_104468:`FileNode` {`nID`:2289, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/msgcli/", `type`:"pom", `version`:"0.8.1-MFRT-SNAPSHOT"})
create (_104469:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.msgcli", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:2290, `name`:"msgcli", `order`:4, `version`:"0.8.1-MFRT-SNAPSHOT"})
create (_104470:`FileNode` {`nID`:2291, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.8.1-SNAPSHOT"})
create (_104471:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `deployable`:false, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:2292, `name`:"blueprints", `order`:3, `version`:"0.8.1-SNAPSHOT"})
create (_104472:`FileNode` {`nID`:2293, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.8.1-MFRT-SNAPSHOT"})
create (_104473:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `deployable`:true, `extension`:"pom", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:2294, `name`:"ds", `order`:5, `version`:"0.8.1-MFRT-SNAPSHOT"})
create (_104474:`FileNode` {`nID`:2295, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wresources/", `type`:"pom", `version`:"0.8.1-MFRT-SNAPSHOT"})
create (_104475:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wresources", `deployable`:false, `extension`:"pom", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:2296, `name`:"wresources", `order`:10, `version`:"0.8.1-MFRT-SNAPSHOT"})
create (_104476:`FileNode` {`nID`:2297, `name`:"net.echinopsii.ariane.community.core.mapping_frt.SNAPSHOT.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.8.1-MFRT-SNAPSHOT"})
create (_104477:`FileNode` {`nID`:2298, `name`:"ariane.community.core.mapping-frt.SNAPSHOT.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.8.1-MFRT-SNAPSHOT"})
create (_104478:`FileNode` {`nID`:2299, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.8.1-MFRT-SNAPSHOT"})
create (_104479:`Component` {`branch`:"mapping_frt", `build`:"maven", `nID`:2300, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.8.1-MFRT-SNAPSHOT"})
create (_104480:`Component` {`branch`:"master", `build`:"maven", `nID`:2301, `name`:"portal", `order`:4, `type`:"core", `version`:"0.7.6-SNAPSHOT"})
create (_104481:`Component` {`branch`:"master", `build`:"maven", `nID`:2302, `name`:"messaging", `order`:2, `type`:"library", `version`:"0.2.1-SNAPSHOT"})
create (_104482:`FileNode` {`nID`:2303, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.7.5-SNAPSHOT"})
create (_104483:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:2304, `name`:"wat", `order`:3, `version`:"0.7.5-SNAPSHOT"})
create (_104484:`FileNode` {`nID`:2305, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.7.5-SNAPSHOT"})
create (_104485:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:2306, `name`:"base", `order`:1, `version`:"0.7.5-SNAPSHOT"})
create (_104491:`FileNode` {`nID`:2307, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.7.5-SNAPSHOT"})
create (_104492:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:2308, `name`:"messaging", `order`:2, `version`:"0.7.5-SNAPSHOT"})
create (_104493:`FileNode` {`nID`:2309, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.7.5-SNAPSHOT"})
create (_104494:`FileNode` {`nID`:2310, `name`:"net.echinopsii.ariane.community.core.injector_master.SNAPSHOT.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.5-SNAPSHOT"})
create (_104495:`FileNode` {`nID`:376, `name`:"ariane.community.core.mapping-0.6.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_104496:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:375, `name`:"taitale", `order`:7, `version`:"0.6.1"})
create (_104497:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:349, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_104498:`FileNode` {`nID`:352, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.1"})
create (_104499:`FileNode` {`nID`:350, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.1"})
create (_104500:`FileNode` {`nID`:342, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_104501:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:351, `name`:"wat", `order`:2, `version`:"0.6.1"})
create (_104502:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:343, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_104503:`FileNode` {`nID`:340, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.1"})
create (_104504:`Component` {`nID`:341, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.1"})
create (_104505:`FileNode` {`nID`:346, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_104506:`FileNode` {`nID`:345, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_104507:`FileNode` {`nID`:338, `name`:"ariane.community.git.repos-0.6.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.0"})
create (_104508:`Distribution` {`dep_type`:"mno", `editable`:"false", `nID`:339, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.6.0"})
create (_104509:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:326, `name`:"jsonparser", `order`:2, `version`:"0.2.0"})
create (_104510:`FileNode` {`nID`:327, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.0"})
create (_104511:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:328, `name`:"injector", `order`:3, `version`:"0.2.0"})
create (_104512:`FileNode` {`nID`:329, `name`:"ariane.community.plugin.rabbitmq-0.2.0.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.0"})
create (_104513:`FileNode` {`nID`:332, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.0"})
create (_104514:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:333, `name`:"rabbitmq", `version`:"0.2.0"})
create (_104515:`FileNode` {`nID`:330, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.0.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.0"})
create (_104516:`FileNode` {`nID`:331, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.0"})
create (_104517:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:324, `name`:"directory", `order`:1, `version`:"0.2.0"})
create (_104518:`FileNode` {`nID`:325, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.0"})
create (_104519:`FileNode` {`nID`:336, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.0"})
create (_104520:`FileNode` {`nID`:335, `name`:"pom-ariane.community.distrib-0.6.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.0"})
create (_104521:`FileNode` {`nID`:334, `name`:"ariane.community.distrib-0.6.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.0"})
create (_104522:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:402, `name`:"jsonparser", `order`:2, `version`:"0.2.1"})
create (_104523:`FileNode` {`nID`:344, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_104524:`Component` {`nID`:347, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_104525:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:400, `name`:"directory", `order`:1, `version`:"0.2.1"})
create (_104526:`FileNode` {`nID`:403, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.1"})
create (_104527:`FileNode` {`nID`:401, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.1"})
create (_104528:`Component` {`nID`:398, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.6.1"})
create (_104529:`FileNode` {`nID`:131, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_104530:`FileNode` {`nID`:368, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.1"})
create (_104531:`FileNode` {`nID`:394, `name`:"ariane.community.core.injector-0.6.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_104532:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:393, `name`:"wat", `order`:3, `version`:"0.6.1"})
create (_104533:`FileNode` {`nID`:337, `name`:"ariane.community.plugins-distrib-0.6.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.0"})
create (_104534:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:373, `name`:"wat", `order`:6, `version`:"0.6.1"})
create (_104535:`FileNode` {`nID`:396, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.1"})
create (_104536:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:353, `name`:"idmwat", `order`:3, `version`:"0.6.1"})
create (_104537:`FileNode` {`nID`:374, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.1"})
create (_104538:`FileNode` {`nID`:372, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.1"})
create (_104539:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:371, `name`:"ds", `order`:5, `version`:"0.6.1"})
create (_104540:`FileNode` {`nID`:377, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_104541:`FileNode` {`nID`:386, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.1"})
create (_104542:`FileNode` {`nID`:385, `name`:"net.echinopsii.ariane.community.core.directory_0.6.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_104543:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:383, `name`:"wat", `order`:2, `version`:"0.6.1"})
create (_104544:`FileNode` {`nID`:384, `name`:"ariane.community.core.directory-0.6.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_104545:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:391, `name`:"messaging", `order`:2, `version`:"0.6.1"})
create (_104546:`FileNode` {`nID`:392, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.1"})
create (_104547:`FileNode` {`nID`:395, `name`:"net.echinopsii.ariane.community.core.injector_0.6.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_104548:`FileNode` {`nID`:359, `name`:"net.echinopsii.ariane.community.core.portal_0.6.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.1"})
create (_104549:`FileNode` {`nID`:358, `name`:"ariane.community.core.portal-0.6.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.1"})
create (_104550:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:357, `name`:"wresources", `order`:5, `version`:"0.6.1"})
create (_104551:`FileNode` {`nID`:356, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.1"})
create (_104552:`FileNode` {`nID`:354, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.1"})
create (_104553:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:355, `name`:"wab", `order`:4, `version`:"0.6.1"})
create (_104554:`FileNode` {`nID`:360, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.1"})
create (_104555:`FileNode` {`nID`:348, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.1"})
create (_104556:`FileNode` {`nID`:243, `name`:"net.echinopsii.ariane.community.core.injector_0.5.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_104557:`FileNode` {`nID`:407, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.1"})
create (_104558:`FileNode` {`nID`:406, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.1.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.1"})
create (_104559:`FileNode` {`nID`:405, `name`:"ariane.community.plugin.rabbitmq-0.2.1.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.1"})
create (_104560:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:404, `name`:"injector", `order`:3, `version`:"0.2.1"})
create (_104561:`Distribution` {`dep_type`:"mno", `editable`:"false", `nID`:126, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.5.1"})
create (_104562:`FileNode` {`nID`:121, `name`:"ariane.community.distrib-0.5.1.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.1"})
create (_104563:`FileNode` {`nID`:122, `name`:"pom-ariane.community.distrib-0.5.1.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.1"})
create (_104564:`FileNode` {`nID`:399, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.1"})
create (_104565:`FileNode` {`nID`:242, `name`:"ariane.community.core.injector-0.5.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_104566:`FileNode` {`nID`:132, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_104567:`FileNode` {`nID`:124, `name`:"ariane.community.plugins-distrib-0.5.1.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.1"})
create (_104568:`FileNode` {`nID`:123, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.1"})
create (_104569:`FileNode` {`nID`:378, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.1"})
create (_104570:`FileNode` {`nID`:370, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.1"})
create (_104571:`Component` {`nID`:361, `name`:"portal", `order`:3, `type`:"core", `version`:"0.6.1"})
create (_104572:`FileNode` {`nID`:362, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.1"})
create (_104573:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:363, `name`:"api", `order`:1, `version`:"0.6.1"})
create (_104574:`FileNode` {`nID`:364, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.1"})
create (_104575:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:367, `name`:"rim", `order`:3, `version`:"0.6.1"})
create (_104576:`FileNode` {`nID`:366, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.1"})
create (_104577:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:365, `name`:"blueprints", `order`:2, `version`:"0.6.1"})
create (_104578:`FileNode` {`nID`:133, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_104579:`FileNode` {`nID`:145, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_104580:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:16, `name`:"wat", `order`:4, `version`:"0.5.0"})
create (_104581:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:130, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_104582:`FileNode` {`nID`:129, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_104583:`FileNode` {`nID`:7, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_104584:`FileNode` {`nID`:21, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.0"})
create (_104585:`FileNode` {`nID`:274, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.0"})
create (_104586:`FileNode` {`nID`:29, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.0"})
create (_104587:`FileNode` {`nID`:20, `name`:"net.echinopsii.ariane.community.core.portal_0.5.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_104588:`FileNode` {`nID`:260, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.3"})
create (_104589:`FileNode` {`nID`:15, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.0"})
create (_104590:`Component` {`nID`:271, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_104591:`FileNode` {`nID`:268, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_104592:`FileNode` {`nID`:270, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_104593:`FileNode` {`nID`:269, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_104594:`FileNode` {`nID`:2311, `name`:"ariane.community.core.injector-master.SNAPSHOT.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.5-SNAPSHOT"})
create (_104595:`Component` {`branch`:"master", `build`:"maven", `nID`:2312, `name`:"injector", `order`:7, `type`:"core", `version`:"0.7.5-SNAPSHOT"})
create (_104596:`FileNode` {`nID`:2313, `name`:"net.echinopsii.ariane.community.core.idm_0.4.5.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.8.1-SNAPSHOT"})
create (_104597:`FileNode` {`nID`:2314, `name`:"net.echinopsii.ariane.community.core.portal_0.7.6.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.8.1-SNAPSHOT"})
create (_104598:`FileNode` {`nID`:2315, `name`:"net.echinopsii.ariane.community.messaging_0.2.1.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.8.1-SNAPSHOT"})
create (_104599:`FileNode` {`nID`:2316, `name`:"net.echinopsii.ariane.community.core.directory_0.7.5.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.8.1-SNAPSHOT"})
create (_104600:`FileNode` {`nID`:2317, `name`:"net.echinopsii.ariane.community.core.mapping_frt.0.8.1.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.8.1-SNAPSHOT"})
create (_104601:`FileNode` {`nID`:2318, `name`:"net.echinopsii.ariane.community.core.injector_0.7.5.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.8.1-SNAPSHOT"})
create (_104602:`Component` {`branch`:"master", `build`:"none", `nID`:2319, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.8.1-SNAPSHOT"})
create (_104603:`FileNode` {`nID`:2320, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.7.5-SNAPSHOT"})
create (_104604:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:2321, `name`:"base", `order`:1, `version`:"0.7.5-SNAPSHOT"})
create (_104605:`FileNode` {`nID`:2322, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.7.5-SNAPSHOT"})
create (_104606:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:2323, `name`:"wat", `order`:2, `version`:"0.7.5-SNAPSHOT"})
create (_104607:`FileNode` {`nID`:2324, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.7.5-SNAPSHOT"})
create (_104608:`FileNode` {`nID`:2325, `name`:"ariane.community.core.directory-master.SNAPSHOT.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.5-SNAPSHOT"})
create (_104609:`FileNode` {`nID`:2326, `name`:"net.echinopsii.ariane.community.core.directory_master.SNAPSHOT.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.5-SNAPSHOT"})
create (_104610:`Component` {`branch`:"master", `build`:"maven", `nID`:2327, `name`:"directory", `order`:6, `type`:"core", `version`:"0.7.5-SNAPSHOT"})
create (_104611:`FileNode` {`nID`:2328, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.7.6-SNAPSHOT"})
create (_104612:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:2329, `name`:"wat", `order`:2, `version`:"0.7.6-SNAPSHOT"})
create (_104613:`FileNode` {`nID`:2330, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.7.6-SNAPSHOT"})
create (_104614:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `deployable`:true, `extension`:"war", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:2331, `name`:"wab", `order`:4, `version`:"0.7.6-SNAPSHOT"})
create (_104615:`FileNode` {`nID`:2332, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.7.6-SNAPSHOT"})
create (_104616:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `deployable`:false, `extension`:"pom", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:2333, `name`:"wresources", `order`:5, `version`:"0.7.6-SNAPSHOT"})
create (_104617:`FileNode` {`nID`:2334, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.7.6-SNAPSHOT"})
create (_104618:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:2335, `name`:"base", `order`:1, `version`:"0.7.6-SNAPSHOT"})
create (_104619:`FileNode` {`nID`:2336, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.7.6-SNAPSHOT"})
create (_104620:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:2337, `name`:"idmwat", `order`:3, `version`:"0.7.6-SNAPSHOT"})
create (_104621:`FileNode` {`nID`:2338, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.7.6-SNAPSHOT"})
create (_104622:`FileNode` {`nID`:2339, `name`:"net.echinopsii.ariane.community.core.portal_master.SNAPSHOT.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.6-SNAPSHOT"})
create (_104623:`FileNode` {`nID`:2340, `name`:"ariane.community.core.portal-master.SNAPSHOT.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.6-SNAPSHOT"})
create (_104624:`FileNode` {`nID`:2341, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.2.1-SNAPSHOT"})
create (_104625:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:2342, `name`:"rabbitmq", `order`:3, `version`:"0.2.1-SNAPSHOT"})
create (_104626:`FileNode` {`nID`:2343, `name`:"pom.xml", `path`:"ariane.community.messaging/nats/", `type`:"pom", `version`:"0.2.1-SNAPSHOT"})
create (_104627:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.nats", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:2344, `name`:"nats", `order`:2, `version`:"0.2.1-SNAPSHOT"})
create (_104628:`FileNode` {`nID`:2345, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.2.1-SNAPSHOT"})
create (_104629:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:2346, `name`:"api", `order`:1, `version`:"0.2.1-SNAPSHOT"})
create (_104630:`FileNode` {`nID`:2347, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.2.1-SNAPSHOT"})
create (_104631:`FileNode` {`nID`:2348, `name`:"ariane.community.messaging-master.SNAPSHOT.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.1-SNAPSHOT"})
create (_104632:`FileNode` {`nID`:2349, `name`:"net.echinopsii.ariane.community.messaging_master.SNAPSHOT.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.2.1-SNAPSHOT"})
create (_104633:`FileNode` {`nID`:2350, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_104634:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `deployable`:true, `extension`:"none", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:2351, `name`:"injector", `order`:3, `version`:"0.2.5-SNAPSHOT"})
create (_104635:`FileNode` {`nID`:2352, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_104636:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `deployable`:true, `extension`:"none", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:2353, `name`:"jsonparser", `order`:2, `version`:"0.2.5-SNAPSHOT"})
create (_104637:`FileNode` {`nID`:2354, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_104638:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `deployable`:true, `extension`:"none", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:2355, `name`:"directory", `order`:1, `version`:"0.2.5-SNAPSHOT"})
create (_104639:`FileNode` {`nID`:2356, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.5-SNAPSHOT"})
create (_104640:`FileNode` {`nID`:2357, `name`:"ariane.community.plugin.rabbitmq-master.SNAPSHOT.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.5-SNAPSHOT"})
create (_104641:`FileNode` {`nID`:2358, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_master.SNAPSHOT.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.5-SNAPSHOT"})
create (_104642:`FileNode` {`nID`:2359, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.5-SNAPSHOT"})
create (_104643:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:2360, `name`:"rabbitmq", `version`:"0.2.5-SNAPSHOT"})
create (_104644:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:2361, `name`:"procos", `version`:"0.1.1-b01"})
create (_104645:`FileNode` {`nID`:2362, `name`:"pom-ariane.community.distrib-frt.SNAPSHOT.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.8.1-SNAPSHOT"})
create (_104646:`FileNode` {`nID`:2363, `name`:"ariane.community.distrib-frt.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.8.1-SNAPSHOT"})
create (_104647:`FileNode` {`nID`:2364, `name`:"ariane.community.git.repos-SNAPSHOT.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.8.1-SNAPSHOT"})
create (_104648:`Distribution` {`dep_type`:"frt", `editable`:"true", `nID`:2365, `name`:"community", `url_repos`:"http://stash.echinopsii.net/scm/ariane/", `version`:"0.8.1-SNAPSHOT"})
create (_104669:`FileNode` {`nID`:1125, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.7.2"})
create (_104670:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:1126, `name`:"wresources", `order`:5, `version`:"0.7.2"})
create (_104671:`FileNode` {`nID`:1123, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.7.2"})
create (_104672:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:1124, `name`:"wat", `order`:2, `version`:"0.7.2"})
create (_104673:`FileNode` {`nID`:1127, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.7.2"})
create (_104674:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:1128, `name`:"base", `order`:1, `version`:"0.7.2"})
create (_104675:`FileNode` {`nID`:1131, `name`:"ariane.community.core.portal-0.7.2.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.2"})
create (_104676:`FileNode` {`nID`:1130, `name`:"net.echinopsii.ariane.community.core.portal_0.7.2.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.2"})
create (_104677:`FileNode` {`nID`:1129, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.7.2"})
create (_104678:`Component` {`nID`:1132, `name`:"portal", `order`:4, `type`:"core", `version`:"0.7.2"})
create (_104679:`FileNode` {`nID`:1979, `name`:"net.echinopsii.ariane.community.messaging_0.2.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.2.0"})
create (_104680:`FileNode` {`nID`:1980, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.2.0"})
create (_104681:`FileNode` {`nID`:1977, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.2.0"})
create (_104682:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:1978, `name`:"api", `order`:1, `version`:"0.2.0"})
create (_104683:`FileNode` {`nID`:1983, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wresources/", `type`:"pom", `version`:"0.8.0"})
create (_104684:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wresources", `deployable`:false, `extension`:"pom", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:1984, `name`:"wresources", `order`:10, `version`:"0.8.0"})
create (_104685:`FileNode` {`nID`:1985, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.8.0"})
create (_104686:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `deployable`:false, `extension`:"pom", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:1986, `name`:"taitale", `order`:9, `version`:"0.8.0"})
create (_104687:`FileNode` {`nID`:1981, `name`:"ariane.community.messaging-0.2.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.0"})
create (_104688:`Component` {`build`:"maven", `nID`:1982, `name`:"messaging", `order`:2, `type`:"library", `version`:"0.2.0"})
create (_104689:`FileNode` {`nID`:1987, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.8.0"})
create (_104690:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:1988, `name`:"wat", `order`:8, `version`:"0.8.0"})
create (_104691:`FileNode` {`nID`:1989, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.8.0"})
create (_104692:`FileNode` {`nID`:1993, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/msgsrv/", `type`:"pom", `version`:"0.8.0"})
create (_104693:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.msgsrv", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:1994, `name`:"msgsrv", `order`:6, `version`:"0.8.0"})
create (_104694:`FileNode` {`nID`:1991, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.8.0"})
create (_104695:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:1992, `name`:"blueprints", `order`:3, `version`:"0.8.0"})
create (_104696:`FileNode` {`nID`:1997, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.8.0"})
create (_104697:`FileNode` {`nID`:1995, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/msgcli/", `type`:"pom", `version`:"0.8.0"})
create (_104698:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.msgcli", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:1996, `name`:"msgcli", `order`:4, `version`:"0.8.0"})
create (_104699:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:1998, `name`:"dsl", `order`:2, `version`:"0.8.0"})
create (_104700:`FileNode` {`nID`:1159, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_104701:`FileNode` {`nID`:1160, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_104702:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:1163, `name`:"rim", `order`:3, `version`:"0.7.2"})
create (_104703:`FileNode` {`nID`:1161, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_104704:`FileNode` {`nID`:1162, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.7.2"})
create (_104705:`FileNode` {`nID`:2007, `name`:"net.echinopsii.ariane.community.core.mapping_0.8.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.8.0"})
create (_104706:`Component` {`build`:"maven", `nID`:2008, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.8.0"})
create (_104707:`Component` {`build`:"maven", `nID`:2009, `name`:"portal", `order`:4, `type`:"core", `version`:"0.7.5"})
create (_104708:`Component` {`build`:"maven", `nID`:2010, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.4"})
create (_104709:`FileNode` {`nID`:2011, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.7.4"})
create (_104710:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:2012, `name`:"base", `order`:1, `version`:"0.7.4"})
create (_104711:`FileNode` {`nID`:2015, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.7.4"})
create (_104712:`FileNode` {`nID`:2013, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.7.4"})
create (_104713:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:2016, `name`:"wat", `order`:3, `version`:"0.7.4"})
create (_104714:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:2014, `name`:"messaging", `order`:2, `version`:"0.7.4"})
create (_104715:`FileNode` {`nID`:2017, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.7.4"})
create (_104716:`FileNode` {`nID`:2006, `name`:"ariane.community.core.mapping-0.8.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.8.0"})
create (_104717:`Component` {`build`:"maven", `nID`:2020, `name`:"injector", `order`:7, `type`:"core", `version`:"0.7.4"})
create (_104718:`FileNode` {`nID`:2019, `name`:"ariane.community.core.injector-0.7.4.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.4"})
create (_104719:`FileNode` {`nID`:2018, `name`:"net.echinopsii.ariane.community.core.injector_0.7.4.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.4"})
create (_104720:`FileNode` {`nID`:2021, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.7.5"})
create (_104721:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `deployable`:true, `extension`:"pom", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:2204, `name`:"ds", `order`:5, `version`:"0.8.1-SNAPSHOT"})
create (_104722:`FileNode` {`nID`:2203, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.8.1-SNAPSHOT"})
create (_104723:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:2202, `name`:"rim", `order`:5, `version`:"0.8.1-SNAPSHOT"})
create (_104724:`FileNode` {`nID`:2201, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.8.1-SNAPSHOT"})
create (_104725:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:2200, `name`:"dsl", `order`:2, `version`:"0.8.1-SNAPSHOT"})
create (_104726:`FileNode` {`nID`:2199, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.8.1-SNAPSHOT"})
create (_104727:`FileNode` {`nID`:2205, `name`:"pom.xml", `path`:"ariane.community.core.mapping/reqregistry/", `type`:"pom", `version`:"0.8.1-SNAPSHOT"})
create (_104728:`FileNode` {`nID`:2193, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.8.1-SNAPSHOT"})
create (_104729:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:2194, `name`:"blueprints", `order`:3, `version`:"0.8.1-SNAPSHOT"})
create (_104730:`FileNode` {`nID`:2191, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.8.1-SNAPSHOT"})
create (_104731:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:2192, `name`:"api", `order`:1, `version`:"0.8.1-SNAPSHOT"})
create (_104732:`FileNode` {`nID`:2197, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/msgcli/", `type`:"pom", `version`:"0.8.1-SNAPSHOT"})
create (_104733:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.msgsrv", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:2196, `name`:"msgsrv", `order`:6, `version`:"0.8.1-SNAPSHOT"})
create (_104734:`FileNode` {`nID`:2195, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/msgsrv/", `type`:"pom", `version`:"0.8.1-SNAPSHOT"})
create (_104735:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.msgcli", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:2198, `name`:"msgcli", `order`:4, `version`:"0.8.1-SNAPSHOT"})
create (_104736:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:2190, `name`:"wat", `order`:8, `version`:"0.8.1-SNAPSHOT"})
create (_104737:`FileNode` {`nID`:2063, `name`:"ariane.community.git.repos-0.8.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.8.0"})
create (_104738:`FileNode` {`nID`:2185, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wresources/", `type`:"pom", `version`:"0.8.1-SNAPSHOT"})
create (_104739:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wresources", `deployable`:false, `extension`:"pom", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:2186, `name`:"wresources", `order`:10, `version`:"0.8.1-SNAPSHOT"})
create (_104740:`FileNode` {`nID`:2183, `name`:"ariane.community.messaging-master.SNAPSHOT.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.1-SNAPSHOT"})
create (_104741:`Component` {`branch`:"master", `build`:"maven", `nID`:2184, `name`:"messaging", `order`:2, `type`:"library", `version`:"0.2.1-SNAPSHOT"})
create (_104742:`FileNode` {`nID`:2181, `name`:"net.echinopsii.ariane.community.messaging_master.SNAPSHOT.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.2.1-SNAPSHOT"})
create (_104743:`FileNode` {`nID`:2182, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.2.1-SNAPSHOT"})
create (_104744:`FileNode` {`nID`:2179, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.2.1-SNAPSHOT"})
create (_104745:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:2180, `name`:"api", `order`:1, `version`:"0.2.1-SNAPSHOT"})
create (_104746:`FileNode` {`nID`:2177, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.2.1-SNAPSHOT"})
create (_104747:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:2178, `name`:"rabbitmq", `order`:3, `version`:"0.2.1-SNAPSHOT"})
create (_104748:`FileNode` {`nID`:2189, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.8.1-SNAPSHOT"})
create (_104749:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `deployable`:false, `extension`:"pom", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:2188, `name`:"taitale", `order`:9, `version`:"0.8.1-SNAPSHOT"})
create (_104750:`FileNode` {`nID`:2187, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.8.1-SNAPSHOT"})
create (_104751:`FileNode` {`nID`:2171, `name`:"net.echinopsii.ariane.community.core.directory_0.7.5.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.8.1-SNAPSHOT"})
create (_104752:`Component` {`build`:"none", `nID`:2172, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.8.1-SNAPSHOT"})
create (_104753:`FileNode` {`nID`:2169, `name`:"net.echinopsii.ariane.community.core.idm_0.4.5.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.8.1-SNAPSHOT"})
create (_104754:`FileNode` {`nID`:2170, `name`:"net.echinopsii.ariane.community.messaging_0.2.1.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.8.1-SNAPSHOT"})
create (_104755:`FileNode` {`nID`:2167, `name`:"net.echinopsii.ariane.community.core.injector_0.7.5.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.8.1-SNAPSHOT"})
create (_104756:`FileNode` {`nID`:2168, `name`:"net.echinopsii.ariane.community.core.portal_0.7.6.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.8.1-SNAPSHOT"})
create (_104757:`FileNode` {`nID`:2175, `name`:"pom.xml", `path`:"ariane.community.messaging/nats/", `type`:"pom", `version`:"0.2.1-SNAPSHOT"})
create (_104758:`Component` {`build`:"maven_python3", `nID`:2174, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.8.1-SNAPSHOT"})
create (_104759:`FileNode` {`nID`:2173, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.8.1-SNAPSHOT"})
create (_104760:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.nats", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:2176, `name`:"nats", `order`:2, `version`:"0.2.1-SNAPSHOT"})
create (_104761:`Distribution` {`dep_type`:"mno", `editable`:"false", `nID`:2064, `name`:"community", `url_repos`:"http://stash.echinopsii.net/scm/ariane/", `version`:"0.8.0"})
create (_104762:`FileNode` {`nID`:2166, `name`:"net.echinopsii.ariane.community.core.mapping_mno.0.8.1.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.8.1-SNAPSHOT"})
create (_104763:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:2058, `name`:"procos", `version`:"0.1.1-b01"})
create (_104764:`FileNode` {`nID`:2059, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.8.0"})
create (_104765:`FileNode` {`nID`:2062, `name`:"ariane.community.distrib-0.8.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.8.0"})
create (_104766:`FileNode` {`nID`:2061, `name`:"pom-ariane.community.distrib-0.8.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.8.0"})
create (_104767:`FileNode` {`nID`:2060, `name`:"ariane.community.plugins-distrib-0.8.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.8.0"})
create (_104768:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `deployable`:true, `extension`:"none", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:2052, `name`:"injector", `order`:3, `version`:"0.2.5-SNAPSHOT"})
create (_104769:`FileNode` {`nID`:2053, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.5-SNAPSHOT"})
create (_104770:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `deployable`:true, `extension`:"none", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:2050, `name`:"jsonparser", `order`:2, `version`:"0.2.5-SNAPSHOT"})
create (_104771:`FileNode` {`nID`:2051, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_104772:`FileNode` {`nID`:2046, `name`:"ariane.community.core.idm-0.4.4.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.4"})
create (_104773:`FileNode` {`nID`:2047, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_104774:`FileNode` {`nID`:2044, `name`:"net.echinopsii.ariane.community.core.idm_0.4.4.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.4"})
create (_104775:`FileNode` {`nID`:2045, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.4"})
create (_104776:`FileNode` {`nID`:2042, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.4"})
create (_104777:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:2043, `name`:"base", `order`:1, `version`:"0.4.4"})
create (_104778:`FileNode` {`nID`:2040, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.7.4"})
create (_104779:`Component` {`build`:"maven", `nID`:2041, `name`:"directory", `order`:6, `type`:"core", `version`:"0.7.4"})
create (_104780:`FileNode` {`nID`:2038, `name`:"ariane.community.core.directory-0.7.4.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.4"})
create (_104781:`FileNode` {`nID`:2039, `name`:"net.echinopsii.ariane.community.core.directory_0.7.4.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.4"})
create (_104782:`FileNode` {`nID`:2036, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.7.4"})
create (_104783:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:2037, `name`:"wat", `order`:2, `version`:"0.7.4"})
create (_104784:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `deployable`:true, `extension`:"none", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:2048, `name`:"directory", `order`:1, `version`:"0.2.5-SNAPSHOT"})
create (_104785:`FileNode` {`nID`:2049, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_104786:`FileNode` {`nID`:2034, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.7.4"})
create (_104787:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:2035, `name`:"base", `order`:1, `version`:"0.7.4"})
create (_104788:`FileNode` {`nID`:2032, `name`:"ariane.community.core.portal-0.7.5.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.5"})
create (_104789:`FileNode` {`nID`:2033, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.7.5"})
create (_104790:`FileNode` {`nID`:2056, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.5-SNAPSHOT"})
create (_104791:`FileNode` {`nID`:2055, `name`:"ariane.community.plugin.rabbitmq-master.SNAPSHOT.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.5-SNAPSHOT"})
create (_104792:`FileNode` {`nID`:2054, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_master.SNAPSHOT.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.5-SNAPSHOT"})
create (_104793:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:2057, `name`:"rabbitmq", `version`:"0.2.5-SNAPSHOT"})
create (_104794:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:2026, `name`:"wat", `order`:2, `version`:"0.7.5"})
create (_104795:`FileNode` {`nID`:2027, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.7.5"})
create (_104796:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `deployable`:false, `extension`:"pom", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:2024, `name`:"wresources", `order`:5, `version`:"0.7.5"})
create (_104797:`FileNode` {`nID`:2025, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.7.5"})
create (_104798:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:2022, `name`:"base", `order`:1, `version`:"0.7.5"})
create (_104799:`FileNode` {`nID`:2023, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.7.5"})
create (_104800:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:2030, `name`:"idmwat", `order`:3, `version`:"0.7.5"})
create (_104801:`FileNode` {`nID`:2029, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.7.5"})
create (_104802:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `deployable`:true, `extension`:"war", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:2028, `name`:"wab", `order`:4, `version`:"0.7.5"})
create (_104803:`FileNode` {`nID`:2031, `name`:"net.echinopsii.ariane.community.core.portal_0.7.5.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.5"})
create (_104804:`Component` {`build`:"maven", `nID`:2211, `name`:"portal", `order`:4, `type`:"core", `version`:"0.7.6-SNAPSHOT"})
create (_104805:`Component` {`build`:"maven", `nID`:2212, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.5-SNAPSHOT"})
create (_104806:`FileNode` {`nID`:2209, `name`:"net.echinopsii.ariane.community.core.mapping_mno.SNAPSHOT.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.8.1-SNAPSHOT"})
create (_104807:`Component` {`build`:"maven", `nID`:2210, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.8.1-SNAPSHOT"})
create (_104808:`FileNode` {`nID`:2207, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.8.1-SNAPSHOT"})
create (_104809:`FileNode` {`nID`:2208, `name`:"ariane.community.core.mapping-mno.SNAPSHOT.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.8.1-SNAPSHOT"})
create (_104810:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:2216, `name`:"messaging", `order`:2, `version`:"0.7.5-SNAPSHOT"})
create (_104811:`FileNode` {`nID`:2215, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.7.5-SNAPSHOT"})
create (_104812:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:2214, `name`:"base", `order`:1, `version`:"0.7.5-SNAPSHOT"})
create (_104813:`FileNode` {`nID`:2213, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.7.5-SNAPSHOT"})
create (_104814:`FileNode` {`nID`:2217, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.7.5-SNAPSHOT"})
create (_104815:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.reqregistry", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:2206, `name`:"reqregistry", `order`:7, `version`:"0.8.1-SNAPSHOT"})
create (_104816:`FileNode` {`nID`:2220, `name`:"net.echinopsii.ariane.community.core.injector_master.SNAPSHOT.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.5-SNAPSHOT"})
create (_104817:`FileNode` {`nID`:2219, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.7.5-SNAPSHOT"})
create (_104818:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:2218, `name`:"wat", `order`:3, `version`:"0.7.5-SNAPSHOT"})
create (_104819:`FileNode` {`nID`:2221, `name`:"ariane.community.core.injector-master.SNAPSHOT.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.5-SNAPSHOT"})
create (_104820:`Component` {`build`:"maven", `nID`:2222, `name`:"injector", `order`:7, `type`:"core", `version`:"0.7.5-SNAPSHOT"})
create (_104821:`FileNode` {`nID`:1408, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.7.3"})
create (_104822:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:1409, `name`:"rim", `order`:3, `version`:"0.7.3"})
create (_104823:`FileNode` {`nID`:1410, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.7.3"})
create (_104824:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:1411, `name`:"blueprints", `order`:2, `version`:"0.7.3"})
create (_104825:`FileNode` {`nID`:1414, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.7.3"})
create (_104826:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:1407, `name`:"api", `order`:1, `version`:"0.7.3"})
create (_104827:`FileNode` {`nID`:1406, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.7.3"})
create (_104828:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:1415, `name`:"ds", `order`:5, `version`:"0.7.3"})
create (_104829:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:1413, `name`:"dsl", `order`:4, `version`:"0.7.3"})
create (_104830:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:1175, `name`:"taitale", `order`:6, `version`:"0.7.2"})
create (_104831:`FileNode` {`nID`:1296, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_master.SNAPSHOT.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.5-SNAPSHOT"})
create (_104832:`FileNode` {`nID`:1418, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.7.3"})
create (_104833:`FileNode` {`nID`:1189, `name`:"net.echinopsii.ariane.community.messaging_0.1.1.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.2"})
create (_104834:`FileNode` {`nID`:1190, `name`:"net.echinopsii.ariane.community.core.idm_0.4.3.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.2"})
create (_104835:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:1183, `name`:"base", `order`:1, `version`:"0.4.2"})
create (_104836:`FileNode` {`nID`:1188, `name`:"net.echinopsii.ariane.community.core.injector_0.7.2.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.2"})
create (_104837:`FileNode` {`nID`:1185, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2"})
create (_104838:`FileNode` {`nID`:1184, `name`:"net.echinopsii.ariane.community.core.idm_0.4.2.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2"})
create (_104839:`FileNode` {`nID`:1187, `name`:"net.echinopsii.ariane.community.core.portal_0.7.2.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.2"})
create (_104840:`FileNode` {`nID`:1186, `name`:"ariane.community.core.idm-0.4.2.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2"})
create (_104841:`FileNode` {`nID`:1412, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.7.3"})
create (_104842:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:1417, `name`:"wat", `order`:7, `version`:"0.7.3"})
create (_104843:`FileNode` {`nID`:1416, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.7.3"})
create (_104844:`FileNode` {`nID`:1172, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.7.2"})
create (_104845:`FileNode` {`nID`:1180, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.2.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.2"})
create (_104846:`FileNode` {`nID`:1174, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.7.2"})
create (_104847:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:1171, `name`:"ds", `order`:5, `version`:"0.7.2"})
create (_104848:`FileNode` {`nID`:1176, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wresources/", `type`:"pom", `version`:"0.7.2"})
create (_104849:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:1173, `name`:"wat", `order`:7, `version`:"0.7.2"})
create (_104850:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wresources", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:1177, `name`:"wresources", `order`:8, `version`:"0.7.2"})
create (_104851:`FileNode` {`nID`:1178, `name`:"ariane.community.core.mapping-0.7.2.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.2"})
create (_104852:`FileNode` {`nID`:1179, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.7.2"})
create (_104853:`Component` {`nID`:1181, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.7.2"})
create (_104854:`FileNode` {`nID`:1166, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.7.2"})
create (_104855:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:1165, `name`:"api", `order`:1, `version`:"0.7.2"})
create (_104856:`FileNode` {`nID`:1182, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2"})
create (_104857:`FileNode` {`nID`:1170, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.7.2"})
create (_104858:`FileNode` {`nID`:1164, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.7.2"})
create (_104859:`FileNode` {`nID`:2264, `name`:"ariane.community.distrib-mno.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.8.1-SNAPSHOT"})
create (_104860:`FileNode` {`nID`:2265, `name`:"ariane.community.git.repos-SNAPSHOT.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.8.1-SNAPSHOT"})
create (_104861:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:2260, `name`:"procos", `version`:"0.1.1-b01"})
create (_104862:`FileNode` {`nID`:2263, `name`:"pom-ariane.community.distrib-mno.SNAPSHOT.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.8.1-SNAPSHOT"})
create (_104863:`FileNode` {`nID`:2258, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.5-SNAPSHOT"})
create (_104864:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:2259, `name`:"rabbitmq", `version`:"0.2.5-SNAPSHOT"})
create (_104865:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `deployable`:true, `extension`:"none", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:2254, `name`:"injector", `order`:3, `version`:"0.2.5-SNAPSHOT"})
create (_104866:`FileNode` {`nID`:2255, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.5-SNAPSHOT"})
create (_104890:`Component` {`nID`:134, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_104891:`FileNode` {`nID`:530, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.3"})
create (_104892:`FileNode` {`nID`:45, `name`:"ariane.community.core.directory-0.5.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_104893:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:34, `name`:"taitale", `order`:6, `version`:"0.5.0"})
create (_104894:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:42, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_104895:`FileNode` {`nID`:43, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.0"})
create (_104896:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:28, `name`:"dsl", `order`:3, `version`:"0.5.0"})
create (_104897:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:115, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_104898:`FileNode` {`nID`:528, `name`:"net.echinopsii.ariane.community.core.portal_0.6.3.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_104899:`FileNode` {`nID`:529, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.3"})
create (_104900:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:524, `name`:"wab", `order`:4, `version`:"0.6.3"})
create (_104901:`FileNode` {`nID`:523, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.3"})
create (_104902:`FileNode` {`nID`:527, `name`:"ariane.community.core.portal-0.6.3.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_104903:`FileNode` {`nID`:35, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.0"})
create (_104904:`FileNode` {`nID`:454, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.2"})
create (_104905:`FileNode` {`nID`:456, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.2"})
create (_104906:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:526, `name`:"wresources", `order`:5, `version`:"0.6.3"})
create (_104907:`FileNode` {`nID`:525, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.3"})
create (_104908:`FileNode` {`nID`:439, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.2"})
create (_104909:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:442, `name`:"wresources", `order`:5, `version`:"0.6.2"})
create (_104910:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:455, `name`:"ds", `order`:5, `version`:"0.6.2"})
create (_104911:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:438, `name`:"idmwat", `order`:3, `version`:"0.6.2"})
create (_104912:`Component` {`nID`:432, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.1"})
create (_104913:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:440, `name`:"wab", `order`:4, `version`:"0.6.2"})
create (_104914:`FileNode` {`nID`:430, `name`:"net.echinopsii.ariane.community.core.idm_0.4.1.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.1"})
create (_104915:`FileNode` {`nID`:433, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.2"})
create (_104916:`FileNode` {`nID`:46, `name`:"net.echinopsii.ariane.community.core.directory_0.5.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_104917:`FileNode` {`nID`:47, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.0"})
create (_104918:`FileNode` {`nID`:441, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.2"})
create (_104919:`FileNode` {`nID`:431, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.1"})
create (_104920:`FileNode` {`nID`:39, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.0"})
create (_104921:`FileNode` {`nID`:38, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_104922:`FileNode` {`nID`:448, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.2"})
create (_104923:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:449, `name`:"blueprints", `order`:2, `version`:"0.6.2"})
create (_104924:`FileNode` {`nID`:548, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.3"})
create (_104925:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:44, `name`:"wat", `order`:2, `version`:"0.5.0"})
create (_104926:`FileNode` {`nID`:462, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.2"})
create (_104927:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:453, `name`:"dsl", `order`:4, `version`:"0.6.2"})
create (_104928:`FileNode` {`nID`:450, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.2"})
create (_104929:`FileNode` {`nID`:452, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.2"})
create (_104930:`FileNode` {`nID`:446, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.2"})
create (_104931:`FileNode` {`nID`:445, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.2"})
create (_104932:`FileNode` {`nID`:444, `name`:"net.echinopsii.ariane.community.core.portal_0.6.2.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_104933:`FileNode` {`nID`:498, `name`:"ariane.community.git.repos-0.6.2.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.2"})
create (_104934:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:447, `name`:"api", `order`:1, `version`:"0.6.2"})
create (_104935:`FileNode` {`nID`:497, `name`:"ariane.community.plugins-distrib-0.6.2.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.2"})
create (_104936:`FileNode` {`nID`:490, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.2.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.2"})
create (_104937:`FileNode` {`nID`:489, `name`:"ariane.community.plugin.rabbitmq-0.2.2.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.2"})
create (_104938:`FileNode` {`nID`:491, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.2"})
create (_104939:`FileNode` {`nID`:492, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.2"})
create (_104940:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:493, `name`:"rabbitmq", `version`:"0.2.2"})
create (_104941:`Component` {`nID`:463, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.2"})
create (_104942:`FileNode` {`nID`:494, `name`:"ariane.community.distrib-0.6.2.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.2"})
create (_104943:`FileNode` {`nID`:687, `name`:"ariane.community.core.idm-0.4.2.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2"})
create (_104944:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:690, `name`:"wat", `order`:3, `version`:"0.7.0"})
create (_104945:`FileNode` {`nID`:83, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_104946:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:160, `name`:"taitale", `order`:6, `version`:"0.5.1"})
create (_104947:`FileNode` {`nID`:532, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.3"})
create (_104948:`FileNode` {`nID`:689, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_104949:`Component` {`nID`:688, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.7.0"})
create (_104950:`FileNode` {`nID`:544, `name`:"ariane.community.core.mapping-0.6.3.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_104951:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:535, `name`:"rim", `order`:3, `version`:"0.6.3"})
create (_104952:`Component` {`nID`:555, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.3"})
create (_104953:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:539, `name`:"ds", `order`:5, `version`:"0.6.3"})
create (_104954:`FileNode` {`nID`:534, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.3"})
create (_104955:`FileNode` {`nID`:552, `name`:"ariane.community.core.directory-0.6.3.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_104956:`FileNode` {`nID`:538, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.3"})
create (_104957:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:543, `name`:"taitale", `order`:7, `version`:"0.6.3"})
create (_104958:`FileNode` {`nID`:553, `name`:"net.echinopsii.ariane.community.core.directory_0.6.3.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_104959:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:537, `name`:"dsl", `order`:4, `version`:"0.6.3"})
create (_104960:`FileNode` {`nID`:542, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.3"})
create (_104961:`FileNode` {`nID`:550, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.3"})
create (_104962:`FileNode` {`nID`:84, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_104963:`Component` {`nID`:85, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_104964:`FileNode` {`nID`:540, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.3"})
create (_104965:`FileNode` {`nID`:545, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.3.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_104966:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `deployable`:true, `extension`:"none", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:2252, `name`:"jsonparser", `order`:2, `version`:"0.2.5-SNAPSHOT"})
create (_104967:`FileNode` {`nID`:2253, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_104968:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `deployable`:true, `extension`:"none", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:2250, `name`:"directory", `order`:1, `version`:"0.2.5-SNAPSHOT"})
create (_104969:`FileNode` {`nID`:2251, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_104970:`FileNode` {`nID`:2248, `name`:"ariane.community.core.idm-master.SNAPSHOT.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.5-SNAPSHOT"})
create (_104971:`FileNode` {`nID`:2249, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_104972:`FileNode` {`nID`:2246, `name`:"net.echinopsii.ariane.community.core.idm_master.SNAPSHOT.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.5-SNAPSHOT"})
create (_104973:`FileNode` {`nID`:2247, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.5-SNAPSHOT"})
create (_104974:`FileNode` {`nID`:2244, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.5-SNAPSHOT"})
create (_104975:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:2245, `name`:"base", `order`:1, `version`:"0.4.5-SNAPSHOT"})
create (_104976:`FileNode` {`nID`:2256, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_master.SNAPSHOT.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.5-SNAPSHOT"})
create (_104977:`FileNode` {`nID`:2257, `name`:"ariane.community.plugin.rabbitmq-master.SNAPSHOT.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.5-SNAPSHOT"})
create (_104978:`FileNode` {`nID`:2242, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.7.5-SNAPSHOT"})
create (_104979:`Component` {`build`:"maven", `nID`:2243, `name`:"directory", `order`:6, `type`:"core", `version`:"0.7.5-SNAPSHOT"})
create (_104980:`FileNode` {`nID`:1168, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.7.2"})
create (_104981:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:1169, `name`:"blueprints", `order`:2, `version`:"0.7.2"})
create (_104982:`Distribution` {`dep_type`:"mno", `editable`:"true", `nID`:2266, `name`:"community", `url_repos`:"http://stash.echinopsii.net/scm/ariane/", `version`:"0.8.1-SNAPSHOT"})
create (_104983:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:1167, `name`:"dsl", `order`:4, `version`:"0.7.2"})
create (_104984:`FileNode` {`nID`:2236, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.7.5-SNAPSHOT"})
create (_104985:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:2237, `name`:"base", `order`:1, `version`:"0.7.5-SNAPSHOT"})
create (_104986:`FileNode` {`nID`:2234, `name`:"ariane.community.core.portal-master.SNAPSHOT.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.6-SNAPSHOT"})
create (_104987:`FileNode` {`nID`:2235, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.7.6-SNAPSHOT"})
create (_104988:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:2232, `name`:"idmwat", `order`:3, `version`:"0.7.6-SNAPSHOT"})
create (_104989:`FileNode` {`nID`:2233, `name`:"net.echinopsii.ariane.community.core.portal_master.SNAPSHOT.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.6-SNAPSHOT"})
create (_104990:`FileNode` {`nID`:2240, `name`:"ariane.community.core.directory-master.SNAPSHOT.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.5-SNAPSHOT"})
create (_104991:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:2239, `name`:"wat", `order`:2, `version`:"0.7.5-SNAPSHOT"})
create (_104992:`FileNode` {`nID`:2238, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.7.5-SNAPSHOT"})
create (_104993:`FileNode` {`nID`:2241, `name`:"net.echinopsii.ariane.community.core.directory_master.SNAPSHOT.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.5-SNAPSHOT"})
create (_104994:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `deployable`:true, `extension`:"war", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:2230, `name`:"wab", `order`:4, `version`:"0.7.6-SNAPSHOT"})
create (_104995:`FileNode` {`nID`:2229, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.7.6-SNAPSHOT"})
create (_104996:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:2228, `name`:"wat", `order`:2, `version`:"0.7.6-SNAPSHOT"})
create (_104997:`FileNode` {`nID`:2227, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.7.6-SNAPSHOT"})
create (_104998:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `deployable`:false, `extension`:"pom", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:2226, `name`:"wresources", `order`:5, `version`:"0.7.6-SNAPSHOT"})
create (_104999:`FileNode` {`nID`:2225, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.7.6-SNAPSHOT"})
create (_105000:`FileNode` {`nID`:2231, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.7.6-SNAPSHOT"})
create (_105001:`FileNode` {`nID`:2223, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.7.6-SNAPSHOT"})
create (_105002:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:2224, `name`:"base", `order`:1, `version`:"0.7.6-SNAPSHOT"})
create (_105003:`FileNode` {`nID`:1291, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_105004:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:1399, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_105005:`FileNode` {`nID`:1404, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_105006:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:1401, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_105007:`FileNode` {`nID`:1398, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_105008:`FileNode` {`nID`:1197, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_105009:`FileNode` {`nID`:1400, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_105010:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:1297, `name`:"rabbitmq", `version`:"0.2.5-SNAPSHOT"})
create (_105011:`Component` {`nID`:1405, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_105012:`FileNode` {`nID`:1402, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_105312:`FileNode` {`nID`:1403, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_105313:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:1298, `name`:"procos", `version`:"0.1.1-b01"})
create (_105314:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:1290, `name`:"directory", `order`:1, `version`:"0.2.5-SNAPSHOT"})
create (_105315:`FileNode` {`nID`:1289, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_105316:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:1292, `name`:"injector", `order`:3, `version`:"0.2.5-SNAPSHOT"})
create (_105317:`FileNode` {`nID`:1287, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_105318:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:1288, `name`:"jsonparser", `order`:2, `version`:"0.2.5-SNAPSHOT"})
create (_105319:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:451, `name`:"rim", `order`:3, `version`:"0.6.2"})
create (_105320:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:477, `name`:"wat", `order`:3, `version`:"0.6.2"})
create (_105321:`FileNode` {`nID`:1766, `name`:"ariane.community.plugins-distrib-0.7.4.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.7.4"})
create (_105322:`FileNode` {`nID`:476, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.2"})
create (_105323:`FileNode` {`nID`:468, `name`:"ariane.community.core.directory-0.6.2.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_105324:`Component` {`nID`:471, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.2"})
create (_105325:`FileNode` {`nID`:470, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.2"})
create (_105326:`FileNode` {`nID`:469, `name`:"net.echinopsii.ariane.community.core.directory_0.6.2.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_105327:`FileNode` {`nID`:1764, `name`:"ariane.community.distrib-0.7.4.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.7.4"})
create (_105328:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:1743, `name`:"wat", `order`:3, `version`:"0.7.3"})
create (_105329:`FileNode` {`nID`:1762, `name`:"ariane.community.plugin.rabbitmq-master.SNAPSHOT.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.5-SNAPSHOT"})
create (_105330:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:1747, `name`:"base", `order`:1, `version`:"0.7.3"})
create (_105331:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `deployable`:true, `extension`:"none", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:1758, `name`:"injector", `order`:3, `version`:"0.2.5-SNAPSHOT"})
create (_105332:`FileNode` {`nID`:1761, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_master.SNAPSHOT.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.5-SNAPSHOT"})
create (_105333:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `deployable`:true, `extension`:"none", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:1756, `name`:"directory", `order`:1, `version`:"0.2.5-SNAPSHOT"})
create (_105334:`FileNode` {`nID`:1757, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_105335:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:1752, `name`:"procos", `version`:"0.1.1-b01"})
create (_105336:`FileNode` {`nID`:1755, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_105337:`FileNode` {`nID`:1760, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.5-SNAPSHOT"})
create (_105338:`Component` {`build`:"maven", `nID`:1751, `name`:"injector", `order`:7, `type`:"core", `version`:"0.7.3"})
create (_105339:`FileNode` {`nID`:1765, `name`:"pom-ariane.community.distrib-0.7.4.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.7.4"})
create (_105340:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:1763, `name`:"rabbitmq", `version`:"0.2.5-SNAPSHOT"})
create (_105341:`FileNode` {`nID`:1748, `name`:"net.echinopsii.ariane.community.core.injector_0.7.3.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.3"})
create (_105342:`FileNode` {`nID`:1746, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.7.3"})
create (_105343:`FileNode` {`nID`:1749, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.7.3"})
create (_105344:`FileNode` {`nID`:1742, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.7.3"})
create (_105345:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:1745, `name`:"messaging", `order`:2, `version`:"0.7.3"})
create (_105346:`FileNode` {`nID`:1744, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.7.3"})
create (_105347:`FileNode` {`nID`:1741, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.7.4"})
create (_105348:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `deployable`:true, `extension`:"none", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:1754, `name`:"jsonparser", `order`:2, `version`:"0.2.5-SNAPSHOT"})
create (_105349:`FileNode` {`nID`:1753, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_105350:`FileNode` {`nID`:1750, `name`:"ariane.community.core.injector-0.7.3.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.3"})
create (_105351:`FileNode` {`nID`:1759, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.5-SNAPSHOT"})
create (_105352:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:176, `name`:"base", `order`:1, `version`:"0.5.2"})
create (_105353:`Component` {`nID`:858, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2"})
create (_105354:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:486, `name`:"jsonparser", `order`:2, `version`:"0.2.2"})
create (_105355:`FileNode` {`nID`:485, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.2"})
create (_105356:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:488, `name`:"injector", `order`:3, `version`:"0.2.2"})
create (_105357:`FileNode` {`nID`:496, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.2"})
create (_105358:`FileNode` {`nID`:1767, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.7.4"})
create (_105359:`FileNode` {`nID`:464, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.2"})
create (_105360:`FileNode` {`nID`:495, `name`:"pom-ariane.community.distrib-0.6.2.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.2"})
create (_105361:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:465, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_105362:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:475, `name`:"messaging", `order`:2, `version`:"0.6.2"})
create (_105363:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:459, `name`:"taitale", `order`:7, `version`:"0.6.2"})
create (_105364:`FileNode` {`nID`:458, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.2"})
create (_105365:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:36, `name`:"wat", `order`:7, `version`:"0.5.0"})
create (_105366:`FileNode` {`nID`:37, `name`:"ariane.community.core.mapping-0.5.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_105367:`FileNode` {`nID`:118, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.1"})
create (_105368:`Component` {`nID`:119, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.1"})
create (_105369:`FileNode` {`nID`:112, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.1"})
create (_105370:`FileNode` {`nID`:117, `name`:"net.echinopsii.ariane.community.core.injector_0.5.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_105371:`FileNode` {`nID`:114, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.1"})
create (_105372:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:113, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_105373:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:1194, `name`:"procos", `version`:"0.1.1-b01"})
create (_105374:`FileNode` {`nID`:1191, `name`:"net.echinopsii.ariane.community.core.directory_0.7.2.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.2"})
create (_105375:`FileNode` {`nID`:461, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.2.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_105376:`FileNode` {`nID`:460, `name`:"ariane.community.core.mapping-0.6.2.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_105377:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:1196, `name`:"injector", `order`:3, `version`:"0.2.5-SNAPSHOT"})
create (_105378:`FileNode` {`nID`:1195, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_105379:`FileNode` {`nID`:865, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_105380:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:864, `name`:"idmwat", `order`:3, `version`:"0.7.1"})
create (_105381:`FileNode` {`nID`:1768, `name`:"ariane.community.git.repos-0.7.4.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.7.4"})
create (_105382:`Distribution` {`dep_type`:"mno", `editable`:"false", `nID`:1769, `name`:"community", `url_repos`:"http://stash.echinopsii.net/scm/ariane/", `version`:"0.7.4"})
create (_105383:`FileNode` {`nID`:1206, `name`:"ariane.community.plugins-distrib-0.7.2.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.7.2"})
create (_105384:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:1205, `name`:"rabbitmq", `version`:"0.2.5-SNAPSHOT"})
create (_105385:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:1198, `name`:"directory", `order`:1, `version`:"0.2.5-SNAPSHOT"})
create (_105386:`FileNode` {`nID`:1199, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_105387:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:1200, `name`:"jsonparser", `order`:2, `version`:"0.2.5-SNAPSHOT"})
create (_105388:`FileNode` {`nID`:1201, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_master.SNAPSHOT.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.5-SNAPSHOT"})
create (_105389:`FileNode` {`nID`:1192, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.2.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.2"})
create (_105390:`FileNode` {`nID`:1207, `name`:"ariane.community.git.repos-0.7.2.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.7.2"})
create (_105391:`FileNode` {`nID`:1204, `name`:"ariane.community.plugin.rabbitmq-master.SNAPSHOT.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.5-SNAPSHOT"})
create (_105392:`Component` {`nID`:1193, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.7.2"})
create (_105393:`FileNode` {`nID`:1202, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.5-SNAPSHOT"})
create (_105394:`FileNode` {`nID`:1293, `name`:"ariane.community.plugin.rabbitmq-master.SNAPSHOT.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.5-SNAPSHOT"})
create (_105395:`FileNode` {`nID`:1294, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.5-SNAPSHOT"})
create (_105396:`FileNode` {`nID`:1295, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.5-SNAPSHOT"})
create (_105397:`FileNode` {`nID`:1209, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.7.2"})
create (_105398:`FileNode` {`nID`:1208, `name`:"ariane.community.distrib-0.7.2.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.7.2"})
create (_105399:`FileNode` {`nID`:1203, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.5-SNAPSHOT"})
create (_105400:`FileNode` {`nID`:1210, `name`:"pom-ariane.community.distrib-0.7.2.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.7.2"})
create (_105401:`Distribution` {`dep_type`:"mno", `editable`:"false", `nID`:1211, `name`:"community", `url_repos`:"http://stash.echinopsii.net/scm/ariane/", `version`:"0.7.2"})
create (_105402:`Component` {`nID`:481, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.2"})
create (_105403:`FileNode` {`nID`:472, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.2"})
create (_105404:`FileNode` {`nID`:443, `name`:"ariane.community.core.portal-0.6.2.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_105405:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:473, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_105406:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:467, `name`:"wat", `order`:2, `version`:"0.6.2"})
create (_105407:`FileNode` {`nID`:466, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.2"})
create (_105408:`FileNode` {`nID`:474, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.2"})
create (_105409:`FileNode` {`nID`:483, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.2"})
create (_105410:`FileNode` {`nID`:500, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.3"})
create (_105415:`FileNode` {`nID`:1695, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.7.4"})
create (_105416:`Component` {`build`:"maven", `nID`:1704, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.7.4"})
create (_105417:`FileNode` {`nID`:1699, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wresources/", `type`:"pom", `version`:"0.7.4"})
create (_105418:`Component` {`build`:"maven", `nID`:1706, `name`:"portal", `order`:4, `type`:"core", `version`:"0.7.4"})
create (_105419:`FileNode` {`nID`:1703, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.4.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.4"})
create (_105420:`FileNode` {`nID`:1708, `name`:"net.echinopsii.ariane.community.core.portal_0.7.4.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.4"})
create (_105421:`Component` {`build`:"maven", `nID`:1705, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.3"})
create (_105422:`FileNode` {`nID`:1710, `name`:"net.echinopsii.ariane.community.messaging_0.1.1.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.4"})
create (_105423:`FileNode` {`nID`:1707, `name`:"net.echinopsii.ariane.community.core.idm_0.4.3.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.4"})
create (_105424:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:1445, `name`:"base", `order`:1, `version`:"0.7.3"})
create (_105425:`FileNode` {`nID`:1709, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.4.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.4"})
create (_105426:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:1441, `name`:"wat", `order`:2, `version`:"0.7.3"})
create (_105427:`FileNode` {`nID`:1440, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.7.3"})
create (_105428:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wresources", `deployable`:false, `extension`:"pom", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:1700, `name`:"wresources", `order`:8, `version`:"0.7.4"})
create (_105429:`FileNode` {`nID`:1697, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.7.4"})
create (_105430:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:1443, `name`:"wresources", `order`:5, `version`:"0.7.3"})
create (_105431:`FileNode` {`nID`:1442, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.7.3"})
create (_105432:`FileNode` {`nID`:1428, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.7.2"})
create (_105433:`FileNode` {`nID`:1444, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.7.3"})
create (_105434:`Component` {`nID`:1435, `name`:"directory", `order`:6, `type`:"core", `version`:"0.7.2"})
create (_105435:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:1439, `name`:"wab", `order`:4, `version`:"0.7.3"})
create (_105436:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `deployable`:true, `extension`:"pom", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:1694, `name`:"ds", `order`:5, `version`:"0.7.4"})
create (_105437:`FileNode` {`nID`:1693, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.7.4"})
create (_105438:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:1696, `name`:"wat", `order`:7, `version`:"0.7.4"})
create (_105439:`FileNode` {`nID`:1691, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.7.4"})
create (_105440:`FileNode` {`nID`:1432, `name`:"net.echinopsii.ariane.community.core.directory_0.7.2.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.2"})
create (_105441:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:1429, `name`:"base", `order`:1, `version`:"0.7.2"})
create (_105442:`Component` {`nID`:1437, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.7.3"})
create (_105443:`FileNode` {`nID`:1438, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.7.3"})
create (_105444:`FileNode` {`nID`:1430, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.7.2"})
create (_105445:`FileNode` {`nID`:1455, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.7.2"})
create (_105446:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:1454, `name`:"messaging", `order`:2, `version`:"0.7.2"})
create (_105447:`FileNode` {`nID`:1457, `name`:"net.echinopsii.ariane.community.core.injector_0.7.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.2"})
create (_105448:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:1456, `name`:"base", `order`:1, `version`:"0.7.2"})
create (_105449:`FileNode` {`nID`:1465, `name`:"net.echinopsii.ariane.community.core.idm_0.4.2.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2"})
create (_105450:`FileNode` {`nID`:1468, `name`:"net.echinopsii.ariane.community.core.idm_0.4.3.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.3"})
create (_105451:`FileNode` {`nID`:1446, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.7.3"})
create (_105452:`FileNode` {`nID`:1458, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.7.2"})
create (_105453:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:1452, `name`:"wat", `order`:3, `version`:"0.7.2"})
create (_105454:`FileNode` {`nID`:1453, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.7.2"})
create (_105455:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:1447, `name`:"idmwat", `order`:3, `version`:"0.7.3"})
create (_105456:`FileNode` {`nID`:1466, `name`:"net.echinopsii.ariane.community.core.injector_0.7.2.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.3"})
create (_105457:`FileNode` {`nID`:1448, `name`:"net.echinopsii.ariane.community.core.portal_0.7.3.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.3"})
create (_105458:`FileNode` {`nID`:1449, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.7.3"})
create (_105459:`FileNode` {`nID`:1450, `name`:"ariane.community.core.portal-0.7.3.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.3"})
create (_105460:`FileNode` {`nID`:1720, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.3"})
create (_105461:`Component` {`nID`:501, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.3"})
create (_105462:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:457, `name`:"wat", `order`:6, `version`:"0.6.2"})
create (_105463:`Component` {`nID`:482, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.2"})
create (_105464:`FileNode` {`nID`:502, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_105465:`Distribution` {`dep_type`:"mno", `editable`:"false", `nID`:499, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.6.2"})
create (_105466:`FileNode` {`nID`:480, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.2"})
create (_105467:`FileNode` {`nID`:478, `name`:"ariane.community.core.injector-0.6.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.2"})
create (_105469:`FileNode` {`nID`:2466, `name`:"net.echinopsii.ariane.community.messaging-features-master.SNAPSHOT.xml", `path`:"ariane.community.messaging/distrib/db/resources/karaf/feature/", `type`:"feature", `version`:"0.2.1-SNAPSHOT"})
create (_105471:`FileNode` {`nID`:2468, `name`:"net.echinopsii.ariane.community.messaging-features-master.SNAPSHOT.xml", `path`:"ariane.community.messaging/distrib/db/resources/karaf/feature/", `type`:"feature", `version`:"0.2.1-SNAPSHOT"})
create (_105472:`FileNode` {`nID`:2469, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.8.1-MS-SNAPSHOT"})
create (_105473:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:2470, `name`:"api", `order`:1, `version`:"0.8.1-MS-SNAPSHOT"})
create (_105474:`FileNode` {`nID`:2471, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/msgsrv/", `type`:"pom", `version`:"0.8.1-MS-SNAPSHOT"})
create (_105475:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.msgsrv", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:2472, `name`:"msgsrv", `order`:6, `version`:"0.8.1-MS-SNAPSHOT"})
create (_105476:`FileNode` {`nID`:2473, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.8.1-MS-SNAPSHOT"})
create (_105477:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:2474, `name`:"blueprints", `order`:3, `version`:"0.8.1-MS-SNAPSHOT"})
create (_105478:`FileNode` {`nID`:2475, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/msgcli/", `type`:"pom", `version`:"0.8.1-MS-SNAPSHOT"})
create (_105479:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.msgcli", `deployable`:false, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:2476, `name`:"msgcli", `order`:4, `version`:"0.8.1-MS-SNAPSHOT"})
create (_105480:`FileNode` {`nID`:2477, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.8.1-MS-SNAPSHOT"})
create (_105481:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:2478, `name`:"dsl", `order`:2, `version`:"0.8.1-MS-SNAPSHOT"})
create (_105482:`FileNode` {`nID`:2479, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.8.1-MS-SNAPSHOT"})
create (_105483:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:2480, `name`:"rim", `order`:5, `version`:"0.8.1-MS-SNAPSHOT"})
create (_105484:`FileNode` {`nID`:2481, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.8.1-MS-SNAPSHOT"})
create (_105485:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `deployable`:true, `extension`:"pom", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:2482, `name`:"ds", `order`:5, `version`:"0.8.1-MS-SNAPSHOT"})
create (_105486:`FileNode` {`nID`:2483, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.8.1-MS-SNAPSHOT"})
create (_105487:`FileNode` {`nID`:2484, `name`:"net.echinopsii.ariane.community.core.mapping-features-mms.SNAPSHOT.xml", `path`:"ariane.community.core.mapping/distrib/db/resources/karaf/feature/", `type`:"feature", `version`:"0.8.1-MS-SNAPSHOT"})
create (_105488:`Component` {`branch`:"mapping_ms", `build`:"maven", `nID`:2485, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.8.1-MS-SNAPSHOT"})
create (_105489:`Component` {`branch`:"master", `build`:"maven", `nID`:2486, `name`:"messaging", `order`:2, `type`:"library", `version`:"0.2.1-SNAPSHOT"})
create (_105490:`Component` {`branch`:"master", `build`:"maven_python3", `nID`:2487, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.8.1-SNAPSHOT"})
create (_105491:`FileNode` {`nID`:2488, `name`:"pom.xml", `path`:"ariane.community.messaging/nats/", `type`:"pom", `version`:"0.2.1-SNAPSHOT"})
create (_105492:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.nats", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:2489, `name`:"nats", `order`:2, `version`:"0.2.1-SNAPSHOT"})
create (_105493:`FileNode` {`nID`:2490, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.2.1-SNAPSHOT"})
create (_105494:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:2491, `name`:"rabbitmq", `order`:3, `version`:"0.2.1-SNAPSHOT"})
create (_105495:`FileNode` {`nID`:2492, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.2.1-SNAPSHOT"})
create (_105496:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:2493, `name`:"api", `order`:1, `version`:"0.2.1-SNAPSHOT"})
create (_105497:`FileNode` {`nID`:2494, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.2.1-SNAPSHOT"})
create (_105498:`FileNode` {`nID`:2495, `name`:"net.echinopsii.ariane.community.messaging_master.SNAPSHOT.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.2.1-SNAPSHOT"})
create (_105499:`FileNode` {`nID`:2496, `name`:"ariane.community.messaging-master.SNAPSHOT.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.1-SNAPSHOT"})
create (_105500:`FileNode` {`nID`:2497, `name`:"net.echinopsii.ariane.community.messaging-features-master.SNAPSHOT.xml", `path`:"ariane.community.messaging/distrib/db/resources/karaf/feature/", `type`:"feature", `version`:"0.2.1-SNAPSHOT"})
create (_105501:`Component` {`branch`:"master", `build`:"none", `nID`:2498, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.8.1-SNAPSHOT"})
create (_105502:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:2499, `name`:"procos", `version`:"0.1.1-b01"})
create (_105503:`FileNode` {`nID`:2500, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_105504:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `deployable`:true, `extension`:"none", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:2501, `name`:"jsonparser", `order`:2, `version`:"0.2.5-SNAPSHOT"})
create (_105505:`FileNode` {`nID`:2502, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_105506:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `deployable`:true, `extension`:"none", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:2503, `name`:"directory", `order`:1, `version`:"0.2.5-SNAPSHOT"})
create (_105507:`FileNode` {`nID`:2504, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_105508:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `deployable`:true, `extension`:"none", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:2505, `name`:"injector", `order`:3, `version`:"0.2.5-SNAPSHOT"})
create (_105509:`FileNode` {`nID`:2506, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.5-SNAPSHOT"})
create (_105510:`FileNode` {`nID`:2507, `name`:"ariane.community.plugin.rabbitmq-master.SNAPSHOT.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.5-SNAPSHOT"})
create (_105511:`FileNode` {`nID`:2508, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_master.SNAPSHOT.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.5-SNAPSHOT"})
create (_105512:`FileNode` {`nID`:2509, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.5-SNAPSHOT"})
create (_105513:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:2510, `name`:"rabbitmq", `version`:"0.2.5-SNAPSHOT"})
create (_105514:`FileNode` {`nID`:2511, `name`:"ariane.community.distrib-mms.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.8.1-SNAPSHOT"})
create (_105515:`FileNode` {`nID`:2512, `name`:"pom-ariane.community.distrib-mms.SNAPSHOT.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.8.1-SNAPSHOT"})
create (_105516:`Distribution` {`dep_type`:"mms", `editable`:"true", `nID`:2513, `name`:"community", `url_repos`:"http://stash.echinopsii.net/scm/ariane/", `version`:"0.8.1-SNAPSHOT"})
create (_105560:`FileNode` {`nID`:581, `name`:"ariane.community.plugins-distrib-0.6.3.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.3"})
create (_105561:`FileNode` {`nID`:573, `name`:"ariane.community.plugin.rabbitmq-0.2.3.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.3"})
create (_105562:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:568, `name`:"directory", `order`:1, `version`:"0.2.3"})
create (_105563:`FileNode` {`nID`:567, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.3"})
create (_105564:`FileNode` {`nID`:574, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.3.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.3"})
create (_105565:`FileNode` {`nID`:558, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.3"})
create (_105566:`FileNode` {`nID`:580, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.3"})
create (_105567:`FileNode` {`nID`:579, `name`:"pom-ariane.community.distrib-0.6.3.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.3"})
create (_105568:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:533, `name`:"blueprints", `order`:2, `version`:"0.6.3"})
create (_105569:`Component` {`nID`:547, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.3"})
create (_105570:`FileNode` {`nID`:680, `name`:"ariane.community.core.portal-0.7.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_105571:`FileNode` {`nID`:683, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_105572:`FileNode` {`nID`:678, `name`:"net.echinopsii.ariane.community.core.portal_0.7.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_105573:`FileNode` {`nID`:679, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.7.0"})
create (_105574:`FileNode` {`nID`:670, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_105575:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:671, `name`:"wab", `order`:4, `version`:"0.7.0"})
create (_105576:`FileNode` {`nID`:672, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_105577:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:673, `name`:"idmwat", `order`:3, `version`:"0.7.0"})
create (_105578:`FileNode` {`nID`:674, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_105579:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:675, `name`:"wat", `order`:2, `version`:"0.7.0"})
create (_105580:`FileNode` {`nID`:676, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_105581:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:677, `name`:"base", `order`:1, `version`:"0.7.0"})
create (_105582:`FileNode` {`nID`:582, `name`:"ariane.community.git.repos-0.6.3.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.3"})
create (_105583:`Distribution` {`dep_type`:"mno", `editable`:"false", `nID`:583, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.6.3"})
create (_105584:`Component` {`nID`:682, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2"})
create (_105585:`Component` {`nID`:681, `name`:"portal", `order`:4, `type`:"core", `version`:"0.7.0"})
create (_105586:`FileNode` {`nID`:668, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_105587:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:669, `name`:"wresources", `order`:5, `version`:"0.7.0"})
create (_105588:`FileNode` {`nID`:576, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.3"})
create (_105589:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:577, `name`:"rabbitmq", `version`:"0.2.3"})
create (_105590:`FileNode` {`nID`:578, `name`:"ariane.community.distrib-0.6.3.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.3"})
create (_105591:`FileNode` {`nID`:575, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.3"})
create (_105592:`FileNode` {`nID`:31, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.0"})
create (_105593:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:719, `name`:"dsl", `order`:4, `version`:"0.7.0"})
create (_105594:`FileNode` {`nID`:517, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.3"})
create (_105595:`Component` {`nID`:516, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2"})
create (_105596:`FileNode` {`nID`:519, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.3"})
create (_105597:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:518, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_105598:`FileNode` {`nID`:514, `name`:"net.echinopsii.ariane.community.core.idm_0.4.2.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2"})
create (_105599:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:503, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_105600:`FileNode` {`nID`:521, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.3"})
create (_105601:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:520, `name`:"wat", `order`:2, `version`:"0.6.3"})
create (_105602:`FileNode` {`nID`:515, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2"})
create (_105603:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:522, `name`:"idmwat", `order`:3, `version`:"0.6.3"})
create (_105604:`FileNode` {`nID`:511, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2"})
create (_105605:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:512, `name`:"base", `order`:1, `version`:"0.4.2"})
create (_105606:`FileNode` {`nID`:513, `name`:"ariane.community.core.idm-0.4.2.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2"})
create (_105607:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:505, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_105608:`FileNode` {`nID`:504, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_105609:`FileNode` {`nID`:507, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_105610:`Component` {`nID`:510, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.3"})
create (_105611:`Component` {`nID`:509, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_105612:`FileNode` {`nID`:506, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_105613:`FileNode` {`nID`:109, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_105614:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:436, `name`:"wat", `order`:2, `version`:"0.6.2"})
create (_105615:`Component` {`nID`:40, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.0"})
create (_105616:`FileNode` {`nID`:110, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_105617:`FileNode` {`nID`:437, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.2"})
create (_105618:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:434, `name`:"base", `order`:1, `version`:"0.6.2"})
create (_105619:`FileNode` {`nID`:435, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.2"})
create (_105620:`FileNode` {`nID`:508, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_105621:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:715, `name`:"rim", `order`:3, `version`:"0.7.0"})
create (_105622:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:105, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_105623:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:713, `name`:"blueprints", `order`:2, `version`:"0.7.0"})
create (_105624:`FileNode` {`nID`:712, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_105625:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:709, `name`:"taitale", `order`:6, `version`:"0.7.0"})
create (_105626:`FileNode` {`nID`:714, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_105627:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:711, `name`:"wat", `order`:7, `version`:"0.7.0"})
create (_105628:`FileNode` {`nID`:708, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_105629:`FileNode` {`nID`:718, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_105630:`FileNode` {`nID`:710, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_105631:`FileNode` {`nID`:104, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_105632:`Component` {`nID`:103, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.1"})
create (_105633:`FileNode` {`nID`:106, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_105634:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:731, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_105635:`FileNode` {`nID`:730, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_105636:`FileNode` {`nID`:723, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.7.0"})
create (_105637:`FileNode` {`nID`:88, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.1"})
create (_105638:`Component` {`nID`:725, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.7.0"})
create (_105639:`FileNode` {`nID`:722, `name`:"ariane.community.core.mapping-0.7.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_105640:`FileNode` {`nID`:720, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_105641:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:717, `name`:"api", `order`:1, `version`:"0.7.0"})
create (_105642:`FileNode` {`nID`:716, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_105643:`FileNode` {`nID`:380, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.1"})
create (_105644:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:570, `name`:"jsonparser", `order`:2, `version`:"0.2.3"})
create (_105645:`FileNode` {`nID`:569, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.3"})
create (_105646:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:557, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_105647:`FileNode` {`nID`:571, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.3"})
create (_105648:`Component` {`nID`:566, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.3"})
create (_105649:`FileNode` {`nID`:556, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.3"})
create (_105650:`FileNode` {`nID`:382, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.1"})
create (_105651:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:381, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_105652:`FileNode` {`nID`:235, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_105653:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:572, `name`:"injector", `order`:3, `version`:"0.2.3"})
create (_105654:`Component` {`nID`:379, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.6.1"})
create (_105655:`Component` {`nID`:387, `name`:"directory", `order`:5, `type`:"core", `version`:"0.6.1"})
create (_105656:`FileNode` {`nID`:390, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.1"})
create (_105657:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:389, `name`:"base", `order`:1, `version`:"0.6.1"})
create (_105658:`FileNode` {`nID`:388, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.1"})
create (_106056:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:428, `name`:"base", `order`:1, `version`:"0.4.1"})
create (_106057:`FileNode` {`nID`:429, `name`:"ariane.community.core.idm-0.4.1.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.1"})
create (_106058:`FileNode` {`nID`:422, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_106059:`FileNode` {`nID`:427, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.1"})
create (_106060:`FileNode` {`nID`:424, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_106061:`FileNode` {`nID`:423, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_106062:`Component` {`nID`:426, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.2"})
create (_106063:`Component` {`nID`:425, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_106064:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:421, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_106065:`FileNode` {`nID`:98, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.1"})
create (_106066:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:1120, `name`:"idmwat", `order`:3, `version`:"0.7.2"})
create (_106067:`FileNode` {`nID`:1119, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.7.2"})
create (_106068:`FileNode` {`nID`:487, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.2"})
create (_106069:`FileNode` {`nID`:1121, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.7.2"})
create (_106070:`FileNode` {`nID`:238, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.2"})
create (_106071:`FileNode` {`nID`:101, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_106072:`FileNode` {`nID`:102, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.1"})
create (_106073:`Distribution` {`dep_type`:"mno", `editable`:"false", `nID`:415, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.6.1"})
create (_106074:`FileNode` {`nID`:416, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.2"})
create (_106075:`FileNode` {`nID`:94, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.1"})
create (_106076:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:97, `name`:"taitale", `order`:6, `version`:"0.5.1"})
create (_106077:`FileNode` {`nID`:96, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.1"})
create (_106078:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:95, `name`:"ds", `order`:5, `version`:"0.5.1"})
create (_106079:`Component` {`nID`:246, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.2"})
create (_106080:`FileNode` {`nID`:316, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.0"})
create (_106081:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:248, `name`:"directory", `order`:1, `version`:"0.1.0"})
create (_106082:`FileNode` {`nID`:249, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.1.0"})
create (_106083:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:99, `name`:"wat", `order`:7, `version`:"0.5.1"})
create (_106084:`FileNode` {`nID`:100, `name`:"ariane.community.core.mapping-0.5.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_106085:`Component` {`nID`:245, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.2"})
create (_106086:`FileNode` {`nID`:247, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.1.0"})
create (_106087:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:241, `name`:"wat", `order`:2, `version`:"0.5.2"})
create (_106088:`FileNode` {`nID`:244, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.2"})
create (_106089:`Component` {`nID`:237, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_106090:`FileNode` {`nID`:240, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.2"})
create (_106091:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:239, `name`:"base", `order`:1, `version`:"0.5.2"})
create (_106092:`FileNode` {`nID`:236, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_106093:`FileNode` {`nID`:418, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_106094:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:419, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_106095:`FileNode` {`nID`:420, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_106096:`Component` {`nID`:417, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.2"})
create (_106097:`FileNode` {`nID`:2283, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/msgsrv/", `type`:"pom", `version`:"0.8.1-SNAPSHOT"})
create (_106098:`FileNode` {`nID`:410, `name`:"ariane.community.distrib-0.6.1.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.1"})
create (_106099:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:409, `name`:"rabbitmq", `version`:"0.2.1"})
create (_106100:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:369, `name`:"dsl", `order`:4, `version`:"0.6.1"})
create (_106101:`FileNode` {`nID`:323, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.0"})
create (_106102:`FileNode` {`nID`:414, `name`:"ariane.community.git.repos-0.6.1.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.1"})
create (_106103:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:2286, `name`:"rim", `order`:5, `version`:"0.8.1-MFRT-SNAPSHOT"})
create (_106104:`FileNode` {`nID`:408, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.1"})
create (_106105:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.msgsrv", `deployable`:false, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:2284, `name`:"msgsrv", `order`:6, `version`:"0.8.1-SNAPSHOT"})
create (_106106:`FileNode` {`nID`:2285, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.8.1-MFRT-SNAPSHOT"})
create (_106107:`FileNode` {`nID`:412, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.1"})
create (_106108:`FileNode` {`nID`:413, `name`:"ariane.community.plugins-distrib-0.6.1.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.1"})
create (_106109:`Component` {`nID`:397, `name`:"injector", `order`:6, `type`:"core", `version`:"0.6.1"})
create (_106110:`FileNode` {`nID`:411, `name`:"pom-ariane.community.distrib-0.6.1.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.1"})
create (_106111:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:2278, `name`:"wat", `order`:8, `version`:"0.8.1-MFRT-SNAPSHOT"})
create (_106112:`FileNode` {`nID`:2279, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.8.1-MFRT-SNAPSHOT"})
create (_106113:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.reqregistry", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:2276, `name`:"reqregistry", `order`:7, `version`:"0.8.1-MFRT-SNAPSHOT"})
create (_106114:`FileNode` {`nID`:2277, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.8.1-MFRT-SNAPSHOT"})
create (_106115:`Component` {`branch`:"master", `build`:"maven", `nID`:2274, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.5-SNAPSHOT"})
create (_106116:`FileNode` {`nID`:2275, `name`:"pom.xml", `path`:"ariane.community.core.mapping/reqregistry/", `type`:"pom", `version`:"0.8.1-MFRT-SNAPSHOT"})
create (_106117:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:2282, `name`:"api", `order`:1, `version`:"0.8.1-MFRT-SNAPSHOT"})
create (_106118:`FileNode` {`nID`:2281, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.8.1-MFRT-SNAPSHOT"})
create (_106119:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `deployable`:false, `extension`:"pom", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:2280, `name`:"taitale", `order`:9, `version`:"0.8.1-MFRT-SNAPSHOT"})
create (_106120:`FileNode` {`nID`:2272, `name`:"ariane.community.core.idm-master.SNAPSHOT.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.5-SNAPSHOT"})
create (_106121:`FileNode` {`nID`:2273, `name`:"net.echinopsii.ariane.community.core.idm_master.SNAPSHOT.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.5-SNAPSHOT"})
create (_106122:`FileNode` {`nID`:234, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_106123:`FileNode` {`nID`:2267, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.8.1-SNAPSHOT"})
create (_106124:`FileNode` {`nID`:258, `name`:"ariane.community.distrib-0.5.3.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.3"})
create (_106125:`FileNode` {`nID`:266, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_106126:`FileNode` {`nID`:232, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_106127:`FileNode` {`nID`:259, `name`:"pom-ariane.community.distrib-0.5.3.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.3"})
create (_106128:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:2270, `name`:"base", `order`:1, `version`:"0.4.5-SNAPSHOT"})
create (_106129:`FileNode` {`nID`:2269, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.5-SNAPSHOT"})
create (_106130:`Component` {`branch`:"master", `build`:"maven_python3", `nID`:2268, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.8.1-SNAPSHOT"})
create (_106131:`FileNode` {`nID`:2271, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.5-SNAPSHOT"})
create (_106132:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:273, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_106133:`Component` {`nID`:265, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.0"})
create (_106134:`FileNode` {`nID`:261, `name`:"ariane.community.plugins-distrib-0.5.3.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.3"})
create (_106135:`FileNode` {`nID`:262, `name`:"ariane.community.git.repos-0.5.3.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.3"})
create (_106136:`Distribution` {`dep_type`:"mno", `editable`:"false", `nID`:263, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.5.3"})
create (_106137:`FileNode` {`nID`:264, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.0"})
create (_106139:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:233, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_106140:`FileNode` {`nID`:1999, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.8.0"})
create (_106141:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `deployable`:true, `extension`:"pom", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:2002, `name`:"ds", `order`:5, `version`:"0.8.0"})
create (_106142:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:2000, `name`:"rim", `order`:5, `version`:"0.8.0"})
create (_106143:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.reqregistry", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:2004, `name`:"reqregistry", `order`:7, `version`:"0.8.0"})
create (_106144:`FileNode` {`nID`:2001, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.8.0"})
create (_106145:`FileNode` {`nID`:2003, `name`:"pom.xml", `path`:"ariane.community.core.mapping/reqregistry/", `type`:"pom", `version`:"0.8.0"})
create (_106146:`FileNode` {`nID`:1971, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.8.0"})
create (_106147:`FileNode` {`nID`:1966, `name`:"net.echinopsii.ariane.community.core.portal_0.7.5.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.8.0"})
create (_106148:`FileNode` {`nID`:1965, `name`:"net.echinopsii.ariane.community.core.injector_0.7.4.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.8.0"})
create (_106149:`FileNode` {`nID`:2005, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.8.0"})
create (_106150:`Component` {`build`:"maven_python3", `nID`:1972, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.8.0"})
create (_106151:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:1122, `name`:"wab", `order`:4, `version`:"0.7.2"})
create (_106152:`FileNode` {`nID`:1967, `name`:"net.echinopsii.ariane.community.core.idm_0.4.4.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.8.0"})
create (_106153:`Component` {`build`:"none", `nID`:1970, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.8.0"})
create (_106154:`FileNode` {`nID`:1969, `name`:"net.echinopsii.ariane.community.core.directory_0.7.4.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.8.0"})
create (_106155:`FileNode` {`nID`:1968, `name`:"net.echinopsii.ariane.community.messaging_0.1.1.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.8.0"})
create (_106255:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.nats", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:1974, `name`:"nats", `order`:2, `version`:"0.2.0"})
create (_106256:`FileNode` {`nID`:1975, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.2.0"})
create (_106257:`FileNode` {`nID`:1973, `name`:"pom.xml", `path`:"ariane.community.messaging/nats/", `type`:"pom", `version`:"0.2.0"})
create (_106259:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:1976, `name`:"rabbitmq", `order`:3, `version`:"0.2.0"})
create (_106260:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:1135, `name`:"base", `order`:1, `version`:"0.7.1"})
create (_106261:`FileNode` {`nID`:1136, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.7.1"})
create (_106262:`FileNode` {`nID`:1151, `name`:"ariane.community.core.directory-0.7.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1"})
create (_106263:`Component` {`nID`:1152, `name`:"directory", `order`:6, `type`:"core", `version`:"0.7.1"})
create (_106264:`FileNode` {`nID`:1153, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.7.2"})
create (_106265:`Component` {`nID`:1154, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.7.2"})
create (_106266:`FileNode` {`nID`:1141, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.7.1"})
create (_106267:`FileNode` {`nID`:1142, `name`:"ariane.community.core.injector-0.7.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1"})
create (_106268:`Component` {`nID`:1143, `name`:"injector", `order`:7, `type`:"core", `version`:"0.7.1"})
create (_106269:`Component` {`nID`:1144, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_106270:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:1139, `name`:"messaging", `order`:2, `version`:"0.7.1"})
create (_106271:`FileNode` {`nID`:1140, `name`:"net.echinopsii.ariane.community.core.injector_0.7.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1"})
create (_106272:`FileNode` {`nID`:1145, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.7.1"})
create (_106273:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:1146, `name`:"wat", `order`:2, `version`:"0.7.1"})
create (_106274:`FileNode` {`nID`:1147, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.7.1"})
create (_106275:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:1148, `name`:"base", `order`:1, `version`:"0.7.1"})
create (_106276:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:1137, `name`:"wat", `order`:3, `version`:"0.7.1"})
create (_106371:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:736, `name`:"injector", `order`:3, `version`:"0.2.4"})
create (_106372:`FileNode` {`nID`:564, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.3"})
create (_106373:`FileNode` {`nID`:562, `name`:"ariane.community.core.injector-0.6.3.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_106374:`FileNode` {`nID`:728, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_106375:`FileNode` {`nID`:691, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_106376:`FileNode` {`nID`:695, `name`:"ariane.community.core.injector-0.7.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_106385:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `deployable`:false, `extension`:"pom", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:1734, `name`:"wresources", `order`:5, `version`:"0.7.4"})
create (_106386:`Component` {`build`:"maven_python3", `nID`:1715, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.7.4"})
create (_106387:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `deployable`:true, `extension`:"war", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:1732, `name`:"wab", `order`:4, `version`:"0.7.4"})
create (_106388:`FileNode` {`nID`:1733, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.7.4"})
create (_106397:`Component` {`build`:"maven", `nID`:1728, `name`:"directory", `order`:6, `type`:"core", `version`:"0.7.3"})
create (_106398:`FileNode` {`nID`:1735, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.7.4"})
create (_106415:`FileNode` {`nID`:724, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_106417:`FileNode` {`nID`:686, `name`:"net.echinopsii.ariane.community.core.idm_0.4.2.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2"})
create (_106418:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:694, `name`:"messaging", `order`:2, `version`:"0.7.0"})
create (_106419:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:1736, `name`:"base", `order`:1, `version`:"0.7.4"})
create (_106420:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:1738, `name`:"wat", `order`:2, `version`:"0.7.4"})
create (_106421:`FileNode` {`nID`:1731, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.7.4"})
create (_106422:`FileNode` {`nID`:1737, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.7.4"})
create (_106423:`FileNode` {`nID`:693, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_106424:`FileNode` {`nID`:685, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2"})
create (_106425:`FileNode` {`nID`:1740, `name`:"ariane.community.core.portal-0.7.4.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.4"})
create (_106426:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:692, `name`:"base", `order`:1, `version`:"0.7.0"})
create (_106427:`FileNode` {`nID`:1729, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.7.4"})
create (_106428:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:1730, `name`:"idmwat", `order`:3, `version`:"0.7.4"})
create (_106429:`FileNode` {`nID`:1727, `name`:"net.echinopsii.ariane.community.core.directory_0.7.3.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.3"})
create (_106805:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:836, `name`:"procos", `version`:"0.1.0"})
create (_106806:`FileNode` {`nID`:60, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.0"})
create (_106807:`FileNode` {`nID`:49, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.0"})
create (_106808:`Component` {`nID`:707, `name`:"directory", `order`:6, `type`:"core", `version`:"0.7.0"})
create (_106809:`Component` {`nID`:48, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.0"})
create (_106810:`Component` {`nID`:56, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.0"})
create (_106811:`FileNode` {`nID`:704, `name`:"net.echinopsii.ariane.community.core.directory_0.7.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_106812:`FileNode` {`nID`:706, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.7.0"})
create (_106813:`Component` {`nID`:57, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.0"})
create (_106814:`FileNode` {`nID`:705, `name`:"ariane.community.core.directory-0.7.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.0"})
create (_106815:`FileNode` {`nID`:737, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_106816:`FileNode` {`nID`:54, `name`:"net.echinopsii.ariane.community.core.injector_0.5.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.0"})
create (_106819:`FileNode` {`nID`:735, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_106820:`FileNode` {`nID`:744, `name`:"ariane.community.plugin.rabbitmq-0.2.4.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.4"})
create (_106821:`FileNode` {`nID`:739, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_106822:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:738, `name`:"jsonparser", `order`:2, `version`:"0.2.4"})
create (_106824:`FileNode` {`nID`:1739, `name`:"net.echinopsii.ariane.community.core.portal_0.7.4.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.4"})
create (_106855:`FileNode` {`nID`:742, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.4"})
create (_106856:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:561, `name`:"wat", `order`:3, `version`:"0.6.3"})
create (_106857:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:729, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_106858:`FileNode` {`nID`:726, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.7.0"})
create (_106859:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:87, `name`:"api", `order`:1, `version`:"0.5.1"})
create (_106860:`Component` {`nID`:727, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.7.0"})
create (_106861:`FileNode` {`nID`:86, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.1"})
create (_106862:`FileNode` {`nID`:732, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_106863:`FileNode` {`nID`:563, `name`:"net.echinopsii.ariane.community.core.injector_0.6.3.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_106864:`FileNode` {`nID`:560, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.3"})
create (_106865:`FileNode` {`nID`:733, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_106866:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:559, `name`:"messaging", `order`:2, `version`:"0.6.3"})
create (_106867:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:740, `name`:"directory", `order`:1, `version`:"0.2.4"})
create (_106868:`FileNode` {`nID`:734, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_106869:`FileNode` {`nID`:741, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.4"})
create (_106870:`Component` {`nID`:565, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.3"})
create (_106919:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:745, `name`:"rabbitmq", `version`:"0.2.4"})
create (_106920:`FileNode` {`nID`:55, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.0"})
create (_106921:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:89, `name`:"blueprints", `order`:2, `version`:"0.5.1"})
create (_106928:`FileNode` {`nID`:1725, `name`:"ariane.community.core.directory-0.7.3.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.3"})
create (_106934:`FileNode` {`nID`:697, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.7.0"})
create (_106937:`FileNode` {`nID`:53, `name`:"ariane.community.core.injector-0.5.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_106938:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:50, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_106951:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:721, `name`:"ds", `order`:5, `version`:"0.7.0"})
create (_106954:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:52, `name`:"wat", `order`:2, `version`:"0.5.0"})
create (_107168:`FileNode` {`nID`:1485, `name`:"pom-ariane.community.distrib-0.7.3.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.7.3"})
create (_107169:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:1484, `name`:"rabbitmq", `version`:"0.2.5-SNAPSHOT"})
create (_107170:`FileNode` {`nID`:1483, `name`:"ariane.community.plugin.rabbitmq-master.SNAPSHOT.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.5-SNAPSHOT"})
create (_107171:`FileNode` {`nID`:1486, `name`:"ariane.community.distrib-0.7.3.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.7.3"})
create (_107172:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:1686, `name`:"dsl", `order`:4, `version`:"0.7.4"})
create (_107173:`FileNode` {`nID`:1685, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.7.4"})
create (_107174:`FileNode` {`nID`:1682, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_107175:`FileNode` {`nID`:1687, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.7.4"})
create (_107176:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:1680, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_107177:`FileNode` {`nID`:1681, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_107178:`Component` {`nID`:1472, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.7.3"})
create (_107179:`FileNode` {`nID`:1471, `name`:"net.echinopsii.ariane.community.core.portal_0.7.3.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.3"})
create (_107180:`FileNode` {`nID`:1488, `name`:"ariane.community.plugins-distrib-0.7.3.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.7.3"})
create (_107181:`FileNode` {`nID`:1469, `name`:"net.echinopsii.ariane.community.core.directory_0.7.2.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.3"})
create (_107182:`Distribution` {`dep_type`:"mno", `editable`:"false", `nID`:1490, `name`:"community", `url_repos`:"http://stash.echinopsii.net/scm/ariane/", `version`:"0.7.3"})
create (_107183:`FileNode` {`nID`:1489, `name`:"ariane.community.git.repos-0.7.3.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.7.3"})
create (_107184:`FileNode` {`nID`:1478, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_107185:`FileNode` {`nID`:1487, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.7.3"})
create (_107186:`FileNode` {`nID`:1476, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_107187:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:1477, `name`:"injector", `order`:3, `version`:"0.2.5-SNAPSHOT"})
create (_107188:`FileNode` {`nID`:1677, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_107189:`FileNode` {`nID`:1436, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.7.3"})
create (_107190:`FileNode` {`nID`:1470, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.3.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.3"})
create (_107191:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:1678, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_107193:`FileNode` {`nID`:1459, `name`:"ariane.community.core.injector-0.7.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.2"})
create (_107194:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:1462, `name`:"base", `order`:1, `version`:"0.4.2"})
create (_107195:`FileNode` {`nID`:1480, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_master.SNAPSHOT.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.5-SNAPSHOT"})
create (_107196:`Component` {`nID`:1460, `name`:"injector", `order`:7, `type`:"core", `version`:"0.7.2"})
create (_107197:`FileNode` {`nID`:1463, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2"})
create (_107198:`FileNode` {`nID`:1481, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.5-SNAPSHOT"})
create (_107199:`FileNode` {`nID`:1474, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_107200:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:1473, `name`:"procos", `version`:"0.1.1-b01"})
create (_107201:`FileNode` {`nID`:1467, `name`:"net.echinopsii.ariane.community.messaging_0.1.1.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.3"})
create (_107202:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:1475, `name`:"directory", `order`:1, `version`:"0.2.5-SNAPSHOT"})
create (_107225:`FileNode` {`nID`:1461, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2"})
create (_107226:`FileNode` {`nID`:1464, `name`:"ariane.community.core.idm-0.4.2.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2"})
create (_107228:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:1479, `name`:"jsonparser", `order`:2, `version`:"0.2.5-SNAPSHOT"})
create (_107251:`FileNode` {`nID`:1714, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.7.4"})
create (_107252:`FileNode` {`nID`:1679, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_107253:`FileNode` {`nID`:1702, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.7.4"})
create (_107254:`FileNode` {`nID`:1451, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.7.2"})
create (_107255:`FileNode` {`nID`:1482, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.5-SNAPSHOT"})
create (_107256:`Component` {`build`:"maven", `nID`:1684, `name`:"messaging", `order`:2, `type`:"library", `version`:"0.1.0"})
create (_107257:`FileNode` {`nID`:1683, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_107258:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:1692, `name`:"api", `order`:1, `version`:"0.7.4"})
create (_107259:`FileNode` {`nID`:1701, `name`:"ariane.community.core.mapping-0.7.4.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.4"})
create (_107260:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:1690, `name`:"blueprints", `order`:2, `version`:"0.7.4"})
create (_107261:`Component` {`build`:"none", `nID`:1713, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.7.4"})
create (_107262:`FileNode` {`nID`:1689, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.7.4"})
create (_107263:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:1688, `name`:"rim", `order`:3, `version`:"0.7.4"})
create (_107264:`FileNode` {`nID`:1712, `name`:"net.echinopsii.ariane.community.core.directory_0.7.3.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.4"})
create (_107265:`FileNode` {`nID`:1711, `name`:"net.echinopsii.ariane.community.core.injector_0.7.3.SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.4"})
create (_107266:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `deployable`:false, `extension`:"pom", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:1698, `name`:"taitale", `order`:6, `version`:"0.7.4"})
create (_107687:`FileNode` {`nID`:51, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.0"})
create (_107688:`FileNode` {`nID`:58, `name`:"ariane.community.distrib-0.5.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.0"})
create (_107691:`FileNode` {`nID`:750, `name`:"pom-ariane.community.distrib-0.7.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.4-SNAPSHOT"})
create (_107696:`FileNode` {`nID`:749, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.4-SNAPSHOT"})
create (_107702:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:4, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_107707:`FileNode` {`nID`:59, `name`:"pom-ariane.community.distrib-0.5.0.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.0"})
create (_107708:`FileNode` {`nID`:33, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.0"})
create (_107709:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:32, `name`:"ds", `order`:5, `version`:"0.5.0"})
create (_107710:`FileNode` {`nID`:61, `name`:"ariane.community.plugins-distrib-0.5.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.0"})
create (_107715:`FileNode` {`nID`:696, `name`:"net.echinopsii.ariane.community.core.injector_0.7.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.0"})
create (_107716:`Component` {`nID`:699, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_107717:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:1717, `name`:"base", `order`:1, `version`:"0.4.3"})
create (_107718:`Component` {`nID`:698, `name`:"injector", `order`:7, `type`:"core", `version`:"0.7.0"})
create (_107719:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:701, `name`:"base", `order`:1, `version`:"0.7.0"})
create (_107720:`FileNode` {`nID`:702, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_107721:`Distribution` {`dep_type`:"mno", `editable`:"false", `nID`:751, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.7.0"})
create (_107722:`FileNode` {`nID`:743, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.4.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.4"})
create (_107723:`FileNode` {`nID`:746, `name`:"ariane.community.distrib-0.7.0.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.4-SNAPSHOT"})
create (_107724:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:684, `name`:"base", `order`:1, `version`:"0.4.2"})
create (_107725:`FileNode` {`nID`:700, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_107728:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:703, `name`:"wat", `order`:2, `version`:"0.7.0"})
create (_107769:`FileNode` {`nID`:748, `name`:"ariane.community.plugins-distrib-0.7.0.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.4-SNAPSHOT"})
create (_107770:`FileNode` {`nID`:747, `name`:"ariane.community.git.repos-0.7.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.4-SNAPSHOT"})
create (_107771:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:1724, `name`:"base", `order`:1, `version`:"0.7.3"})
create (_107772:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `deployable`:true, `extension`:"jar", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:1722, `name`:"wat", `order`:2, `version`:"0.7.3"})
create (_107773:`FileNode` {`nID`:1723, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.7.3"})
create (_107774:`FileNode` {`nID`:1726, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.7.3"})
create (_107775:`FileNode` {`nID`:1718, `name`:"ariane.community.core.idm-0.4.3.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.3"})
create (_107776:`FileNode` {`nID`:1721, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.7.3"})
create (_107777:`FileNode` {`nID`:1716, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.3"})
create (_107778:`FileNode` {`nID`:1719, `name`:"net.echinopsii.ariane.community.core.idm_0.4.3.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.3"})
create (_111456:`FileNode` {`nID`:294, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.0"})
create (_111457:`Component` {`nID`:303, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.6.0"})
create (_111458:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:193, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_111459:`Component` {`nID`:285, `name`:"portal", `order`:3, `type`:"core", `version`:"0.6.0"})
create (_111460:`FileNode` {`nID`:177, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.5.2"})
create (_111461:`FileNode` {`nID`:194, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_111462:`FileNode` {`nID`:78, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_111463:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:845, `name`:"wat", `order`:2, `version`:"0.7.1"})
create (_111464:`Distribution` {`dep_type`:"mno", `editable`:"false", `nID`:189, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.5.2"})
create (_111465:`FileNode` {`nID`:190, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.3"})
create (_111466:`FileNode` {`nID`:181, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.5.2"})
create (_111467:`Component` {`nID`:182, `name`:"injector", `order`:6, `type`:"core", `version`:"0.5.2"})
create (_111468:`FileNode` {`nID`:286, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.0"})
create (_111469:`FileNode` {`nID`:283, `name`:"net.echinopsii.ariane.community.core.portal_0.6.0.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_111470:`FileNode` {`nID`:175, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.5.2"})
create (_111471:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:178, `name`:"wat", `order`:2, `version`:"0.5.2"})
create (_111472:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:295, `name`:"ds", `order`:5, `version`:"0.6.0"})
create (_111473:`FileNode` {`nID`:185, `name`:"pom-ariane.community.distrib-0.5.2.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.5.2"})
create (_111474:`FileNode` {`nID`:186, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.5.2"})
create (_111475:`Component` {`nID`:183, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.2"})
create (_111476:`FileNode` {`nID`:192, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_111477:`Component` {`nID`:191, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.3"})
create (_111478:`FileNode` {`nID`:184, `name`:"ariane.community.distrib-0.5.2.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.5.2"})
create (_111479:`FileNode` {`nID`:187, `name`:"ariane.community.plugins-distrib-0.5.2.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.5.2"})
create (_111480:`FileNode` {`nID`:188, `name`:"ariane.community.git.repos-0.5.2.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.2"})
create (_111481:`FileNode` {`nID`:127, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.2"})
create (_111482:`FileNode` {`nID`:19, `name`:"ariane.community.core.portal-0.5.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.0"})
create (_111483:`Component` {`nID`:22, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.0"})
create (_111484:`Component` {`nID`:8, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_111485:`FileNode` {`nID`:17, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.0"})
create (_111486:`FileNode` {`nID`:6, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_111487:`FileNode` {`nID`:9, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.0"})
create (_111488:`FileNode` {`nID`:125, `name`:"ariane.community.git.repos-0.5.1.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.1"})
create (_111489:`Component` {`nID`:128, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.2"})
create (_111490:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:18, `name`:"wresources", `order`:5, `version`:"0.5.0"})
create (_111491:`Component` {`nID`:120, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.5.1"})
create (_111492:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:14, `name`:"wab", `order`:3, `version`:"0.5.0"})
create (_111493:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:12, `name`:"idmwat", `order`:2, `version`:"0.5.0"})
create (_111494:`FileNode` {`nID`:3, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_111495:`FileNode` {`nID`:179, `name`:"ariane.community.core.injector-0.5.2.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_111496:`FileNode` {`nID`:180, `name`:"net.echinopsii.ariane.community.core.injector_0.5.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_111497:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:866, `name`:"base", `order`:1, `version`:"0.7.1"})
create (_111498:`FileNode` {`nID`:859, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_111499:`FileNode` {`nID`:867, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_111500:`FileNode` {`nID`:874, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_111501:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:875, `name`:"wat", `order`:3, `version`:"0.7.1"})
create (_111502:`FileNode` {`nID`:227, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.2.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.2"})
create (_111503:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:873, `name`:"base", `order`:1, `version`:"0.7.1"})
create (_111504:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:225, `name`:"wat", `order`:7, `version`:"0.5.2"})
create (_111505:`FileNode` {`nID`:226, `name`:"ariane.community.core.mapping-0.5.2.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.2"})
create (_111506:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:223, `name`:"taitale", `order`:6, `version`:"0.5.2"})
create (_111507:`FileNode` {`nID`:224, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.2"})
create (_111508:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:219, `name`:"rim", `order`:4, `version`:"0.5.2"})
create (_111509:`FileNode` {`nID`:220, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.2"})
create (_111510:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:217, `name`:"dsl", `order`:3, `version`:"0.5.2"})
create (_111511:`FileNode` {`nID`:218, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.2"})
create (_111512:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:215, `name`:"blueprints", `order`:2, `version`:"0.5.2"})
create (_111513:`FileNode` {`nID`:216, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.2"})
create (_111514:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:213, `name`:"api", `order`:1, `version`:"0.5.2"})
create (_111515:`FileNode` {`nID`:214, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.2"})
create (_111516:`FileNode` {`nID`:212, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.2"})
create (_111517:`Component` {`nID`:2, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.0"})
create (_111518:`FileNode` {`nID`:208, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_111519:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:207, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_111520:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:221, `name`:"ds", `order`:5, `version`:"0.5.2"})
create (_111521:`FileNode` {`nID`:222, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.2"})
create (_111522:`FileNode` {`nID`:228, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.2"})
create (_111523:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:877, `name`:"messaging", `order`:2, `version`:"0.7.1"})
create (_111524:`FileNode` {`nID`:876, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_111525:`FileNode` {`nID`:871, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.7.1"})
create (_111526:`FileNode` {`nID`:209, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_111527:`FileNode` {`nID`:1, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.0"})
create (_111528:`FileNode` {`nID`:861, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_111529:`FileNode` {`nID`:202, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_111530:`FileNode` {`nID`:206, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_111531:`FileNode` {`nID`:204, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_111532:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:203, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_111533:`Component` {`nID`:197, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_111534:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:205, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_111535:`FileNode` {`nID`:210, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_111536:`Component` {`nID`:211, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_111537:`FileNode` {`nID`:195, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_111538:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:199, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_111539:`FileNode` {`nID`:196, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_111540:`Component` {`nID`:65, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.5.1"})
create (_111541:`FileNode` {`nID`:64, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.5.1"})
create (_111542:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:73, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_111543:`FileNode` {`nID`:62, `name`:"ariane.community.git.repos-0.5.0.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.5.0"})
create (_111544:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:201, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_111545:`FileNode` {`nID`:200, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_111546:`Distribution` {`dep_type`:"mno", `editable`:"false", `nID`:63, `name`:"community", `url_repos`:"https://github.com/echinopsii/net.echinopsii.", `version`:"0.5.0"})
create (_111547:`FileNode` {`nID`:198, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_111548:`FileNode` {`nID`:72, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_111549:`FileNode` {`nID`:68, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_111550:`Component` {`nID`:71, `name`:"idm", `order`:2, `type`:"core", `version`:"0.4.0"})
create (_111551:`FileNode` {`nID`:70, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.0"})
create (_111552:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:93, `name`:"rim", `order`:4, `version`:"0.5.1"})
create (_111553:`FileNode` {`nID`:92, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.1"})
create (_111554:`FileNode` {`nID`:76, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_111555:`FileNode` {`nID`:844, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_111556:`FileNode` {`nID`:74, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_111557:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:77, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_111558:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:67, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_111559:`FileNode` {`nID`:66, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.0"})
create (_111560:`FileNode` {`nID`:69, `name`:"net.echinopsii.ariane.community.core.idm_0.4.0.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.0"})
create (_111561:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:91, `name`:"dsl", `order`:3, `version`:"0.5.1"})
create (_111562:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:81, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_111563:`FileNode` {`nID`:850, `name`:"net.echinopsii.ariane.community.core.directory_0.7.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1"})
create (_111564:`FileNode` {`nID`:90, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.1"})
create (_111565:`Component` {`nID`:852, `name`:"portal", `order`:4, `type`:"core", `version`:"0.7.1"})
create (_111566:`Component` {`nID`:851, `name`:"directory", `order`:6, `type`:"core", `version`:"0.7.1"})
create (_111567:`FileNode` {`nID`:80, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_111568:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:79, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_111569:`FileNode` {`nID`:82, `name`:"ariane.community.core.portal-0.5.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_111570:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:75, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_111571:`FileNode` {`nID`:846, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_111572:`FileNode` {`nID`:849, `name`:"ariane.community.core.directory-0.7.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1"})
create (_111573:`FileNode` {`nID`:848, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.7.1"})
create (_111574:`FileNode` {`nID`:853, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_111575:`FileNode` {`nID`:863, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_111576:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:860, `name`:"wresources", `order`:5, `version`:"0.7.1"})
create (_111577:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:847, `name`:"base", `order`:1, `version`:"0.7.1"})
create (_111578:`FileNode` {`nID`:856, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2"})
create (_111579:`FileNode` {`nID`:857, `name`:"net.echinopsii.ariane.community.core.idm_0.4.2.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2"})
create (_111580:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:862, `name`:"wat", `order`:2, `version`:"0.7.1"})
create (_111581:`FileNode` {`nID`:855, `name`:"ariane.community.core.idm-0.4.2.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2"})
create (_111582:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:854, `name`:"base", `order`:1, `version`:"0.4.2"})
create (_111583:`Component` {`nID`:882, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_111584:`FileNode` {`nID`:883, `name`:"net.echinopsii.ariane.community.core.injector_0.7.1-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1"})
create (_111585:`FileNode` {`nID`:880, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.7.1"})
create (_111586:`Component` {`nID`:881, `name`:"injector", `order`:7, `type`:"core", `version`:"0.7.1"})
create (_111587:`FileNode` {`nID`:878, `name`:"net.echinopsii.ariane.community.core.injector_0.7.1.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1"})
create (_111588:`FileNode` {`nID`:879, `name`:"ariane.community.core.injector-0.7.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1"})
create (_111589:`FileNode` {`nID`:887, `name`:"net.echinopsii.ariane.community.core.portal_0.7.1-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1"})
create (_111590:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:24, `name`:"api", `order`:1, `version`:"0.5.0"})
create (_111591:`FileNode` {`nID`:886, `name`:"net.echinopsii.ariane.community.messaging_0.1.1-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1"})
create (_111592:`FileNode` {`nID`:161, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.5.1"})
create (_111593:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:484, `name`:"directory", `order`:1, `version`:"0.2.2"})
create (_111594:`FileNode` {`nID`:11, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.0"})
create (_111595:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:10, `name`:"base", `order`:1, `version`:"0.5.0"})
create (_111596:`FileNode` {`nID`:479, `name`:"net.echinopsii.ariane.community.core.injector_0.6.2.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.2"})
create (_111597:`FileNode` {`nID`:13, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.0"})
create (_111598:`FileNode` {`nID`:885, `name`:"net.echinopsii.ariane.community.core.idm_0.4.3-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1"})
create (_111599:`FileNode` {`nID`:884, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.1-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1"})
create (_111600:`FileNode` {`nID`:888, `name`:"net.echinopsii.ariane.community.core.directory_0.7.1-SNAPSHOT.plan.tpl", `path`:"ariane.community.environment/Virgo/virgo-tomcat-server-3.6.2.RELEASE/repository/ariane-core/", `type`:"plantpl", `version`:"0.7.1"})
create (_111601:`FileNode` {`nID`:872, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_111602:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:893, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_111603:`FileNode` {`nID`:892, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_111604:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:891, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_111605:`FileNode` {`nID`:890, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_111606:`Component` {`nID`:889, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.7.1"})
create (_111607:`FileNode` {`nID`:894, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_111608:`FileNode` {`nID`:895, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_111609:`FileNode` {`nID`:896, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_111610:`FileNode` {`nID`:1422, `name`:"ariane.community.core.mapping-0.7.3.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.3"})
create (_111611:`FileNode` {`nID`:1423, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.7.3"})
create (_111612:`FileNode` {`nID`:1420, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wresources/", `type`:"pom", `version`:"0.7.3"})
create (_111613:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wresources", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:1421, `name`:"wresources", `order`:8, `version`:"0.7.3"})
create (_111614:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:297, `name`:"wat", `order`:6, `version`:"0.6.0"})
create (_111615:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:1419, `name`:"taitale", `order`:6, `version`:"0.7.3"})
create (_111616:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:277, `name`:"idmwat", `order`:3, `version`:"0.6.0"})
create (_111617:`FileNode` {`nID`:280, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.0"})
create (_111618:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:275, `name`:"wat", `order`:2, `version`:"0.6.0"})
create (_111619:`FileNode` {`nID`:276, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.0"})
create (_111620:`FileNode` {`nID`:151, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.1"})
create (_111621:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:26, `name`:"blueprints", `order`:2, `version`:"0.5.0"})
create (_111622:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:257, `name`:"rabbitmq", `version`:"0.1.0"})
create (_111623:`FileNode` {`nID`:304, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.0"})
create (_111624:`FileNode` {`nID`:165, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.5.1"})
create (_111625:`FileNode` {`nID`:256, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.1.0"})
create (_111626:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:144, `name`:"wresources", `order`:5, `version`:"0.5.1"})
create (_111627:`FileNode` {`nID`:139, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.5.1"})
create (_111628:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:142, `name`:"wat", `order`:4, `version`:"0.5.1"})
create (_111629:`FileNode` {`nID`:141, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.5.1"})
create (_111630:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:289, `name`:"blueprints", `order`:2, `version`:"0.6.0"})
create (_111631:`FileNode` {`nID`:288, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.0"})
create (_111632:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:140, `name`:"wab", `order`:3, `version`:"0.5.1"})
create (_111633:`FileNode` {`nID`:23, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.0"})
create (_111634:`FileNode` {`nID`:25, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.5.0"})
create (_111635:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:152, `name`:"blueprints", `order`:2, `version`:"0.5.1"})
create (_111636:`FileNode` {`nID`:137, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.5.1"})
create (_111637:`FileNode` {`nID`:147, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.5.1"})
create (_111638:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:136, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_111639:`FileNode` {`nID`:146, `name`:"net.echinopsii.ariane.community.core.portal_0.5.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_111640:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:138, `name`:"idmwat", `order`:2, `version`:"0.5.1"})
create (_111641:`FileNode` {`nID`:135, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.5.1"})
create (_111642:`FileNode` {`nID`:255, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_111643:`FileNode` {`nID`:284, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.0"})
create (_111644:`FileNode` {`nID`:302, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.0"})
create (_111645:`FileNode` {`nID`:296, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.0"})
create (_111646:`FileNode` {`nID`:300, `name`:"ariane.community.core.mapping-0.6.0.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_111647:`FileNode` {`nID`:155, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.5.1"})
create (_111648:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:299, `name`:"taitale", `order`:7, `version`:"0.6.0"})
create (_111649:`FileNode` {`nID`:301, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.0.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_111650:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:154, `name`:"dsl", `order`:3, `version`:"0.5.1"})
create (_111651:`FileNode` {`nID`:153, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.1"})
create (_111652:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:150, `name`:"api", `order`:1, `version`:"0.5.1"})
create (_111653:`FileNode` {`nID`:149, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.5.1"})
create (_111654:`FileNode` {`nID`:143, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.5.1"})
create (_111655:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:156, `name`:"rim", `order`:4, `version`:"0.5.1"})
create (_111656:`Component` {`nID`:166, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.1"})
create (_111657:`FileNode` {`nID`:163, `name`:"ariane.community.core.mapping-0.5.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_111658:`FileNode` {`nID`:5, `name`:"ariane.community.core.idm-0.4.0.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.0"})
create (_111659:`FileNode` {`nID`:159, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.5.1"})
create (_111660:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:162, `name`:"wat", `order`:7, `version`:"0.5.1"})
create (_111661:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:158, `name`:"ds", `order`:5, `version`:"0.5.1"})
create (_111662:`FileNode` {`nID`:157, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.5.1"})
create (_111663:`FileNode` {`nID`:164, `name`:"net.echinopsii.ariane.community.core.mapping_0.5.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_111664:`FileNode` {`nID`:251, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.1.0"})
create (_111665:`FileNode` {`nID`:254, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.1.0.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.1.0"})
create (_111666:`FileNode` {`nID`:253, `name`:"ariane.community.plugin.rabbitmq-0.1.0.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_111667:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:250, `name`:"jsonparser", `order`:2, `version`:"0.1.0"})
create (_111668:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:231, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_111669:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:252, `name`:"injector", `order`:3, `version`:"0.1.0"})
create (_111670:`FileNode` {`nID`:278, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.0"})
create (_111671:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:279, `name`:"wab", `order`:4, `version`:"0.6.0"})
create (_111672:`Component` {`nID`:1426, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2"})
create (_111772:`Component` {`nID`:1425, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.7.3"})
create (_111773:`FileNode` {`nID`:1424, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.3.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.3"})
create (_111774:`Component` {`nID`:1427, `name`:"portal", `order`:4, `type`:"core", `version`:"0.7.3"})
create (_111775:`Component` {`nID`:322, `name`:"environment", `order`:7, `type`:"environment", `version`:"0.6.0"})
create (_111776:`FileNode` {`nID`:899, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_111777:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:906, `name`:"blueprints", `order`:2, `version`:"0.7.1"})
create (_111778:`Component` {`nID`:321, `name`:"injector", `order`:6, `type`:"core", `version`:"0.6.0"})
create (_111779:`FileNode` {`nID`:320, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.0"})
create (_111780:`FileNode` {`nID`:314, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.0"})
create (_111781:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:315, `name`:"messaging", `order`:2, `version`:"0.6.0"})
create (_111782:`FileNode` {`nID`:312, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.0"})
create (_111783:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:313, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_111784:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:317, `name`:"wat", `order`:3, `version`:"0.6.0"})
create (_111785:`Component` {`nID`:174, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_111786:`FileNode` {`nID`:319, `name`:"net.echinopsii.ariane.community.core.injector_0.6.0.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_111787:`FileNode` {`nID`:318, `name`:"ariane.community.core.injector-0.6.0.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_111788:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:551, `name`:"wat", `order`:2, `version`:"0.6.3"})
create (_111789:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:531, `name`:"api", `order`:1, `version`:"0.6.3"})
create (_111790:`FileNode` {`nID`:546, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.3"})
create (_111791:`FileNode` {`nID`:554, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.3"})
create (_111792:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:549, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_111793:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:541, `name`:"wat", `order`:6, `version`:"0.6.3"})
create (_111794:`FileNode` {`nID`:536, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.3"})
create (_111795:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:30, `name`:"rim", `order`:4, `version`:"0.5.0"})
create (_111796:`FileNode` {`nID`:108, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_111797:`FileNode` {`nID`:167, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_111798:`Component` {`nID`:111, `name`:"directory", `order`:5, `type`:"core", `version`:"0.5.1"})
create (_111799:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:170, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_111800:`FileNode` {`nID`:116, `name`:"ariane.community.core.injector-0.5.1.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_111801:`Component` {`nID`:148, `name`:"portal", `order`:3, `type`:"core", `version`:"0.5.1"})
create (_111802:`FileNode` {`nID`:173, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.5.1"})
create (_111803:`FileNode` {`nID`:172, `name`:"net.echinopsii.ariane.community.core.directory_0.5.1.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.5.1"})
create (_111804:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:107, `name`:"wat", `order`:2, `version`:"0.5.1"})
create (_111805:`FileNode` {`nID`:41, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.0"})
create (_111806:`FileNode` {`nID`:171, `name`:"ariane.community.core.directory-0.5.1.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.5.1"})
create (_111807:`FileNode` {`nID`:169, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.5.1"})
create (_111808:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:168, `name`:"base", `order`:1, `version`:"0.5.1"})
create (_111809:`FileNode` {`nID`:27, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.5.0"})
create (_111810:`FileNode` {`nID`:282, `name`:"ariane.community.core.portal-0.6.0.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_111811:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:287, `name`:"api", `order`:1, `version`:"0.6.0"})
create (_111812:`FileNode` {`nID`:272, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.0"})
create (_111813:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:281, `name`:"wresources", `order`:5, `version`:"0.6.0"})
create (_111814:`FileNode` {`nID`:290, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.0"})
create (_111815:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:267, `name`:"base", `order`:1, `version`:"0.4.0"})
create (_111816:`FileNode` {`nID`:869, `name`:"net.echinopsii.ariane.community.core.portal_0.7.1.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1"})
create (_111817:`FileNode` {`nID`:292, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.0"})
create (_111818:`FileNode` {`nID`:298, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.0"})
create (_111819:`FileNode` {`nID`:870, `name`:"ariane.community.core.portal-0.7.1.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1"})
create (_111820:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:293, `name`:"dsl", `order`:4, `version`:"0.6.0"})
create (_111821:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:868, `name`:"wab", `order`:4, `version`:"0.7.1"})
create (_111822:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:291, `name`:"rim", `order`:3, `version`:"0.6.0"})
create (_111823:`FileNode` {`nID`:306, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.0"})
create (_111824:`Component` {`nID`:311, `name`:"directory", `order`:5, `type`:"core", `version`:"0.6.0"})
create (_111825:`FileNode` {`nID`:230, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.5.1"})
create (_111826:`FileNode` {`nID`:308, `name`:"ariane.community.core.directory-0.6.0.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.0"})
create (_111827:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:900, `name`:"taitale", `order`:6, `version`:"0.7.1"})
create (_111828:`Component` {`nID`:229, `name`:"mapping", `order`:4, `type`:"core", `version`:"0.5.2"})
create (_111829:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:305, `name`:"base", `order`:1, `version`:"0.6.0"})
create (_111830:`FileNode` {`nID`:309, `name`:"net.echinopsii.ariane.community.core.directory_0.6.0.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.0"})
create (_111831:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:307, `name`:"wat", `order`:2, `version`:"0.6.0"})
create (_111832:`FileNode` {`nID`:310, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.0"})
create (_111833:`FileNode` {`nID`:932, `name`:"ariane.community.git.repos-0.7.1.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.4-SNAPSHOT"})
create (_111834:`FileNode` {`nID`:933, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.4-SNAPSHOT"})
create (_111835:`FileNode` {`nID`:930, `name`:"ariane.community.plugins-distrib-0.7.1.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.4-SNAPSHOT"})
create (_111836:`FileNode` {`nID`:931, `name`:"ariane.community.distrib-0.7.1.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.4-SNAPSHOT"})
create (_111837:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:928, `name`:"rabbitmq", `version`:"0.2.5-SNAPSHOT"})
create (_111838:`FileNode` {`nID`:929, `name`:"pom-ariane.community.distrib-0.7.1.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.4-SNAPSHOT"})
create (_111839:`FileNode` {`nID`:926, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_master.SNAPSHOT.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.5-SNAPSHOT"})
create (_111840:`FileNode` {`nID`:927, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.5-SNAPSHOT"})
create (_111841:`FileNode` {`nID`:924, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.5-SNAPSHOT"})
create (_111842:`FileNode` {`nID`:925, `name`:"ariane.community.plugin.rabbitmq-master.SNAPSHOT.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.5-SNAPSHOT"})
create (_111843:`Component` {`nID`:898, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.7.1"})
create (_111844:`FileNode` {`nID`:897, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.7.1"})
create (_111845:`Distribution` {`dep_type`:"mno", `editable`:"false", `nID`:934, `name`:"community", `url_repos`:"http://stash.echinopsii.net/scm/ariane/", `version`:"0.7.1"})
create (_111846:`FileNode` {`nID`:918, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_111847:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:919, `name`:"jsonparser", `order`:2, `version`:"0.2.5-SNAPSHOT"})
create (_111848:`Component` {`nID`:916, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.7.1"})
create (_111849:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:917, `name`:"procos", `version`:"0.1.1-b01"})
create (_111850:`FileNode` {`nID`:914, `name`:"ariane.community.core.mapping-0.7.1.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.1"})
create (_111851:`FileNode` {`nID`:915, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.7.1"})
create (_111852:`FileNode` {`nID`:922, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_111853:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:921, `name`:"directory", `order`:1, `version`:"0.2.5-SNAPSHOT"})
create (_111854:`FileNode` {`nID`:920, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_111855:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:923, `name`:"injector", `order`:3, `version`:"0.2.5-SNAPSHOT"})
create (_111856:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:912, `name`:"ds", `order`:5, `version`:"0.7.1"})
create (_111857:`FileNode` {`nID`:911, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_111858:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:910, `name`:"api", `order`:1, `version`:"0.7.1"})
create (_111859:`FileNode` {`nID`:909, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_111860:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:908, `name`:"rim", `order`:3, `version`:"0.7.1"})
create (_111861:`FileNode` {`nID`:907, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_111862:`FileNode` {`nID`:913, `name`:"net.echinopsii.ariane.community.core.mapping_0.7.1.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.7.1"})
create (_111863:`FileNode` {`nID`:901, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_111864:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:902, `name`:"wat", `order`:7, `version`:"0.7.1"})
create (_111865:`FileNode` {`nID`:905, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_111866:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:904, `name`:"dsl", `order`:4, `version`:"0.7.1"})
create (_111867:`FileNode` {`nID`:903, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_111868:`FileNode` {`nID`:1433, `name`:"ariane.community.core.directory-0.7.2.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.7.2"})
create (_111869:`FileNode` {`nID`:1434, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.7.2"})
create (_111870:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `deployable`:true, `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:1431, `name`:"wat", `order`:2, `version`:"0.7.2"})
create _104458-[:`CONTAINS`]->_104837
create _104458-[:`CONTAINS`]->_104838
create _104458-[:`CONTAINS`]->_104840
create _104458-[:`module`]->_104835
create _104461-[:`CONTAINS`]->_104460
create _104463-[:`CONTAINS`]->_104462
create _104464-[:`CONTAINS`]->_104691
create _104467-[:`CONTAINS`]->_104466
create _104469-[:`CONTAINS`]->_104468
create _104471-[:`CONTAINS`]->_104470
create _104473-[:`CONTAINS`]->_104472
create _104473-[:`module`]->_106105
create _104473-[:`module`]->_106117
create _104473-[:`module`]->_104467
create _104473-[:`module`]->_106103
create _104473-[:`module`]->_104471
create _104473-[:`module`]->_104469
create _104475-[:`CONTAINS`]->_104474
create _104479-[:`CONTAINS`]->_104478
create _104479-[:`CONTAINS`]->_104477
create _104479-[:`CONTAINS`]->_104476
create _104479-[:`module`]->_104473
create _104479-[:`module`]->_106119
create _104479-[:`module`]->_106111
create _104479-[:`module`]->_106113
create _104479-[:`module`]->_104475
create _104479-[:`dependency` {`version_max`:"0.3.0", `version_min`:"0.2.0"}]->_104481
create _104479-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_106115
create _104479-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104480
create _104480-[:`CONTAINS`]->_104621
create _104480-[:`CONTAINS`]->_104622
create _104480-[:`CONTAINS`]->_104623
create _104480-[:`module`]->_104616
create _104480-[:`module`]->_104618
create _104480-[:`module`]->_104620
create _104480-[:`module`]->_104614
create _104480-[:`module`]->_104612
create _104480-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_106115
create _104481-[:`CONTAINS`]->_104630
create _104481-[:`CONTAINS`]->_104631
create _104481-[:`CONTAINS`]->_104632
create _104481-[:`CONTAINS`]->_105471
create _104481-[:`module`]->_104625
create _104481-[:`module`]->_104627
create _104481-[:`module`]->_104629
create _104483-[:`CONTAINS`]->_104482
create _104485-[:`CONTAINS`]->_104484
create _104492-[:`CONTAINS`]->_104491
create _104496-[:`CONTAINS`]->_104537
create _104497-[:`CONTAINS`]->_104555
create _104501-[:`CONTAINS`]->_104499
create _104502-[:`CONTAINS`]->_104500
create _104504-[:`CONTAINS`]->_104503
create _104508-[:`CONTAINS`]->_104520
create _104508-[:`CONTAINS`]->_104533
create _104508-[:`CONTAINS`]->_104507
create _104508-[:`CONTAINS`]->_104521
create _104508-[:`CONTAINS`]->_104519
create _104508-[:`composedBy`]->_104590
create _104508-[:`composedBy`]->_111459
create _104508-[:`composedBy`]->_111778
create _104508-[:`composedBy`]->_111457
create _104508-[:`composedBy`]->_111824
create _104508-[:`composedBy`]->_106133
create _104508-[:`composedBy`]->_111775
create _104509-[:`CONTAINS`]->_104518
create _104511-[:`CONTAINS`]->_104510
create _104514-[:`CONTAINS`]->_104516
create _104514-[:`CONTAINS`]->_104512
create _104514-[:`CONTAINS`]->_104513
create _104514-[:`CONTAINS`]->_104515
create _104514-[:`module`]->_104511
create _104514-[:`module`]->_104509
create _104514-[:`module`]->_104517
create _104514-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_111824
create _104514-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_111778
create _104514-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_111459
create _104514-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_111457
create _104514-[:`compatibleWith` {`version_max`:"0.2.1", `version_min`:"0.2.0"}]->_104508
create _104517-[:`CONTAINS`]->_106101
create _104522-[:`CONTAINS`]->_104527
create _104524-[:`CONTAINS`]->_104523
create _104524-[:`CONTAINS`]->_104505
create _104524-[:`CONTAINS`]->_104506
create _104524-[:`module`]->_104502
create _104525-[:`CONTAINS`]->_104564
create _104532-[:`CONTAINS`]->_104546
create _104534-[:`CONTAINS`]->_104538
create _104536-[:`CONTAINS`]->_104498
create _104539-[:`CONTAINS`]->_104570
create _104539-[:`module`]->_106100
create _104539-[:`module`]->_104573
create _104539-[:`module`]->_104577
create _104539-[:`module`]->_104575
create _104543-[:`CONTAINS`]->_105650
create _104545-[:`CONTAINS`]->_105656
create _104550-[:`CONTAINS`]->_104551
create _104553-[:`CONTAINS`]->_104552
create _104560-[:`CONTAINS`]->_104526
create _104561-[:`CONTAINS`]->_104568
create _104561-[:`CONTAINS`]->_111488
create _104561-[:`CONTAINS`]->_104567
create _104561-[:`CONTAINS`]->_104562
create _104561-[:`CONTAINS`]->_104563
create _104561-[:`composedBy`]->_105368
create _104561-[:`composedBy`]->_111540
create _104561-[:`composedBy`]->_111798
create _104561-[:`composedBy`]->_104963
create _104561-[:`composedBy`]->_111491
create _104561-[:`composedBy`]->_111550
create _104561-[:`composedBy`]->_105632
create _104571-[:`CONTAINS`]->_104549
create _104571-[:`CONTAINS`]->_104548
create _104571-[:`CONTAINS`]->_104554
create _104571-[:`module`]->_104497
create _104571-[:`module`]->_104550
create _104571-[:`module`]->_104536
create _104571-[:`module`]->_104501
create _104571-[:`module`]->_104553
create _104571-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_104524
create _104573-[:`CONTAINS`]->_104572
create _104575-[:`CONTAINS`]->_104576
create _104577-[:`CONTAINS`]->_104574
create _104580-[:`CONTAINS`]->_104589
create _104581-[:`CONTAINS`]->_104582
create _104590-[:`CONTAINS`]->_104593
create _104590-[:`CONTAINS`]->_104591
create _104590-[:`CONTAINS`]->_104592
create _104590-[:`module`]->_111815
create _104595-[:`CONTAINS`]->_104594
create _104595-[:`CONTAINS`]->_104493
create _104595-[:`CONTAINS`]->_104494
create _104595-[:`module`]->_104485
create _104595-[:`module`]->_104483
create _104595-[:`module`]->_104492
create _104595-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104480
create _104595-[:`dependency` {`version_max`:"0.3.0", `version_min`:"0.2.0"}]->_104481
create _104602-[:`CONTAINS`]->_104597
create _104602-[:`CONTAINS`]->_104600
create _104602-[:`CONTAINS`]->_104598
create _104602-[:`CONTAINS`]->_104596
create _104602-[:`CONTAINS`]->_104599
create _104602-[:`CONTAINS`]->_104601
create _104604-[:`CONTAINS`]->_104603
create _104606-[:`CONTAINS`]->_104605
create _104610-[:`CONTAINS`]->_104608
create _104610-[:`CONTAINS`]->_104607
create _104610-[:`CONTAINS`]->_104609
create _104610-[:`module`]->_104604
create _104610-[:`module`]->_104606
create _104610-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104480
create _104612-[:`CONTAINS`]->_104611
create _104614-[:`CONTAINS`]->_104613
create _104616-[:`CONTAINS`]->_104615
create _104618-[:`CONTAINS`]->_104617
create _104620-[:`CONTAINS`]->_104619
create _104625-[:`CONTAINS`]->_104624
create _104627-[:`CONTAINS`]->_104626
create _104629-[:`CONTAINS`]->_104628
create _104634-[:`CONTAINS`]->_104633
create _104636-[:`CONTAINS`]->_104635
create _104638-[:`CONTAINS`]->_104637
create _104643-[:`CONTAINS`]->_104640
create _104643-[:`CONTAINS`]->_104642
create _104643-[:`CONTAINS`]->_104639
create _104643-[:`CONTAINS`]->_104641
create _104643-[:`module`]->_104636
create _104643-[:`module`]->_104638
create _104643-[:`module`]->_104634
create _104643-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104480
create _104643-[:`dependency` {`version_max`:"0.9.0", `version_min`:"0.8.0"}]->_104479
create _104643-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104610
create _104643-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104595
create _104643-[:`compatibleWith`]->_104648
create _104644-[:`compatibleWith`]->_104648
create _104648-[:`CONTAINS`]->_104646
create _104648-[:`CONTAINS`]->_104647
create _104648-[:`CONTAINS`]->_104645
create _104648-[:`composedBy`]->_104481
create _104648-[:`composedBy`]->_106115
create _104648-[:`composedBy`]->_104602
create _104648-[:`composedBy`]->_104595
create _104648-[:`composedBy`]->_104479
create _104648-[:`composedBy`]->_106130
create _104648-[:`composedBy`]->_104610
create _104648-[:`composedBy`]->_104480
create _104670-[:`CONTAINS`]->_104669
create _104672-[:`CONTAINS`]->_104671
create _104674-[:`CONTAINS`]->_104673
create _104678-[:`CONTAINS`]->_104675
create _104678-[:`CONTAINS`]->_104677
create _104678-[:`CONTAINS`]->_104676
create _104678-[:`module`]->_104672
create _104678-[:`module`]->_106151
create _104678-[:`module`]->_104674
create _104678-[:`module`]->_106066
create _104678-[:`module`]->_104670
create _104678-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_104458
create _104682-[:`CONTAINS`]->_104681
create _104684-[:`CONTAINS`]->_104683
create _104686-[:`CONTAINS`]->_104685
create _104688-[:`CONTAINS`]->_104687
create _104688-[:`CONTAINS`]->_104680
create _104688-[:`CONTAINS`]->_104679
create _104688-[:`module`]->_104682
create _104688-[:`module`]->_106255
create _104688-[:`module`]->_106259
create _104690-[:`CONTAINS`]->_104689
create _104693-[:`CONTAINS`]->_104692
create _104695-[:`CONTAINS`]->_104694
create _104698-[:`CONTAINS`]->_104697
create _104699-[:`CONTAINS`]->_104696
create _104702-[:`CONTAINS`]->_104704
create _104706-[:`CONTAINS`]->_104705
create _104706-[:`CONTAINS`]->_104716
create _104706-[:`CONTAINS`]->_106149
create _104706-[:`module`]->_106141
create _104706-[:`module`]->_104686
create _104706-[:`module`]->_106143
create _104706-[:`module`]->_104690
create _104706-[:`module`]->_104684
create _104706-[:`dependency` {`version_max`:"0.3.0", `version_min`:"0.2.0"}]->_104688
create _104706-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_104708
create _104706-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104707
create _104707-[:`CONTAINS`]->_104788
create _104707-[:`CONTAINS`]->_104789
create _104707-[:`CONTAINS`]->_104803
create _104707-[:`module`]->_104798
create _104707-[:`module`]->_104796
create _104707-[:`module`]->_104802
create _104707-[:`module`]->_104800
create _104707-[:`module`]->_104794
create _104707-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_104708
create _104708-[:`CONTAINS`]->_104775
create _104708-[:`CONTAINS`]->_104772
create _104708-[:`CONTAINS`]->_104774
create _104708-[:`module`]->_104777
create _104710-[:`CONTAINS`]->_104709
create _104713-[:`CONTAINS`]->_104711
create _104714-[:`CONTAINS`]->_104712
create _104717-[:`CONTAINS`]->_104719
create _104717-[:`CONTAINS`]->_104718
create _104717-[:`CONTAINS`]->_104715
create _104717-[:`module`]->_104713
create _104717-[:`module`]->_104710
create _104717-[:`module`]->_104714
create _104717-[:`dependency` {`version_max`:"0.3.0", `version_min`:"0.2.0"}]->_104688
create _104717-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104707
create _104721-[:`CONTAINS`]->_104722
create _104721-[:`module`]->_104723
create _104721-[:`module`]->_104729
create _104721-[:`module`]->_104731
create _104721-[:`module`]->_104725
create _104721-[:`module`]->_104735
create _104721-[:`module`]->_104733
create _104723-[:`CONTAINS`]->_104724
create _104725-[:`CONTAINS`]->_104726
create _104729-[:`CONTAINS`]->_104728
create _104731-[:`CONTAINS`]->_104730
create _104733-[:`CONTAINS`]->_104734
create _104735-[:`CONTAINS`]->_104732
create _104736-[:`CONTAINS`]->_104748
create _104739-[:`CONTAINS`]->_104738
create _104741-[:`CONTAINS`]->_105469
create _104741-[:`CONTAINS`]->_104742
create _104741-[:`CONTAINS`]->_104740
create _104741-[:`CONTAINS`]->_104743
create _104741-[:`module`]->_104747
create _104741-[:`module`]->_104745
create _104741-[:`module`]->_104760
create _104745-[:`CONTAINS`]->_104744
create _104747-[:`CONTAINS`]->_104746
create _104749-[:`CONTAINS`]->_104750
create _104752-[:`CONTAINS`]->_104753
create _104752-[:`CONTAINS`]->_104762
create _104752-[:`CONTAINS`]->_104756
create _104752-[:`CONTAINS`]->_104755
create _104752-[:`CONTAINS`]->_104754
create _104752-[:`CONTAINS`]->_104751
create _104758-[:`CONTAINS`]->_104759
create _104760-[:`CONTAINS`]->_104757
create _104761-[:`CONTAINS`]->_104765
create _104761-[:`CONTAINS`]->_104764
create _104761-[:`CONTAINS`]->_104737
create _104761-[:`CONTAINS`]->_104766
create _104761-[:`CONTAINS`]->_104767
create _104761-[:`composedBy`]->_104688
create _104761-[:`composedBy`]->_104779
create _104761-[:`composedBy`]->_104717
create _104761-[:`composedBy`]->_106150
create _104761-[:`composedBy`]->_104708
create _104761-[:`composedBy`]->_106153
create _104761-[:`composedBy`]->_104707
create _104761-[:`composedBy`]->_104706
create _104763-[:`compatibleWith`]->_104761
create _104768-[:`CONTAINS`]->_104771
create _104770-[:`CONTAINS`]->_104785
create _104777-[:`CONTAINS`]->_104776
create _104779-[:`CONTAINS`]->_104781
create _104779-[:`CONTAINS`]->_104780
create _104779-[:`CONTAINS`]->_104778
create _104779-[:`module`]->_104787
create _104779-[:`module`]->_104783
create _104779-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104707
create _104783-[:`CONTAINS`]->_104782
create _104784-[:`CONTAINS`]->_104773
create _104787-[:`CONTAINS`]->_104786
create _104793-[:`CONTAINS`]->_104769
create _104793-[:`CONTAINS`]->_104790
create _104793-[:`CONTAINS`]->_104792
create _104793-[:`CONTAINS`]->_104791
create _104793-[:`module`]->_104768
create _104793-[:`module`]->_104770
create _104793-[:`module`]->_104784
create _104793-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104717
create _104793-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104779
create _104793-[:`dependency` {`version_max`:"0.9.0", `version_min`:"0.8.0"}]->_104706
create _104793-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104707
create _104793-[:`compatibleWith`]->_104761
create _104794-[:`CONTAINS`]->_104797
create _104796-[:`CONTAINS`]->_104799
create _104798-[:`CONTAINS`]->_104720
create _104800-[:`CONTAINS`]->_104801
create _104802-[:`CONTAINS`]->_104795
create _104804-[:`CONTAINS`]->_104986
create _104804-[:`CONTAINS`]->_104989
create _104804-[:`CONTAINS`]->_104987
create _104804-[:`module`]->_104996
create _104804-[:`module`]->_104994
create _104804-[:`module`]->_104998
create _104804-[:`module`]->_104988
create _104804-[:`module`]->_105002
create _104804-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_104805
create _104805-[:`CONTAINS`]->_104972
create _104805-[:`CONTAINS`]->_104973
create _104805-[:`CONTAINS`]->_104970
create _104805-[:`module`]->_104975
create _104807-[:`CONTAINS`]->_104808
create _104807-[:`CONTAINS`]->_104806
create _104807-[:`CONTAINS`]->_104809
create _104807-[:`module`]->_104736
create _104807-[:`module`]->_104749
create _104807-[:`module`]->_104721
create _104807-[:`module`]->_104815
create _104807-[:`module`]->_104739
create _104807-[:`dependency` {`version_max`:"0.3.0", `version_min`:"0.2.0"}]->_104741
create _104807-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_104805
create _104807-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104804
create _104810-[:`CONTAINS`]->_104811
create _104812-[:`CONTAINS`]->_104813
create _104815-[:`CONTAINS`]->_104727
create _104818-[:`CONTAINS`]->_104814
create _104820-[:`CONTAINS`]->_104816
create _104820-[:`CONTAINS`]->_104817
create _104820-[:`CONTAINS`]->_104819
create _104820-[:`module`]->_104818
create _104820-[:`module`]->_104812
create _104820-[:`module`]->_104810
create _104820-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104804
create _104820-[:`dependency` {`version_max`:"0.3.0", `version_min`:"0.2.0"}]->_104741
create _104822-[:`CONTAINS`]->_104821
create _104824-[:`CONTAINS`]->_104823
create _104826-[:`CONTAINS`]->_104827
create _104828-[:`CONTAINS`]->_104825
create _104828-[:`module`]->_104826
create _104828-[:`module`]->_104822
create _104828-[:`module`]->_104829
create _104828-[:`module`]->_104824
create _104829-[:`CONTAINS`]->_104841
create _104830-[:`CONTAINS`]->_104846
create _104835-[:`CONTAINS`]->_104856
create _104842-[:`CONTAINS`]->_104843
create _104847-[:`CONTAINS`]->_104857
create _104847-[:`module`]->_104702
create _104847-[:`module`]->_104855
create _104847-[:`module`]->_104983
create _104847-[:`module`]->_104981
create _104849-[:`CONTAINS`]->_104844
create _104850-[:`CONTAINS`]->_104848
create _104853-[:`CONTAINS`]->_104851
create _104853-[:`CONTAINS`]->_104845
create _104853-[:`CONTAINS`]->_104852
create _104853-[:`module`]->_104830
create _104853-[:`module`]->_104850
create _104853-[:`module`]->_104847
create _104853-[:`module`]->_104849
create _104853-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104678
create _104853-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_104458
create _104855-[:`CONTAINS`]->_104858
create _104861-[:`compatibleWith`]->_104982
create _104864-[:`CONTAINS`]->_104863
create _104864-[:`CONTAINS`]->_104976
create _104864-[:`CONTAINS`]->_104866
create _104864-[:`CONTAINS`]->_104977
create _104864-[:`module`]->_104865
create _104864-[:`module`]->_104968
create _104864-[:`module`]->_104966
create _104864-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104804
create _104864-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104979
create _104864-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104820
create _104864-[:`dependency` {`version_max`:"0.9.0", `version_min`:"0.8.0"}]->_104807
create _104864-[:`compatibleWith`]->_104982
create _104865-[:`CONTAINS`]->_104967
create _104890-[:`CONTAINS`]->_104529
create _104890-[:`CONTAINS`]->_104578
create _104890-[:`CONTAINS`]->_104566
create _104890-[:`module`]->_104581
create _104893-[:`CONTAINS`]->_107708
create _104894-[:`CONTAINS`]->_111805
create _104896-[:`CONTAINS`]->_111809
create _104897-[:`CONTAINS`]->_105371
create _104900-[:`CONTAINS`]->_104901
create _104906-[:`CONTAINS`]->_104907
create _104909-[:`CONTAINS`]->_104918
create _104910-[:`CONTAINS`]->_104904
create _104910-[:`module`]->_104934
create _104910-[:`module`]->_104923
create _104910-[:`module`]->_104927
create _104910-[:`module`]->_105319
create _104911-[:`CONTAINS`]->_105617
create _104912-[:`CONTAINS`]->_106057
create _104912-[:`CONTAINS`]->_104914
create _104912-[:`CONTAINS`]->_104919
create _104912-[:`module`]->_106056
create _104913-[:`CONTAINS`]->_104908
create _104923-[:`CONTAINS`]->_104922
create _104925-[:`CONTAINS`]->_104895
create _104927-[:`CONTAINS`]->_104929
create _104934-[:`CONTAINS`]->_104930
create _104940-[:`CONTAINS`]->_104937
create _104940-[:`CONTAINS`]->_104938
create _104940-[:`CONTAINS`]->_104936
create _104940-[:`CONTAINS`]->_104939
create _104940-[:`module`]->_105356
create _104940-[:`module`]->_111593
create _104940-[:`module`]->_105354
create _104940-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_105402
create _104940-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_105324
create _104940-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_104941
create _104940-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_106062
create _104940-[:`compatibleWith`]->_105465
create _104941-[:`CONTAINS`]->_104926
create _104941-[:`CONTAINS`]->_105375
create _104941-[:`CONTAINS`]->_105376
create _104941-[:`module`]->_105363
create _104941-[:`module`]->_105462
create _104941-[:`module`]->_104910
create _104941-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_106062
create _104941-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_104912
create _104944-[:`CONTAINS`]->_104948
create _104946-[:`CONTAINS`]->_111659
create _104951-[:`CONTAINS`]->_104954
create _104952-[:`CONTAINS`]->_104955
create _104952-[:`CONTAINS`]->_111791
create _104952-[:`CONTAINS`]->_104958
create _104952-[:`module`]->_111792
create _104952-[:`module`]->_111788
create _104952-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_105610
create _104953-[:`CONTAINS`]->_104956
create _104953-[:`module`]->_104959
create _104953-[:`module`]->_104951
create _104953-[:`module`]->_105568
create _104953-[:`module`]->_111789
create _104957-[:`CONTAINS`]->_104960
create _104959-[:`CONTAINS`]->_111794
create _104963-[:`CONTAINS`]->_104962
create _104963-[:`CONTAINS`]->_104945
create _104963-[:`CONTAINS`]->_111569
create _104963-[:`module`]->_111562
create _104963-[:`module`]->_111557
create _104963-[:`module`]->_111570
create _104963-[:`module`]->_111568
create _104963-[:`module`]->_111542
create _104963-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_111550
create _104966-[:`CONTAINS`]->_104969
create _104968-[:`CONTAINS`]->_104971
create _104975-[:`CONTAINS`]->_104974
create _104979-[:`CONTAINS`]->_104978
create _104979-[:`CONTAINS`]->_104993
create _104979-[:`CONTAINS`]->_104990
create _104979-[:`module`]->_104991
create _104979-[:`module`]->_104985
create _104979-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104804
create _104981-[:`CONTAINS`]->_104980
create _104982-[:`CONTAINS`]->_104860
create _104982-[:`CONTAINS`]->_104862
create _104982-[:`CONTAINS`]->_104859
create _104982-[:`composedBy`]->_104752
create _104982-[:`composedBy`]->_104820
create _104982-[:`composedBy`]->_104741
create _104982-[:`composedBy`]->_104805
create _104982-[:`composedBy`]->_104804
create _104982-[:`composedBy`]->_104979
create _104982-[:`composedBy`]->_104807
create _104982-[:`composedBy`]->_104758
create _104983-[:`CONTAINS`]->_104854
create _104985-[:`CONTAINS`]->_104984
create _104988-[:`CONTAINS`]->_105000
create _104991-[:`CONTAINS`]->_104992
create _104994-[:`CONTAINS`]->_104995
create _104996-[:`CONTAINS`]->_104997
create _104998-[:`CONTAINS`]->_104999
create _105002-[:`CONTAINS`]->_105001
create _105004-[:`CONTAINS`]->_105007
create _105006-[:`CONTAINS`]->_105009
create _105010-[:`CONTAINS`]->_105396
create _105010-[:`CONTAINS`]->_105395
create _105010-[:`CONTAINS`]->_105394
create _105010-[:`CONTAINS`]->_104831
create _105010-[:`module`]->_105318
create _105010-[:`module`]->_105314
create _105010-[:`module`]->_105316
create _105011-[:`CONTAINS`]->_105005
create _105011-[:`CONTAINS`]->_105312
create _105011-[:`CONTAINS`]->_105012
create _105011-[:`module`]->_105006
create _105011-[:`module`]->_105004
create _105314-[:`CONTAINS`]->_105315
create _105316-[:`CONTAINS`]->_105003
create _105318-[:`CONTAINS`]->_105317
create _105319-[:`CONTAINS`]->_104928
create _105320-[:`CONTAINS`]->_105322
create _105324-[:`CONTAINS`]->_105326
create _105324-[:`CONTAINS`]->_105323
create _105324-[:`CONTAINS`]->_105325
create _105324-[:`module`]->_105361
create _105324-[:`module`]->_105406
create _105324-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_106062
create _105328-[:`CONTAINS`]->_105344
create _105330-[:`CONTAINS`]->_105342
create _105331-[:`CONTAINS`]->_105334
create _105333-[:`CONTAINS`]->_105336
create _105335-[:`compatibleWith`]->_105382
create _105338-[:`CONTAINS`]->_105341
create _105338-[:`CONTAINS`]->_105350
create _105338-[:`CONTAINS`]->_105343
create _105338-[:`module`]->_105345
create _105338-[:`module`]->_105328
create _105338-[:`module`]->_105330
create _105338-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_105418
create _105338-[:`dependency` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_107256
create _105340-[:`CONTAINS`]->_105351
create _105340-[:`CONTAINS`]->_105332
create _105340-[:`CONTAINS`]->_105337
create _105340-[:`CONTAINS`]->_105329
create _105340-[:`module`]->_105331
create _105340-[:`module`]->_105348
create _105340-[:`module`]->_105333
create _105340-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_105416
create _105340-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_106397
create _105340-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_105338
create _105340-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_105418
create _105340-[:`compatibleWith`]->_105382
create _105345-[:`CONTAINS`]->_105346
create _105348-[:`CONTAINS`]->_105349
create _105352-[:`CONTAINS`]->_111470
create _105353-[:`CONTAINS`]->_111579
create _105353-[:`CONTAINS`]->_111581
create _105353-[:`CONTAINS`]->_111578
create _105353-[:`module`]->_111582
create _105354-[:`CONTAINS`]->_105355
create _105356-[:`CONTAINS`]->_106068
create _105361-[:`CONTAINS`]->_105359
create _105362-[:`CONTAINS`]->_105408
create _105363-[:`CONTAINS`]->_105364
create _105365-[:`CONTAINS`]->_104903
create _105368-[:`CONTAINS`]->_111800
create _105368-[:`CONTAINS`]->_105370
create _105368-[:`CONTAINS`]->_105367
create _105368-[:`module`]->_104897
create _105368-[:`module`]->_105372
create _105368-[:`dependency` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_104963
create _105372-[:`CONTAINS`]->_105369
create _105373-[:`compatibleWith`]->_105401
create _105377-[:`CONTAINS`]->_105378
create _105380-[:`CONTAINS`]->_111575
create _105382-[:`CONTAINS`]->_105321
create _105382-[:`CONTAINS`]->_105327
create _105382-[:`CONTAINS`]->_105381
create _105382-[:`CONTAINS`]->_105358
create _105382-[:`CONTAINS`]->_105339
create _105382-[:`composedBy`]->_106397
create _105382-[:`composedBy`]->_105338
create _105382-[:`composedBy`]->_105421
create _105382-[:`composedBy`]->_106386
create _105382-[:`composedBy`]->_107256
create _105382-[:`composedBy`]->_105416
create _105382-[:`composedBy`]->_107261
create _105382-[:`composedBy`]->_105418
create _105384-[:`CONTAINS`]->_105393
create _105384-[:`CONTAINS`]->_105391
create _105384-[:`CONTAINS`]->_105399
create _105384-[:`CONTAINS`]->_105388
create _105384-[:`module`]->_105387
create _105384-[:`module`]->_105385
create _105384-[:`module`]->_105377
create _105384-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_106263
create _105384-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_106268
create _105384-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104853
create _105384-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104678
create _105384-[:`compatibleWith`]->_105401
create _105385-[:`CONTAINS`]->_105008
create _105387-[:`CONTAINS`]->_105386
create _105392-[:`CONTAINS`]->_104833
create _105392-[:`CONTAINS`]->_105374
create _105392-[:`CONTAINS`]->_105389
create _105392-[:`CONTAINS`]->_104839
create _105392-[:`CONTAINS`]->_104836
create _105392-[:`CONTAINS`]->_104834
create _105401-[:`CONTAINS`]->_105398
create _105401-[:`CONTAINS`]->_105400
create _105401-[:`CONTAINS`]->_105383
create _105401-[:`CONTAINS`]->_105397
create _105401-[:`CONTAINS`]->_105390
create _105401-[:`composedBy`]->_104678
create _105401-[:`composedBy`]->_106263
create _105401-[:`composedBy`]->_104853
create _105401-[:`composedBy`]->_106265
create _105401-[:`composedBy`]->_104458
create _105401-[:`composedBy`]->_106268
create _105401-[:`composedBy`]->_105392
create _105401-[:`composedBy`]->_106269
create _105402-[:`CONTAINS`]->_111596
create _105402-[:`CONTAINS`]->_105467
create _105402-[:`CONTAINS`]->_105466
create _105402-[:`module`]->_105320
create _105402-[:`module`]->_105362
create _105402-[:`module`]->_105405
create _105402-[:`dependency` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_106063
create _105402-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_106062
create _105405-[:`CONTAINS`]->_105403
create _105406-[:`CONTAINS`]->_105407
create _105416-[:`CONTAINS`]->_107259
create _105416-[:`CONTAINS`]->_105419
create _105416-[:`CONTAINS`]->_107253
create _105416-[:`module`]->_105438
create _105416-[:`module`]->_105436
create _105416-[:`module`]->_105428
create _105416-[:`module`]->_107266
create _105416-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_105421
create _105416-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_105418
create _105418-[:`CONTAINS`]->_106824
create _105418-[:`CONTAINS`]->_105347
create _105418-[:`CONTAINS`]->_106425
create _105418-[:`module`]->_106419
create _105418-[:`module`]->_106387
create _105418-[:`module`]->_106385
create _105418-[:`module`]->_106420
create _105418-[:`module`]->_106428
create _105418-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_105421
create _105421-[:`CONTAINS`]->_107778
create _105421-[:`CONTAINS`]->_107775
create _105421-[:`CONTAINS`]->_105460
create _105421-[:`module`]->_107717
create _105424-[:`CONTAINS`]->_105433
create _105426-[:`CONTAINS`]->_105427
create _105428-[:`CONTAINS`]->_105417
create _105430-[:`CONTAINS`]->_105431
create _105434-[:`CONTAINS`]->_111868
create _105434-[:`CONTAINS`]->_105440
create _105434-[:`CONTAINS`]->_111869
create _105434-[:`module`]->_111870
create _105434-[:`module`]->_105441
create _105434-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_111774
create _105435-[:`CONTAINS`]->_105443
create _105436-[:`CONTAINS`]->_105437
create _105436-[:`module`]->_107263
create _105436-[:`module`]->_107172
create _105436-[:`module`]->_107260
create _105436-[:`module`]->_107258
create _105438-[:`CONTAINS`]->_105415
create _105441-[:`CONTAINS`]->_105432
create _105442-[:`CONTAINS`]->_107189
create _105446-[:`CONTAINS`]->_105454
create _105448-[:`CONTAINS`]->_105445
create _105453-[:`CONTAINS`]->_107254
create _105455-[:`CONTAINS`]->_105451
create _105461-[:`CONTAINS`]->_105410
create _105462-[:`CONTAINS`]->_104905
create _105465-[:`CONTAINS`]->_105360
create _105465-[:`CONTAINS`]->_104935
create _105465-[:`CONTAINS`]->_105357
create _105465-[:`CONTAINS`]->_104942
create _105465-[:`CONTAINS`]->_104933
create _105465-[:`composedBy`]->_104941
create _105465-[:`composedBy`]->_105402
create _105465-[:`composedBy`]->_104912
create _105465-[:`composedBy`]->_105463
create _105465-[:`composedBy`]->_106063
create _105465-[:`composedBy`]->_106062
create _105465-[:`composedBy`]->_106096
create _105465-[:`composedBy`]->_105324
create _105473-[:`CONTAINS`]->_105472
create _105475-[:`CONTAINS`]->_105474
create _105477-[:`CONTAINS`]->_105476
create _105479-[:`CONTAINS`]->_105478
create _105481-[:`CONTAINS`]->_105480
create _105483-[:`CONTAINS`]->_105482
create _105485-[:`CONTAINS`]->_105484
create _105485-[:`module`]->_105479
create _105485-[:`module`]->_105477
create _105485-[:`module`]->_105483
create _105485-[:`module`]->_105481
create _105485-[:`module`]->_105475
create _105485-[:`module`]->_105473
create _105488-[:`CONTAINS`]->_105487
create _105488-[:`CONTAINS`]->_105486
create _105488-[:`module`]->_105485
create _105488-[:`dependency` {`version_max`:"0.3.0", `version_min`:"0.2.0"}]->_105489
create _105489-[:`CONTAINS`]->_105497
create _105489-[:`CONTAINS`]->_105498
create _105489-[:`CONTAINS`]->_105500
create _105489-[:`CONTAINS`]->_105499
create _105489-[:`module`]->_105492
create _105489-[:`module`]->_105494
create _105489-[:`module`]->_105496
create _105492-[:`CONTAINS`]->_105491
create _105494-[:`CONTAINS`]->_105493
create _105496-[:`CONTAINS`]->_105495
create _105502-[:`compatibleWith`]->_105516
create _105504-[:`CONTAINS`]->_105503
create _105506-[:`CONTAINS`]->_105505
create _105508-[:`CONTAINS`]->_105507
create _105513-[:`CONTAINS`]->_105509
create _105513-[:`CONTAINS`]->_105510
create _105513-[:`CONTAINS`]->_105511
create _105513-[:`CONTAINS`]->_105512
create _105513-[:`module`]->_105508
create _105513-[:`module`]->_105506
create _105513-[:`module`]->_105504
create _105513-[:`dependency` {`version_max`:"0.9.0", `version_min`:"0.8.0"}]->_105488
create _105513-[:`compatibleWith`]->_105516
create _105516-[:`CONTAINS`]->_105515
create _105516-[:`CONTAINS`]->_105514
create _105516-[:`composedBy`]->_105501
create _105516-[:`composedBy`]->_105489
create _105516-[:`composedBy`]->_105490
create _105516-[:`composedBy`]->_105488
create _105562-[:`CONTAINS`]->_105563
create _105568-[:`CONTAINS`]->_104947
create _105569-[:`CONTAINS`]->_104965
create _105569-[:`CONTAINS`]->_111790
create _105569-[:`CONTAINS`]->_104950
create _105569-[:`module`]->_104957
create _105569-[:`module`]->_104953
create _105569-[:`module`]->_111793
create _105569-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_105595
create _105569-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_105610
create _105575-[:`CONTAINS`]->_105574
create _105577-[:`CONTAINS`]->_105576
create _105579-[:`CONTAINS`]->_105578
create _105581-[:`CONTAINS`]->_105580
create _105583-[:`CONTAINS`]->_105560
create _105583-[:`CONTAINS`]->_105582
create _105583-[:`CONTAINS`]->_105590
create _105583-[:`CONTAINS`]->_105566
create _105583-[:`CONTAINS`]->_105567
create _105583-[:`composedBy`]->_105461
create _105583-[:`composedBy`]->_105648
create _105583-[:`composedBy`]->_106870
create _105583-[:`composedBy`]->_105611
create _105583-[:`composedBy`]->_105569
create _105583-[:`composedBy`]->_105595
create _105583-[:`composedBy`]->_104952
create _105583-[:`composedBy`]->_105610
create _105584-[:`CONTAINS`]->_106417
create _105584-[:`CONTAINS`]->_104943
create _105584-[:`CONTAINS`]->_106424
create _105584-[:`module`]->_107724
create _105585-[:`CONTAINS`]->_105570
create _105585-[:`CONTAINS`]->_105573
create _105585-[:`CONTAINS`]->_105572
create _105585-[:`module`]->_105577
create _105585-[:`module`]->_105575
create _105585-[:`module`]->_105587
create _105585-[:`module`]->_105581
create _105585-[:`module`]->_105579
create _105585-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_105584
create _105587-[:`CONTAINS`]->_105586
create _105589-[:`CONTAINS`]->_105561
create _105589-[:`CONTAINS`]->_105564
create _105589-[:`CONTAINS`]->_105588
create _105589-[:`CONTAINS`]->_105591
create _105589-[:`module`]->_105562
create _105589-[:`module`]->_105644
create _105589-[:`module`]->_105653
create _105589-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_105569
create _105589-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_106870
create _105589-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_104952
create _105589-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_105610
create _105589-[:`compatibleWith`]->_105583
create _105593-[:`CONTAINS`]->_105629
create _105595-[:`CONTAINS`]->_105602
create _105595-[:`CONTAINS`]->_105598
create _105595-[:`CONTAINS`]->_105606
create _105595-[:`module`]->_105605
create _105597-[:`CONTAINS`]->_105594
create _105599-[:`CONTAINS`]->_105464
create _105601-[:`CONTAINS`]->_105596
create _105603-[:`CONTAINS`]->_105600
create _105605-[:`CONTAINS`]->_105604
create _105607-[:`CONTAINS`]->_105608
create _105610-[:`CONTAINS`]->_104902
create _105610-[:`CONTAINS`]->_104898
create _105610-[:`CONTAINS`]->_104899
create _105610-[:`module`]->_104906
create _105610-[:`module`]->_105601
create _105610-[:`module`]->_105603
create _105610-[:`module`]->_105597
create _105610-[:`module`]->_104900
create _105610-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_105595
create _105611-[:`CONTAINS`]->_105620
create _105611-[:`CONTAINS`]->_105612
create _105611-[:`CONTAINS`]->_105609
create _105611-[:`module`]->_105607
create _105611-[:`module`]->_105599
create _105611-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_105610
create _105614-[:`CONTAINS`]->_105619
create _105615-[:`CONTAINS`]->_104920
create _105615-[:`CONTAINS`]->_104921
create _105615-[:`CONTAINS`]->_105366
create _105615-[:`module`]->_104893
create _105615-[:`module`]->_105365
create _105615-[:`module`]->_107709
create _105615-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_111484
create _105615-[:`dependency` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_111483
create _105618-[:`CONTAINS`]->_104915
create _105621-[:`CONTAINS`]->_105626
create _105622-[:`CONTAINS`]->_105631
create _105623-[:`CONTAINS`]->_105624
create _105625-[:`CONTAINS`]->_105628
create _105627-[:`CONTAINS`]->_105630
create _105632-[:`CONTAINS`]->_106084
create _105632-[:`CONTAINS`]->_106072
create _105632-[:`CONTAINS`]->_106071
create _105632-[:`module`]->_106078
create _105632-[:`module`]->_106083
create _105632-[:`module`]->_106076
create _105632-[:`dependency` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_104963
create _105632-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_111550
create _105634-[:`CONTAINS`]->_105635
create _105638-[:`CONTAINS`]->_105636
create _105638-[:`CONTAINS`]->_105639
create _105638-[:`CONTAINS`]->_106415
create _105638-[:`module`]->_105627
create _105638-[:`module`]->_105625
create _105638-[:`module`]->_106951
create _105638-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_105585
create _105638-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_105584
create _105641-[:`CONTAINS`]->_105642
create _105644-[:`CONTAINS`]->_105645
create _105646-[:`CONTAINS`]->_105649
create _105651-[:`CONTAINS`]->_105643
create _105653-[:`CONTAINS`]->_105647
create _105654-[:`CONTAINS`]->_104569
create _105654-[:`CONTAINS`]->_104495
create _105654-[:`CONTAINS`]->_104540
create _105654-[:`module`]->_104496
create _105654-[:`module`]->_104539
create _105654-[:`module`]->_104534
create _105654-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_104571
create _105654-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_104524
create _105655-[:`CONTAINS`]->_104541
create _105655-[:`CONTAINS`]->_104544
create _105655-[:`CONTAINS`]->_104542
create _105655-[:`module`]->_105651
create _105655-[:`module`]->_104543
create _105655-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_104571
create _105657-[:`CONTAINS`]->_105658
create _106056-[:`CONTAINS`]->_106059
create _106062-[:`CONTAINS`]->_104932
create _106062-[:`CONTAINS`]->_104931
create _106062-[:`CONTAINS`]->_105404
create _106062-[:`module`]->_104913
create _106062-[:`module`]->_105618
create _106062-[:`module`]->_104909
create _106062-[:`module`]->_105614
create _106062-[:`module`]->_104911
create _106062-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_104912
create _106063-[:`CONTAINS`]->_106058
create _106063-[:`CONTAINS`]->_106060
create _106063-[:`CONTAINS`]->_106061
create _106063-[:`module`]->_106094
create _106063-[:`module`]->_106064
create _106063-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_106062
create _106064-[:`CONTAINS`]->_106095
create _106066-[:`CONTAINS`]->_106067
create _106073-[:`CONTAINS`]->_106102
create _106073-[:`CONTAINS`]->_106110
create _106073-[:`CONTAINS`]->_106107
create _106073-[:`CONTAINS`]->_106108
create _106073-[:`CONTAINS`]->_106098
create _106073-[:`composedBy`]->_106109
create _106073-[:`composedBy`]->_104528
create _106073-[:`composedBy`]->_105655
create _106073-[:`composedBy`]->_104571
create _106073-[:`composedBy`]->_104524
create _106073-[:`composedBy`]->_105654
create _106073-[:`composedBy`]->_104504
create _106076-[:`CONTAINS`]->_106077
create _106078-[:`CONTAINS`]->_106075
create _106078-[:`module`]->_111552
create _106078-[:`module`]->_111561
create _106078-[:`module`]->_106859
create _106078-[:`module`]->_106921
create _106081-[:`CONTAINS`]->_106086
create _106083-[:`CONTAINS`]->_106065
create _106085-[:`CONTAINS`]->_106088
create _106085-[:`CONTAINS`]->_104556
create _106085-[:`CONTAINS`]->_104565
create _106085-[:`module`]->_106091
create _106085-[:`module`]->_106087
create _106085-[:`dependency` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_111536
create _106087-[:`CONTAINS`]->_106090
create _106089-[:`CONTAINS`]->_106122
create _106089-[:`CONTAINS`]->_105652
create _106089-[:`CONTAINS`]->_106092
create _106089-[:`module`]->_106139
create _106089-[:`module`]->_111668
create _106089-[:`dependency` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_111536
create _106091-[:`CONTAINS`]->_106070
create _106094-[:`CONTAINS`]->_106093
create _106096-[:`CONTAINS`]->_106074
create _106099-[:`CONTAINS`]->_104559
create _106099-[:`CONTAINS`]->_104558
create _106099-[:`CONTAINS`]->_106104
create _106099-[:`CONTAINS`]->_104557
create _106099-[:`module`]->_104525
create _106099-[:`module`]->_104522
create _106099-[:`module`]->_104560
create _106099-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_105655
create _106099-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_105654
create _106099-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_106109
create _106099-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_104571
create _106099-[:`compatibleWith`]->_106073
create _106100-[:`CONTAINS`]->_104530
create _106103-[:`CONTAINS`]->_106106
create _106105-[:`CONTAINS`]->_106097
create _106109-[:`CONTAINS`]->_104531
create _106109-[:`CONTAINS`]->_104535
create _106109-[:`CONTAINS`]->_104547
create _106109-[:`module`]->_105657
create _106109-[:`module`]->_104545
create _106109-[:`module`]->_104532
create _106109-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_104571
create _106111-[:`CONTAINS`]->_106114
create _106113-[:`CONTAINS`]->_106116
create _106115-[:`CONTAINS`]->_106121
create _106115-[:`CONTAINS`]->_106131
create _106115-[:`CONTAINS`]->_106120
create _106115-[:`module`]->_106128
create _106117-[:`CONTAINS`]->_106118
create _106119-[:`CONTAINS`]->_106112
create _106128-[:`CONTAINS`]->_106129
create _106130-[:`CONTAINS`]->_106123
create _106132-[:`CONTAINS`]->_111812
create _106133-[:`CONTAINS`]->_106137
create _106136-[:`CONTAINS`]->_106135
create _106136-[:`CONTAINS`]->_106124
create _106136-[:`CONTAINS`]->_106134
create _106136-[:`CONTAINS`]->_104588
create _106136-[:`CONTAINS`]->_106127
create _106136-[:`composedBy`]->_106089
create _106136-[:`composedBy`]->_111533
create _106136-[:`composedBy`]->_106085
create _106136-[:`composedBy`]->_106079
create _106136-[:`composedBy`]->_111477
create _106136-[:`composedBy`]->_111828
create _106136-[:`composedBy`]->_111536
create _106139-[:`CONTAINS`]->_106126
create _106141-[:`CONTAINS`]->_106144
create _106141-[:`module`]->_106142
create _106141-[:`module`]->_104693
create _106141-[:`module`]->_104699
create _106141-[:`module`]->_104464
create _106141-[:`module`]->_104695
create _106141-[:`module`]->_104698
create _106142-[:`CONTAINS`]->_106140
create _106143-[:`CONTAINS`]->_106145
create _106150-[:`CONTAINS`]->_106146
create _106151-[:`CONTAINS`]->_106069
create _106153-[:`CONTAINS`]->_106152
create _106153-[:`CONTAINS`]->_106148
create _106153-[:`CONTAINS`]->_106147
create _106153-[:`CONTAINS`]->_106155
create _106153-[:`CONTAINS`]->_106154
create _106153-[:`CONTAINS`]->_104465
create _106255-[:`CONTAINS`]->_106257
create _106259-[:`CONTAINS`]->_106256
create _106260-[:`CONTAINS`]->_104459
create _106263-[:`CONTAINS`]->_104456
create _106263-[:`CONTAINS`]->_104457
create _106263-[:`CONTAINS`]->_106262
create _106263-[:`module`]->_106275
create _106263-[:`module`]->_106273
create _106263-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104678
create _106265-[:`CONTAINS`]->_106264
create _106268-[:`CONTAINS`]->_106267
create _106268-[:`CONTAINS`]->_106266
create _106268-[:`CONTAINS`]->_106271
create _106268-[:`module`]->_106276
create _106268-[:`module`]->_106270
create _106268-[:`module`]->_106260
create _106268-[:`dependency` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_106269
create _106268-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_104678
create _106269-[:`CONTAINS`]->_104700
create _106269-[:`CONTAINS`]->_104701
create _106269-[:`CONTAINS`]->_104703
create _106269-[:`module`]->_104461
create _106269-[:`module`]->_104463
create _106270-[:`CONTAINS`]->_104455
create _106273-[:`CONTAINS`]->_106272
create _106275-[:`CONTAINS`]->_106274
create _106276-[:`CONTAINS`]->_106261
create _106371-[:`CONTAINS`]->_106819
create _106385-[:`CONTAINS`]->_106388
create _106386-[:`CONTAINS`]->_107251
create _106387-[:`CONTAINS`]->_106421
create _106397-[:`CONTAINS`]->_106429
create _106397-[:`CONTAINS`]->_107774
create _106397-[:`CONTAINS`]->_106928
create _106397-[:`module`]->_107772
create _106397-[:`module`]->_107771
create _106397-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_105418
create _106418-[:`CONTAINS`]->_106423
create _106419-[:`CONTAINS`]->_106398
create _106420-[:`CONTAINS`]->_106422
create _106426-[:`CONTAINS`]->_106375
create _106428-[:`CONTAINS`]->_106427
create _106805-[:`compatibleWith`]->_107721
create _106808-[:`CONTAINS`]->_106812
create _106808-[:`CONTAINS`]->_106811
create _106808-[:`CONTAINS`]->_106814
create _106808-[:`module`]->_107719
create _106808-[:`module`]->_107728
create _106808-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_105585
create _106809-[:`CONTAINS`]->_104916
create _106809-[:`CONTAINS`]->_104917
create _106809-[:`CONTAINS`]->_104892
create _106809-[:`module`]->_104894
create _106809-[:`module`]->_104925
create _106809-[:`dependency` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_111483
create _106810-[:`CONTAINS`]->_106816
create _106810-[:`CONTAINS`]->_106937
create _106810-[:`CONTAINS`]->_106920
create _106810-[:`module`]->_106938
create _106810-[:`module`]->_106954
create _106810-[:`dependency` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_111483
create _106822-[:`CONTAINS`]->_106815
create _106856-[:`CONTAINS`]->_106864
create _106857-[:`CONTAINS`]->_106374
create _106859-[:`CONTAINS`]->_106861
create _106860-[:`CONTAINS`]->_106858
create _106866-[:`CONTAINS`]->_105565
create _106867-[:`CONTAINS`]->_106821
create _106870-[:`CONTAINS`]->_106863
create _106870-[:`CONTAINS`]->_106372
create _106870-[:`CONTAINS`]->_106373
create _106870-[:`module`]->_106866
create _106870-[:`module`]->_105646
create _106870-[:`module`]->_106856
create _106870-[:`dependency` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_105611
create _106870-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_105610
create _106919-[:`CONTAINS`]->_106820
create _106919-[:`CONTAINS`]->_107722
create _106919-[:`CONTAINS`]->_106855
create _106919-[:`CONTAINS`]->_106869
create _106919-[:`module`]->_106822
create _106919-[:`module`]->_106867
create _106919-[:`module`]->_106371
create _106919-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_105638
create _106919-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_106808
create _106919-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_105585
create _106919-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_107718
create _106919-[:`compatibleWith`]->_107721
create _106921-[:`CONTAINS`]->_105637
create _106938-[:`CONTAINS`]->_106807
create _106951-[:`CONTAINS`]->_105640
create _106951-[:`module`]->_105593
create _106951-[:`module`]->_105641
create _106951-[:`module`]->_105621
create _106951-[:`module`]->_105623
create _106954-[:`CONTAINS`]->_107687
create _107169-[:`CONTAINS`]->_107198
create _107169-[:`CONTAINS`]->_107195
create _107169-[:`CONTAINS`]->_107255
create _107169-[:`CONTAINS`]->_107170
create _107169-[:`module`]->_107202
create _107169-[:`module`]->_107228
create _107169-[:`module`]->_107187
create _107169-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_105434
create _107169-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_107196
create _107169-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_111774
create _107169-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_111772
create _107169-[:`compatibleWith`]->_107182
create _107172-[:`CONTAINS`]->_107173
create _107176-[:`CONTAINS`]->_107252
create _107178-[:`CONTAINS`]->_107181
create _107178-[:`CONTAINS`]->_105450
create _107178-[:`CONTAINS`]->_107201
create _107178-[:`CONTAINS`]->_105456
create _107178-[:`CONTAINS`]->_107190
create _107178-[:`CONTAINS`]->_107179
create _107182-[:`CONTAINS`]->_107183
create _107182-[:`CONTAINS`]->_107171
create _107182-[:`CONTAINS`]->_107180
create _107182-[:`CONTAINS`]->_107185
create _107182-[:`CONTAINS`]->_107168
create _107182-[:`composedBy`]->_105434
create _107182-[:`composedBy`]->_107196
create _107182-[:`composedBy`]->_105011
create _107182-[:`composedBy`]->_105442
create _107182-[:`composedBy`]->_111772
create _107182-[:`composedBy`]->_111672
create _107182-[:`composedBy`]->_107178
create _107182-[:`composedBy`]->_111774
create _107187-[:`CONTAINS`]->_107186
create _107191-[:`CONTAINS`]->_107188
create _107194-[:`CONTAINS`]->_107225
create _107196-[:`CONTAINS`]->_107193
create _107196-[:`CONTAINS`]->_105452
create _107196-[:`CONTAINS`]->_105447
create _107196-[:`module`]->_105446
create _107196-[:`module`]->_105448
create _107196-[:`module`]->_105453
create _107196-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_111774
create _107196-[:`dependency` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_105011
create _107200-[:`compatibleWith`]->_107182
create _107202-[:`CONTAINS`]->_107199
create _107228-[:`CONTAINS`]->_107184
create _107256-[:`CONTAINS`]->_107177
create _107256-[:`CONTAINS`]->_107174
create _107256-[:`CONTAINS`]->_107257
create _107256-[:`module`]->_107176
create _107256-[:`module`]->_107191
create _107258-[:`CONTAINS`]->_105439
create _107260-[:`CONTAINS`]->_107262
create _107261-[:`CONTAINS`]->_107264
create _107261-[:`CONTAINS`]->_105420
create _107261-[:`CONTAINS`]->_105422
create _107261-[:`CONTAINS`]->_105423
create _107261-[:`CONTAINS`]->_107265
create _107261-[:`CONTAINS`]->_105425
create _107263-[:`CONTAINS`]->_107175
create _107266-[:`CONTAINS`]->_105429
create _107702-[:`CONTAINS`]->_111494
create _107709-[:`CONTAINS`]->_105592
create _107709-[:`module`]->_111590
create _107709-[:`module`]->_111621
create _107709-[:`module`]->_111795
create _107709-[:`module`]->_104896
create _107716-[:`CONTAINS`]->_106862
create _107716-[:`CONTAINS`]->_106865
create _107716-[:`CONTAINS`]->_106868
create _107716-[:`module`]->_106857
create _107716-[:`module`]->_105634
create _107717-[:`CONTAINS`]->_107777
create _107718-[:`CONTAINS`]->_106934
create _107718-[:`CONTAINS`]->_107715
create _107718-[:`CONTAINS`]->_106376
create _107718-[:`module`]->_106426
create _107718-[:`module`]->_106418
create _107718-[:`module`]->_104944
create _107718-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_105585
create _107718-[:`dependency` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_107716
create _107719-[:`CONTAINS`]->_107725
create _107721-[:`CONTAINS`]->_107769
create _107721-[:`CONTAINS`]->_107696
create _107721-[:`CONTAINS`]->_107770
create _107721-[:`CONTAINS`]->_107691
create _107721-[:`CONTAINS`]->_107723
create _107721-[:`composedBy`]->_105584
create _107721-[:`composedBy`]->_107718
create _107721-[:`composedBy`]->_105638
create _107721-[:`composedBy`]->_106860
create _107721-[:`composedBy`]->_107716
create _107721-[:`composedBy`]->_105585
create _107721-[:`composedBy`]->_104949
create _107721-[:`composedBy`]->_106808
create _107724-[:`CONTAINS`]->_105571
create _107728-[:`CONTAINS`]->_107720
create _107771-[:`CONTAINS`]->_107773
create _107772-[:`CONTAINS`]->_107776
create _111457-[:`CONTAINS`]->_111646
create _111457-[:`CONTAINS`]->_111649
create _111457-[:`CONTAINS`]->_111644
create _111457-[:`module`]->_111648
create _111457-[:`module`]->_111472
create _111457-[:`module`]->_111614
create _111457-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_111459
create _111457-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_104590
create _111458-[:`CONTAINS`]->_111476
create _111459-[:`CONTAINS`]->_111469
create _111459-[:`CONTAINS`]->_111643
create _111459-[:`CONTAINS`]->_111810
create _111459-[:`module`]->_111618
create _111459-[:`module`]->_111671
create _111459-[:`module`]->_111616
create _111459-[:`module`]->_111813
create _111459-[:`module`]->_106132
create _111459-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_104590
create _111463-[:`CONTAINS`]->_111555
create _111464-[:`CONTAINS`]->_111473
create _111464-[:`CONTAINS`]->_111479
create _111464-[:`CONTAINS`]->_111478
create _111464-[:`CONTAINS`]->_111480
create _111464-[:`CONTAINS`]->_111474
create _111464-[:`composedBy`]->_111467
create _111464-[:`composedBy`]->_111489
create _111464-[:`composedBy`]->_111656
create _111464-[:`composedBy`]->_104890
create _111464-[:`composedBy`]->_111785
create _111464-[:`composedBy`]->_111475
create _111464-[:`composedBy`]->_111801
create _111467-[:`CONTAINS`]->_111496
create _111467-[:`CONTAINS`]->_111466
create _111467-[:`CONTAINS`]->_111495
create _111467-[:`module`]->_105352
create _111467-[:`module`]->_111471
create _111467-[:`dependency` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_111801
create _111471-[:`CONTAINS`]->_111460
create _111472-[:`CONTAINS`]->_111456
create _111472-[:`module`]->_111811
create _111472-[:`module`]->_111820
create _111472-[:`module`]->_111822
create _111472-[:`module`]->_111630
create _111477-[:`CONTAINS`]->_111465
create _111483-[:`CONTAINS`]->_104587
create _111483-[:`CONTAINS`]->_104584
create _111483-[:`CONTAINS`]->_111482
create _111483-[:`module`]->_111490
create _111483-[:`module`]->_111493
create _111483-[:`module`]->_111492
create _111483-[:`module`]->_111595
create _111483-[:`module`]->_104580
create _111483-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_111484
create _111484-[:`CONTAINS`]->_111658
create _111484-[:`CONTAINS`]->_111486
create _111484-[:`CONTAINS`]->_104583
create _111484-[:`module`]->_107702
create _111489-[:`CONTAINS`]->_111481
create _111490-[:`CONTAINS`]->_111485
create _111492-[:`CONTAINS`]->_111597
create _111493-[:`CONTAINS`]->_111594
create _111497-[:`CONTAINS`]->_105379
create _111501-[:`CONTAINS`]->_111500
create _111503-[:`CONTAINS`]->_111601
create _111504-[:`CONTAINS`]->_111507
create _111506-[:`CONTAINS`]->_111521
create _111508-[:`CONTAINS`]->_111511
create _111510-[:`CONTAINS`]->_111513
create _111512-[:`CONTAINS`]->_111515
create _111514-[:`CONTAINS`]->_111516
create _111517-[:`CONTAINS`]->_111527
create _111519-[:`CONTAINS`]->_111530
create _111520-[:`CONTAINS`]->_111509
create _111520-[:`module`]->_111508
create _111520-[:`module`]->_111510
create _111520-[:`module`]->_111514
create _111520-[:`module`]->_111512
create _111523-[:`CONTAINS`]->_111524
create _111532-[:`CONTAINS`]->_111529
create _111533-[:`CONTAINS`]->_111539
create _111533-[:`CONTAINS`]->_111537
create _111533-[:`CONTAINS`]->_111461
create _111533-[:`module`]->_111458
create _111534-[:`CONTAINS`]->_111531
create _111536-[:`CONTAINS`]->_111518
create _111536-[:`CONTAINS`]->_111535
create _111536-[:`CONTAINS`]->_111526
create _111536-[:`module`]->_111532
create _111536-[:`module`]->_111534
create _111536-[:`module`]->_111519
create _111536-[:`module`]->_111538
create _111536-[:`module`]->_111544
create _111536-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_111533
create _111538-[:`CONTAINS`]->_111547
create _111540-[:`CONTAINS`]->_111541
create _111542-[:`CONTAINS`]->_111548
create _111544-[:`CONTAINS`]->_111545
create _111546-[:`CONTAINS`]->_107710
create _111546-[:`CONTAINS`]->_106806
create _111546-[:`CONTAINS`]->_107707
create _111546-[:`CONTAINS`]->_107688
create _111546-[:`CONTAINS`]->_111543
create _111546-[:`composedBy`]->_111517
create _111546-[:`composedBy`]->_111484
create _111546-[:`composedBy`]->_106813
create _111546-[:`composedBy`]->_106809
create _111546-[:`composedBy`]->_106810
create _111546-[:`composedBy`]->_105615
create _111546-[:`composedBy`]->_111483
create _111550-[:`CONTAINS`]->_111551
create _111550-[:`CONTAINS`]->_111560
create _111550-[:`CONTAINS`]->_111549
create _111550-[:`module`]->_111558
create _111552-[:`CONTAINS`]->_111553
create _111557-[:`CONTAINS`]->_111554
create _111558-[:`CONTAINS`]->_111559
create _111561-[:`CONTAINS`]->_111564
create _111562-[:`CONTAINS`]->_111567
create _111565-[:`CONTAINS`]->_111525
create _111565-[:`CONTAINS`]->_111819
create _111565-[:`CONTAINS`]->_111816
create _111565-[:`module`]->_105380
create _111565-[:`module`]->_111497
create _111565-[:`module`]->_111580
create _111565-[:`module`]->_111821
create _111565-[:`module`]->_111576
create _111565-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_105353
create _111566-[:`CONTAINS`]->_111572
create _111566-[:`CONTAINS`]->_111563
create _111566-[:`CONTAINS`]->_111573
create _111566-[:`module`]->_111463
create _111566-[:`module`]->_111577
create _111566-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_111565
create _111568-[:`CONTAINS`]->_111462
create _111570-[:`CONTAINS`]->_111556
create _111576-[:`CONTAINS`]->_111498
create _111577-[:`CONTAINS`]->_111571
create _111580-[:`CONTAINS`]->_111528
create _111582-[:`CONTAINS`]->_111574
create _111583-[:`CONTAINS`]->_111608
create _111583-[:`CONTAINS`]->_111607
create _111583-[:`CONTAINS`]->_111609
create _111583-[:`module`]->_111604
create _111583-[:`module`]->_111602
create _111586-[:`CONTAINS`]->_111585
create _111586-[:`CONTAINS`]->_111587
create _111586-[:`CONTAINS`]->_111588
create _111586-[:`module`]->_111501
create _111586-[:`module`]->_111523
create _111586-[:`module`]->_111503
create _111586-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_111565
create _111586-[:`dependency` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_111583
create _111590-[:`CONTAINS`]->_111633
create _111593-[:`CONTAINS`]->_105409
create _111595-[:`CONTAINS`]->_111487
create _111602-[:`CONTAINS`]->_111603
create _111604-[:`CONTAINS`]->_111605
create _111606-[:`CONTAINS`]->_111598
create _111606-[:`CONTAINS`]->_111584
create _111606-[:`CONTAINS`]->_111589
create _111606-[:`CONTAINS`]->_111591
create _111606-[:`CONTAINS`]->_111599
create _111606-[:`CONTAINS`]->_111600
create _111613-[:`CONTAINS`]->_111612
create _111614-[:`CONTAINS`]->_111645
create _111615-[:`CONTAINS`]->_104832
create _111616-[:`CONTAINS`]->_111619
create _111618-[:`CONTAINS`]->_104585
create _111621-[:`CONTAINS`]->_111634
create _111622-[:`CONTAINS`]->_111666
create _111622-[:`CONTAINS`]->_111625
create _111622-[:`CONTAINS`]->_111642
create _111622-[:`CONTAINS`]->_111665
create _111622-[:`module`]->_106081
create _111622-[:`module`]->_111669
create _111622-[:`module`]->_111667
create _111622-[:`dependency` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_106089
create _111622-[:`dependency` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_111536
create _111622-[:`dependency` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_111828
create _111622-[:`dependency` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_106085
create _111622-[:`compatibleWith`]->_106136
create _111626-[:`CONTAINS`]->_111654
create _111628-[:`CONTAINS`]->_111629
create _111630-[:`CONTAINS`]->_111631
create _111632-[:`CONTAINS`]->_111627
create _111635-[:`CONTAINS`]->_111620
create _111638-[:`CONTAINS`]->_111641
create _111640-[:`CONTAINS`]->_111636
create _111648-[:`CONTAINS`]->_111818
create _111650-[:`CONTAINS`]->_111651
create _111652-[:`CONTAINS`]->_111653
create _111655-[:`CONTAINS`]->_111647
create _111656-[:`CONTAINS`]->_111657
create _111656-[:`CONTAINS`]->_111663
create _111656-[:`CONTAINS`]->_111624
create _111656-[:`module`]->_104946
create _111656-[:`module`]->_111660
create _111656-[:`module`]->_111661
create _111656-[:`dependency` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_111801
create _111656-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_104890
create _111660-[:`CONTAINS`]->_111592
create _111661-[:`CONTAINS`]->_111662
create _111661-[:`module`]->_111655
create _111661-[:`module`]->_111635
create _111661-[:`module`]->_111652
create _111661-[:`module`]->_111650
create _111667-[:`CONTAINS`]->_106082
create _111668-[:`CONTAINS`]->_111825
create _111669-[:`CONTAINS`]->_111664
create _111671-[:`CONTAINS`]->_111670
create _111672-[:`CONTAINS`]->_107197
create _111672-[:`CONTAINS`]->_107226
create _111672-[:`CONTAINS`]->_105449
create _111672-[:`module`]->_107194
create _111772-[:`CONTAINS`]->_111611
create _111772-[:`CONTAINS`]->_111610
create _111772-[:`CONTAINS`]->_111773
create _111772-[:`module`]->_111613
create _111772-[:`module`]->_104842
create _111772-[:`module`]->_111615
create _111772-[:`module`]->_104828
create _111772-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_111672
create _111772-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_111774
create _111774-[:`CONTAINS`]->_105459
create _111774-[:`CONTAINS`]->_105457
create _111774-[:`CONTAINS`]->_105458
create _111774-[:`module`]->_105430
create _111774-[:`module`]->_105455
create _111774-[:`module`]->_105424
create _111774-[:`module`]->_105426
create _111774-[:`module`]->_105435
create _111774-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_111672
create _111777-[:`CONTAINS`]->_111865
create _111778-[:`CONTAINS`]->_111786
create _111778-[:`CONTAINS`]->_111779
create _111778-[:`CONTAINS`]->_111787
create _111778-[:`module`]->_111784
create _111778-[:`module`]->_111781
create _111778-[:`module`]->_111783
create _111778-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_111459
create _111781-[:`CONTAINS`]->_111780
create _111783-[:`CONTAINS`]->_111782
create _111784-[:`CONTAINS`]->_106080
create _111785-[:`CONTAINS`]->_111802
create _111785-[:`CONTAINS`]->_111806
create _111785-[:`CONTAINS`]->_111803
create _111785-[:`module`]->_111808
create _111785-[:`module`]->_111799
create _111785-[:`dependency` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_111801
create _111788-[:`CONTAINS`]->_104961
create _111789-[:`CONTAINS`]->_104891
create _111792-[:`CONTAINS`]->_104924
create _111793-[:`CONTAINS`]->_104964
create _111795-[:`CONTAINS`]->_104586
create _111798-[:`CONTAINS`]->_105616
create _111798-[:`CONTAINS`]->_111796
create _111798-[:`CONTAINS`]->_105613
create _111798-[:`module`]->_111804
create _111798-[:`module`]->_105622
create _111798-[:`dependency` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_104963
create _111799-[:`CONTAINS`]->_111807
create _111801-[:`CONTAINS`]->_111637
create _111801-[:`CONTAINS`]->_111639
create _111801-[:`CONTAINS`]->_104579
create _111801-[:`module`]->_111628
create _111801-[:`module`]->_111632
create _111801-[:`module`]->_111640
create _111801-[:`module`]->_111638
create _111801-[:`module`]->_111626
create _111801-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_104890
create _111804-[:`CONTAINS`]->_105633
create _111808-[:`CONTAINS`]->_111797
create _111811-[:`CONTAINS`]->_111468
create _111813-[:`CONTAINS`]->_111617
create _111815-[:`CONTAINS`]->_106125
create _111820-[:`CONTAINS`]->_111817
create _111821-[:`CONTAINS`]->_111499
create _111822-[:`CONTAINS`]->_111814
create _111824-[:`CONTAINS`]->_111832
create _111824-[:`CONTAINS`]->_111826
create _111824-[:`CONTAINS`]->_111830
create _111824-[:`module`]->_111831
create _111824-[:`module`]->_111829
create _111824-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_111459
create _111827-[:`CONTAINS`]->_111776
create _111828-[:`CONTAINS`]->_111505
create _111828-[:`CONTAINS`]->_111522
create _111828-[:`CONTAINS`]->_111502
create _111828-[:`module`]->_111506
create _111828-[:`module`]->_111504
create _111828-[:`module`]->_111520
create _111828-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_111533
create _111828-[:`dependency` {`version_max`:"0.6.0", `version_min`:"0.5.0"}]->_111536
create _111829-[:`CONTAINS`]->_111623
create _111831-[:`CONTAINS`]->_111823
create _111837-[:`CONTAINS`]->_111841
create _111837-[:`CONTAINS`]->_111840
create _111837-[:`CONTAINS`]->_111839
create _111837-[:`CONTAINS`]->_111842
create _111837-[:`module`]->_111853
create _111837-[:`module`]->_111847
create _111837-[:`module`]->_111855
create _111837-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_111566
create _111837-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_111565
create _111837-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_111586
create _111837-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_111848
create _111837-[:`compatibleWith`]->_111845
create _111843-[:`CONTAINS`]->_111844
create _111845-[:`CONTAINS`]->_111836
create _111845-[:`CONTAINS`]->_111833
create _111845-[:`CONTAINS`]->_111838
create _111845-[:`CONTAINS`]->_111835
create _111845-[:`CONTAINS`]->_111834
create _111845-[:`composedBy`]->_111566
create _111845-[:`composedBy`]->_111843
create _111845-[:`composedBy`]->_111606
create _111845-[:`composedBy`]->_111565
create _111845-[:`composedBy`]->_105353
create _111845-[:`composedBy`]->_111586
create _111845-[:`composedBy`]->_111583
create _111845-[:`composedBy`]->_111848
create _111847-[:`CONTAINS`]->_111846
create _111848-[:`CONTAINS`]->_111851
create _111848-[:`CONTAINS`]->_111850
create _111848-[:`CONTAINS`]->_111862
create _111848-[:`module`]->_111856
create _111848-[:`module`]->_111864
create _111848-[:`module`]->_111827
create _111848-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_105353
create _111848-[:`dependency` {`version_max`:"0.8.0", `version_min`:"0.7.0"}]->_111565
create _111849-[:`compatibleWith`]->_111845
create _111853-[:`CONTAINS`]->_111854
create _111855-[:`CONTAINS`]->_111852
create _111856-[:`CONTAINS`]->_111857
create _111856-[:`module`]->_111860
create _111856-[:`module`]->_111777
create _111856-[:`module`]->_111866
create _111856-[:`module`]->_111858
create _111858-[:`CONTAINS`]->_111859
create _111860-[:`CONTAINS`]->_111861
create _111864-[:`CONTAINS`]->_111863
create _111866-[:`CONTAINS`]->_111867
create _111870-[:`CONTAINS`]->_105444
;
commit
