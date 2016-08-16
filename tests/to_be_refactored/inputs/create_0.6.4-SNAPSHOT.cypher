begin
create (_65124:`FileNode` {`nID`:160, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_65125:`FileNode` {`nID`:161, `name`:"deploy-plugin.rabbitmq.vsh", `path`:"ariane.community.plugin.rabbitmq/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.2.4-SNAPSHOT"})
create (_65126:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:162, `name`:"rabbitmq", `version`:"0.2.4-SNAPSHOT"})
create (_65127:`FileNode` {`nID`:163, `name`:"ariane.community.distrib-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/distrib/", `type`:"json_dist", `version`:"0.6.4-SNAPSHOT"})
create (_65128:`FileNode` {`nID`:164, `name`:"pom-ariane.community.distrib-master.SNAPSHOT.xml", `path`:"ariane.community.distrib/resources/maven/", `type`:"pom_dist", `version`:"0.6.4-SNAPSHOT"})
create (_65129:`FileNode` {`nID`:165, `name`:"ariane.community.plugins.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugins", `version`:"0.6.4-SNAPSHOT"})
create (_65130:`FileNode` {`nID`:166, `name`:"ariane.community.plugins-distrib-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/plugins/", `type`:"json_plugin_dist", `version`:"0.6.4-SNAPSHOT"})
create (_65131:`FileNode` {`nID`:167, `name`:"ariane.community.git.repos-master.SNAPSHOT.json", `path`:"ariane.community.distrib/resources/sources/", `type`:"json_git_repos", `version`:"0.6.4-SNAPSHOT"})
create (_65132:`Distribution` {`editable`:"false", `nID`:168, `name`:"community", `url_repos`:"", `version`:"0.6.4-SNAPSHOT"})
create (_65897:`FileNode` {`nID`:85, `name`:"deploy-components.vsh", `path`:"ariane.community.installer/distrib/installer/resources/virgoscripts/", `type`:"vsh", `version`:"0.6.4-SNAPSHOT"})
create (_65898:`Component` {`nID`:86, `name`:"installer", `order`:1, `type`:"environment", `version`:"0.6.4-SNAPSHOT"})
create (_65899:`FileNode` {`nID`:87, `name`:"pom.xml", `path`:"ariane.community.messaging/api/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_65900:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.api", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:88, `name`:"api", `order`:1, `version`:"0.1.1-SNAPSHOT"})
create (_65901:`FileNode` {`nID`:89, `name`:"pom.xml", `path`:"ariane.community.messaging/rabbitmq/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_65902:`Module` {`artifactId`:"net.echinopsii.ariane.community.messaging.rabbitmq", `groupId`:"net.echinopsii.ariane.community.messaging", `nID`:90, `name`:"rabbitmq", `order`:2, `version`:"0.1.1-SNAPSHOT"})
create (_65903:`FileNode` {`nID`:91, `name`:"ariane.community.messaging-master.SNAPSHOT.json", `path`:"ariane.community.messaging/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.1.1-SNAPSHOT"})
create (_65904:`FileNode` {`nID`:92, `name`:"net.echinopsii.ariane.community.messaging_master.SNAPSHOT.plan", `path`:"ariane.community.messaging/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.1.1-SNAPSHOT"})
create (_65905:`FileNode` {`nID`:93, `name`:"pom.xml", `path`:"ariane.community.messaging/", `type`:"pom", `version`:"0.1.1-SNAPSHOT"})
create (_65906:`Component` {`nID`:94, `name`:"messaging", `order`:2, `type`:"none", `version`:"0.1.1-SNAPSHOT"})
create (_65907:`FileNode` {`nID`:95, `name`:"pom.xml", `path`:"ariane.community.core.idm/base/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_65908:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.idm.base", `groupId`:"net.echinopsii.ariane.community.core.idm", `nID`:96, `name`:"base", `order`:1, `version`:"0.4.2-SNAPSHOT"})
create (_65909:`FileNode` {`nID`:97, `name`:"ariane.community.core.idm-master.SNAPSHOT.json", `path`:"ariane.community.core.idm/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.4.2-SNAPSHOT"})
create (_65910:`FileNode` {`nID`:98, `name`:"net.echinopsii.ariane.community.core.idm_master.SNAPSHOT.plan", `path`:"ariane.community.core.idm/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.4.2-SNAPSHOT"})
create (_65911:`FileNode` {`nID`:99, `name`:"pom.xml", `path`:"ariane.community.core.idm/", `type`:"pom", `version`:"0.4.2-SNAPSHOT"})
create (_65912:`Component` {`nID`:100, `name`:"idm", `order`:3, `type`:"core", `version`:"0.4.2-SNAPSHOT"})
create (_65913:`FileNode` {`nID`:101, `name`:"pom.xml", `path`:"ariane.community.core.portal/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65914:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.base", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:102, `name`:"base", `order`:1, `version`:"0.6.4-SNAPSHOT"})
create (_65915:`FileNode` {`nID`:103, `name`:"pom.xml", `path`:"ariane.community.core.portal/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65916:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:104, `name`:"wat", `order`:2, `version`:"0.6.4-SNAPSHOT"})
create (_65917:`FileNode` {`nID`:105, `name`:"pom.xml", `path`:"ariane.community.core.portal/idmwat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65928:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.idmwat", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:106, `name`:"idmwat", `order`:3, `version`:"0.6.4-SNAPSHOT"})
create (_65930:`FileNode` {`nID`:107, `name`:"pom.xml", `path`:"ariane.community.core.portal/wab/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65931:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wab", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:108, `name`:"wab", `order`:4, `version`:"0.6.4-SNAPSHOT"})
create (_65932:`FileNode` {`nID`:109, `name`:"pom.xml", `path`:"ariane.community.core.portal/wresources/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65933:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.portal.wresources", `groupId`:"net.echinopsii.ariane.community.core.portal", `nID`:110, `name`:"wresources", `order`:5, `version`:"0.6.4-SNAPSHOT"})
create (_65938:`FileNode` {`nID`:111, `name`:"ariane.community.core.portal-master.SNAPSHOT.json", `path`:"ariane.community.core.portal/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.4-SNAPSHOT"})
create (_65939:`FileNode` {`nID`:112, `name`:"net.echinopsii.ariane.community.core.portal_master.SNAPSHOT.plan", `path`:"ariane.community.core.portal/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.4-SNAPSHOT"})
create (_65940:`FileNode` {`nID`:113, `name`:"pom.xml", `path`:"ariane.community.core.portal/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65941:`Component` {`nID`:114, `name`:"portal", `order`:4, `type`:"core", `version`:"0.6.4-SNAPSHOT"})
create (_65942:`FileNode` {`nID`:115, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/api/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65943:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.api", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:116, `name`:"api", `order`:1, `version`:"0.6.4-SNAPSHOT"})
create (_65944:`FileNode` {`nID`:117, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/blueprints/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65945:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.blueprints", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:118, `name`:"blueprints", `order`:2, `version`:"0.6.4-SNAPSHOT"})
create (_65946:`FileNode` {`nID`:119, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/rim/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65947:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.rim", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:120, `name`:"rim", `order`:3, `version`:"0.6.4-SNAPSHOT"})
create (_65948:`FileNode` {`nID`:121, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/dsl/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65949:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds.dsl", `groupId`:"net.echinopsii.ariane.community.core.mapping.ds", `nID`:122, `name`:"dsl", `order`:4, `version`:"0.6.4-SNAPSHOT"})
create (_65950:`FileNode` {`nID`:123, `name`:"pom.xml", `path`:"ariane.community.core.mapping/ds/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65951:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.ds", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:124, `name`:"ds", `order`:5, `version`:"0.6.4-SNAPSHOT"})
create (_65952:`FileNode` {`nID`:125, `name`:"pom.xml", `path`:"ariane.community.core.mapping/taitale/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65953:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.taitale", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:126, `name`:"taitale", `order`:6, `version`:"0.6.4-SNAPSHOT"})
create (_65954:`FileNode` {`nID`:127, `name`:"pom.xml", `path`:"ariane.community.core.mapping/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65955:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.mapping.wat", `groupId`:"net.echinopsii.ariane.community.core.mapping", `nID`:128, `name`:"wat", `order`:7, `version`:"0.6.4-SNAPSHOT"})
create (_65956:`FileNode` {`nID`:129, `name`:"ariane.community.core.mapping-master.SNAPSHOT.json", `path`:"ariane.community.core.mapping/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.4-SNAPSHOT"})
create (_65957:`FileNode` {`nID`:130, `name`:"net.echinopsii.ariane.community.core.mapping_master.SNAPSHOT.plan", `path`:"ariane.community.core.mapping/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.4-SNAPSHOT"})
create (_65958:`FileNode` {`nID`:131, `name`:"pom.xml", `path`:"ariane.community.core.mapping/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65959:`Component` {`nID`:132, `name`:"mapping", `order`:5, `type`:"core", `version`:"0.6.4-SNAPSHOT"})
create (_65960:`FileNode` {`nID`:133, `name`:"pom.xml", `path`:"ariane.community.core.directory/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65961:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.base", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:134, `name`:"base", `order`:1, `version`:"0.6.4-SNAPSHOT"})
create (_65962:`FileNode` {`nID`:135, `name`:"pom.xml", `path`:"ariane.community.core.directory/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65963:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.directory.wat", `groupId`:"net.echinopsii.ariane.community.core.directory", `nID`:136, `name`:"wat", `order`:2, `version`:"0.6.4-SNAPSHOT"})
create (_65964:`FileNode` {`nID`:137, `name`:"ariane.community.core.directory-master.SNAPSHOT.json", `path`:"ariane.community.core.directory/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.4-SNAPSHOT"})
create (_65965:`FileNode` {`nID`:138, `name`:"net.echinopsii.ariane.community.core.directory_master.SNAPSHOT.plan", `path`:"ariane.community.core.directory/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.4-SNAPSHOT"})
create (_65966:`FileNode` {`nID`:139, `name`:"pom.xml", `path`:"ariane.community.core.directory/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65967:`Component` {`nID`:140, `name`:"directory", `order`:6, `type`:"core", `version`:"0.6.4-SNAPSHOT"})
create (_65968:`FileNode` {`nID`:141, `name`:"pom.xml", `path`:"ariane.community.core.injector/base/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65969:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.base", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:142, `name`:"base", `order`:1, `version`:"0.6.4-SNAPSHOT"})
create (_65970:`FileNode` {`nID`:143, `name`:"pom.xml", `path`:"ariane.community.core.injector/messaging/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65971:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.messaging", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:144, `name`:"messaging", `order`:2, `version`:"0.6.4-SNAPSHOT"})
create (_65972:`FileNode` {`nID`:145, `name`:"pom.xml", `path`:"ariane.community.core.injector/wat/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65973:`Module` {`artifactId`:"net.echinopsii.ariane.community.core.injector.wat", `groupId`:"net.echinopsii.ariane.community.core.injector", `nID`:146, `name`:"wat", `order`:3, `version`:"0.6.4-SNAPSHOT"})
create (_65974:`FileNode` {`nID`:147, `name`:"ariane.community.core.injector-master.SNAPSHOT.json", `path`:"ariane.community.core.injector/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.6.4-SNAPSHOT"})
create (_65975:`FileNode` {`nID`:148, `name`:"net.echinopsii.ariane.community.core.injector_master.SNAPSHOT.plan", `path`:"ariane.community.core.injector/distrib/db/resources/virgo/repository/ariane-core/", `type`:"plan", `version`:"0.6.4-SNAPSHOT"})
create (_65976:`FileNode` {`nID`:149, `name`:"pom.xml", `path`:"ariane.community.core.injector/", `type`:"pom", `version`:"0.6.4-SNAPSHOT"})
create (_65977:`Component` {`nID`:150, `name`:"injector", `order`:7, `type`:"core", `version`:"0.6.4-SNAPSHOT"})
create (_65978:`Component` {`nID`:151, `name`:"environment", `order`:8, `type`:"environment", `version`:"0.6.4-SNAPSHOT"})
create (_65979:`FileNode` {`nID`:152, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/directory/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_65980:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.directory", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:153, `name`:"directory", `order`:1, `version`:"0.2.4-SNAPSHOT"})
create (_65981:`FileNode` {`nID`:154, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/jsonparser/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_65982:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.jsonparser", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:155, `name`:"jsonparser", `order`:2, `version`:"0.2.4-SNAPSHOT"})
create (_65983:`FileNode` {`nID`:156, `name`:"pom.xml", `path`:"ariane.community.plugin.rabbitmq/injector/", `type`:"pom", `version`:"0.2.4-SNAPSHOT"})
create (_65984:`Module` {`artifactId`:"net.echinopsii.ariane.community.plugin.rabbitmq.injector", `groupId`:"net.echinopsii.ariane.community.plugin.rabbitmq", `nID`:157, `name`:"injector", `order`:3, `version`:"0.2.4-SNAPSHOT"})
create (_66164:`FileNode` {`nID`:158, `name`:"ariane.community.plugin.rabbitmq-master.SNAPSHOT.json", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/builds/", `type`:"json_build", `version`:"0.2.4-SNAPSHOT"})
create (_66165:`FileNode` {`nID`:159, `name`:"net.echinopsii.ariane.community.plugin.rabbitmq_master.SNAPSHOT.plan", `path`:"ariane.community.plugin.rabbitmq/distrib/db/resources/virgo/repository/ariane-plugins/", `type`:"plan", `version`:"0.2.4-SNAPSHOT"})
create _65126-[:`CONTAINS`]->_65125
create _65126-[:`CONTAINS`]->_66165
create _65126-[:`CONTAINS`]->_65124
create _65126-[:`CONTAINS`]->_66164
create _65126-[:`module`]->_65984
create _65126-[:`module`]->_65980
create _65126-[:`module`]->_65982
create _65126-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65941
create _65126-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65977
create _65126-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65967
create _65126-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65959
create _65126-[:`compatibleWith`]->_65132
create _65132-[:`CONTAINS`]->_65128
create _65132-[:`CONTAINS`]->_65127
create _65132-[:`CONTAINS`]->_65130
create _65132-[:`CONTAINS`]->_65129
create _65132-[:`CONTAINS`]->_65131
create _65132-[:`composedBy`]->_65906
create _65132-[:`composedBy`]->_65898
create _65132-[:`composedBy`]->_65941
create _65132-[:`composedBy`]->_65912
create _65132-[:`composedBy`]->_65967
create _65132-[:`composedBy`]->_65959
create _65132-[:`composedBy`]->_65978
create _65132-[:`composedBy`]->_65977
create _65898-[:`CONTAINS`]->_65897
create _65900-[:`CONTAINS`]->_65899
create _65902-[:`CONTAINS`]->_65901
create _65906-[:`CONTAINS`]->_65903
create _65906-[:`CONTAINS`]->_65905
create _65906-[:`CONTAINS`]->_65904
create _65906-[:`module`]->_65900
create _65906-[:`module`]->_65902
create _65908-[:`CONTAINS`]->_65907
create _65912-[:`CONTAINS`]->_65909
create _65912-[:`CONTAINS`]->_65911
create _65912-[:`CONTAINS`]->_65910
create _65912-[:`module`]->_65908
create _65914-[:`CONTAINS`]->_65913
create _65916-[:`CONTAINS`]->_65915
create _65928-[:`CONTAINS`]->_65917
create _65931-[:`CONTAINS`]->_65930
create _65933-[:`CONTAINS`]->_65932
create _65941-[:`CONTAINS`]->_65939
create _65941-[:`CONTAINS`]->_65938
create _65941-[:`CONTAINS`]->_65940
create _65941-[:`module`]->_65928
create _65941-[:`module`]->_65916
create _65941-[:`module`]->_65933
create _65941-[:`module`]->_65931
create _65941-[:`module`]->_65914
create _65941-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_65912
create _65943-[:`CONTAINS`]->_65942
create _65945-[:`CONTAINS`]->_65944
create _65947-[:`CONTAINS`]->_65946
create _65949-[:`CONTAINS`]->_65948
create _65951-[:`CONTAINS`]->_65950
create _65951-[:`module`]->_65949
create _65951-[:`module`]->_65943
create _65951-[:`module`]->_65945
create _65951-[:`module`]->_65947
create _65953-[:`CONTAINS`]->_65952
create _65955-[:`CONTAINS`]->_65954
create _65959-[:`CONTAINS`]->_65956
create _65959-[:`CONTAINS`]->_65957
create _65959-[:`CONTAINS`]->_65958
create _65959-[:`module`]->_65951
create _65959-[:`module`]->_65953
create _65959-[:`module`]->_65955
create _65959-[:`dependency` {`version_max`:"0.5.0", `version_min`:"0.4.0"}]->_65912
create _65959-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65941
create _65961-[:`CONTAINS`]->_65960
create _65963-[:`CONTAINS`]->_65962
create _65967-[:`CONTAINS`]->_65966
create _65967-[:`CONTAINS`]->_65965
create _65967-[:`CONTAINS`]->_65964
create _65967-[:`module`]->_65963
create _65967-[:`module`]->_65961
create _65967-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65941
create _65969-[:`CONTAINS`]->_65968
create _65971-[:`CONTAINS`]->_65970
create _65973-[:`CONTAINS`]->_65972
create _65977-[:`CONTAINS`]->_65976
create _65977-[:`CONTAINS`]->_65975
create _65977-[:`CONTAINS`]->_65974
create _65977-[:`module`]->_65969
create _65977-[:`module`]->_65971
create _65977-[:`module`]->_65973
create _65977-[:`dependency` {`version_max`:"0.7.0", `version_min`:"0.6.0"}]->_65941
create _65977-[:`dependency` {`version_max`:"0.2.0", `version_min`:"0.1.0"}]->_65906
create _65980-[:`CONTAINS`]->_65979
create _65982-[:`CONTAINS`]->_65981
create _65984-[:`CONTAINS`]->_65983
;
commit
