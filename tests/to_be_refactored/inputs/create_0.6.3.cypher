begin
create (_65038:`FileNode` {`nID`:1, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.3"})
create (_65039:`Component` {`nID`:2, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.3"})
create (_65040:`FileNode` {`nID`:3, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.0"})
create (_65041:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:4, `name`:"api", `order`:1, `version`:"0.1.0"})
create (_65042:`FileNode` {`nID`:5, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.0"})
create (_65043:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:6, `name`:"rabbitmq", `order`:2, `version`:"0.1.0"})
create (_65044:`FileNode` {`nID`:7, `name`:"ariane.community.messaging-0.1.0.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.0"})
create (_65045:`FileNode` {`nID`:8, `name`:"net.echinopsii.ariane.community.messaging_0.1.0.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.0"})
create (_65046:`FileNode` {`nID`:9, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.0"})
create (_65047:`Component` {`nID`:10, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.0"})
create (_65048:`Component` {`nID`:11, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.3"})
create (_65049:`FileNode` {`nID`:12, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2"})
create (_65050:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:13, `name`:"base", `order`:1, `version`:"0.4.2"})
create (_65051:`FileNode` {`nID`:14, `name`:"ariane.community.core.idm-0.4.2.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2"})
create (_65052:`FileNode` {`nID`:15, `name`:"net.echinopsii.ariane.community.core.idm_0.4.2.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2"})
create (_65053:`FileNode` {`nID`:16, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2"})
create (_65054:`Component` {`nID`:17, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2"})
create (_65055:`FileNode` {`nID`:18, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.3"})
create (_65056:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:19, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_65057:`FileNode` {`nID`:20, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.3"})
create (_65058:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:21, `name`:"wat", `order`:2, `version`:"0.6.3"})
create (_65059:`FileNode` {`nID`:22, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.3"})
create (_65060:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:23, `name`:"idmwat", `order`:3, `version`:"0.6.3"})
create (_65061:`FileNode` {`nID`:24, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.3"})
create (_65062:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:25, `name`:"wab", `order`:4, `version`:"0.6.3"})
create (_65063:`FileNode` {`nID`:26, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.3"})
create (_65064:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:27, `name`:"wresources", `order`:5, `version`:"0.6.3"})
create (_65065:`FileNode` {`nID`:28, `name`:"ariane.community.core.portal-0.6.3.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_65066:`FileNode` {`nID`:29, `name`:"net.echinopsii.ariane.community.core.portal_0.6.3.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_65067:`FileNode` {`nID`:30, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.3"})
create (_65068:`FileNode` {`nID`:31, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.3"})
create (_65069:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:32, `name`:"api", `order`:1, `version`:"0.6.3"})
create (_65070:`FileNode` {`nID`:33, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.3"})
create (_65071:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:34, `name`:"blueprints", `order`:2, `version`:"0.6.3"})
create (_65072:`FileNode` {`nID`:35, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.3"})
create (_65073:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:36, `name`:"rim", `order`:3, `version`:"0.6.3"})
create (_65074:`FileNode` {`nID`:37, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.3"})
create (_65075:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:38, `name`:"dsl", `order`:4, `version`:"0.6.3"})
create (_65076:`FileNode` {`nID`:39, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.3"})
create (_65077:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:40, `name`:"ds", `order`:5, `version`:"0.6.3"})
create (_65078:`FileNode` {`nID`:41, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.3"})
create (_65079:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:42, `name`:"wat", `order`:6, `version`:"0.6.3"})
create (_65080:`FileNode` {`nID`:43, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.3"})
create (_65081:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:44, `name`:"taitale", `order`:7, `version`:"0.6.3"})
create (_65082:`FileNode` {`nID`:45, `name`:"ariane.community.core.mapping-0.6.3.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_65083:`FileNode` {`nID`:46, `name`:"net.echinopsii.ariane.community.core.mapping_0.6.3.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_65084:`FileNode` {`nID`:47, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.3"})
create (_65085:`Component` {`nID`:48, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.3"})
create (_65086:`FileNode` {`nID`:49, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.3"})
create (_65087:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:50, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_65088:`FileNode` {`nID`:51, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.3"})
create (_65089:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:52, `name`:"wat", `order`:2, `version`:"0.6.3"})
create (_65090:`FileNode` {`nID`:53, `name`:"ariane.community.core.directory-0.6.3.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_65091:`FileNode` {`nID`:54, `name`:"net.echinopsii.ariane.community.core.directory_0.6.3.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_65092:`FileNode` {`nID`:55, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.3"})
create (_65093:`Component` {`nID`:56, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.3"})
create (_65094:`FileNode` {`nID`:57, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.3"})
create (_65095:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:58, `name`:"base", `order`:1, `version`:"0.6.3"})
create (_65096:`FileNode` {`nID`:59, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.3"})
create (_65097:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:60, `name`:"messaging", `order`:2, `version`:"0.6.3"})
create (_65098:`FileNode` {`nID`:61, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.3"})
create (_65099:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:62, `name`:"wat", `order`:3, `version`:"0.6.3"})
create (_65100:`FileNode` {`nID`:63, `name`:"ariane.community.core.injector-0.6.3.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.3"})
create (_65101:`FileNode` {`nID`:64, `name`:"net.echinopsii.ariane.community.core.injector_0.6.3.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.3"})
create (_65102:`FileNode` {`nID`:65, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.3"})
create (_65103:`Component` {`nID`:66, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.3"})
create (_65104:`Component` {`nID`:67, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.3"})
create (_65105:`FileNode` {`nID`:68, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.3"})
create (_65106:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:69, `name`:"directory", `order`:1, `version`:"0.2.3"})
create (_65107:`FileNode` {`nID`:70, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.3"})
create (_65108:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:71, `name`:"jsonparser", `order`:2, `version`:"0.2.3"})
create (_65109:`FileNode` {`nID`:72, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.3"})
create (_65110:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:73, `name`:"injector", `order`:3, `version`:"0.2.3"})
create (_65111:`FileNode` {`nID`:74, `name`:"ariane.community.plugin.rabbitmq-0.2.3.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.3"})
create (_65112:`FileNode` {`nID`:75, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_0.2.3.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.3"})
create (_65113:`FileNode` {`nID`:76, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.3"})
create (_65114:`FileNode` {`nID`:77, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.3"})
create (_65115:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:78, `name`:"rabbitmq", `version`:"0.2.3"})
create (_65116:`FileNode` {`nID`:79, `name`:"ariane.community.distrib-0.6.3.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.3"})
create (_65117:`FileNode` {`nID`:80, `name`:"pom-ariane.community.distrib-0.6.3.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.3"})
create (_65118:`FileNode` {`nID`:81, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.3"})
create (_65119:`FileNode` {`nID`:82, `name`:"ariane.community.plugins-distrib-0.6.3.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.3"})
create (_65120:`FileNode` {`nID`:83, `name`:"ariane.community.git.repos-0.6.3.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.3"})
create (_65121:`Distribution` {`editable`:"false", `nID`:84, `name`:"community", `url_repos`:"", `version`:"0.6.3"})
create _65039-[:`CONTAINS`]->_65038
create _65041-[:`CONTAINS`]->_65040
create _65043-[:`CONTAINS`]->_65042
create _65047-[:`CONTAINS`]->_65046
create _65047-[:`CONTAINS`]->_65045
create _65047-[:`CONTAINS`]->_65044
create _65047-[:`module`]->_65043
create _65047-[:`module`]->_65041
create _65047-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65048
create _65048-[:`CONTAINS`]->_65067
create _65048-[:`CONTAINS`]->_65066
create _65048-[:`CONTAINS`]->_65065
create _65048-[:`module`]->_65064
create _65048-[:`module`]->_65062
create _65048-[:`module`]->_65060
create _65048-[:`module`]->_65058
create _65048-[:`module`]->_65056
create _65048-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_65054
create _65050-[:`CONTAINS`]->_65049
create _65054-[:`CONTAINS`]->_65053
create _65054-[:`CONTAINS`]->_65052
create _65054-[:`CONTAINS`]->_65051
create _65054-[:`module`]->_65050
create _65056-[:`CONTAINS`]->_65055
create _65058-[:`CONTAINS`]->_65057
create _65060-[:`CONTAINS`]->_65059
create _65062-[:`CONTAINS`]->_65061
create _65064-[:`CONTAINS`]->_65063
create _65069-[:`CONTAINS`]->_65068
create _65071-[:`CONTAINS`]->_65070
create _65073-[:`CONTAINS`]->_65072
create _65075-[:`CONTAINS`]->_65074
create _65077-[:`CONTAINS`]->_65076
create _65077-[:`module`]->_65075
create _65077-[:`module`]->_65073
create _65077-[:`module`]->_65071
create _65077-[:`module`]->_65069
create _65079-[:`CONTAINS`]->_65078
create _65081-[:`CONTAINS`]->_65080
create _65085-[:`CONTAINS`]->_65084
create _65085-[:`CONTAINS`]->_65083
create _65085-[:`CONTAINS`]->_65082
create _65085-[:`module`]->_65081
create _65085-[:`module`]->_65079
create _65085-[:`module`]->_65077
create _65085-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_65054
create _65085-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65048
create _65087-[:`CONTAINS`]->_65086
create _65089-[:`CONTAINS`]->_65088
create _65093-[:`CONTAINS`]->_65092
create _65093-[:`CONTAINS`]->_65091
create _65093-[:`CONTAINS`]->_65090
create _65093-[:`module`]->_65089
create _65093-[:`module`]->_65087
create _65093-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65048
create _65095-[:`CONTAINS`]->_65094
create _65097-[:`CONTAINS`]->_65096
create _65099-[:`CONTAINS`]->_65098
create _65103-[:`CONTAINS`]->_65102
create _65103-[:`CONTAINS`]->_65101
create _65103-[:`CONTAINS`]->_65100
create _65103-[:`module`]->_65099
create _65103-[:`module`]->_65097
create _65103-[:`module`]->_65095
create _65103-[:`dependency` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_65047
create _65103-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65048
create _65106-[:`CONTAINS`]->_65105
create _65108-[:`CONTAINS`]->_65107
create _65110-[:`CONTAINS`]->_65109
create _65115-[:`CONTAINS`]->_65114
create _65115-[:`CONTAINS`]->_65113
create _65115-[:`CONTAINS`]->_65112
create _65115-[:`CONTAINS`]->_65111
create _65115-[:`module`]->_65110
create _65115-[:`module`]->_65108
create _65115-[:`module`]->_65106
create _65115-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65103
create _65115-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65048
create _65115-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65093
create _65115-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65085
create _65115-[:`compatibleWith`]->_65121
create _65121-[:`CONTAINS`]->_65120
create _65121-[:`CONTAINS`]->_65119
create _65121-[:`CONTAINS`]->_65118
create _65121-[:`CONTAINS`]->_65117
create _65121-[:`CONTAINS`]->_65116
create _65121-[:`composedBy`]->_65104
create _65121-[:`composedBy`]->_65103
create _65121-[:`composedBy`]->_65093
create _65121-[:`composedBy`]->_65085
create _65121-[:`composedBy`]->_65048
create _65121-[:`composedBy`]->_65054
create _65121-[:`composedBy`]->_65047
create _65121-[:`composedBy`]->_65039
;
commit
