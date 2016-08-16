begin
create (_62970:`Module` {`artifactId`:"son.fils", `groupId`:"son", `nID`:1, `name`:"fils", `order`:0, `version`:"0.3"})
create (_62971:`FileNode` {`nID`:2, `name`:"lxla", `path`:"/ala/eer", `type`:"al", `version`:"00."})
create (_62972:`Module` {`artifactId`:"none", `groupId`:"none", `nID`:3, `name`:"papa", `order`:0, `version`:"0.2.2"})
create (_62973:`Module` {`artifactId`:"oyo.arti", `groupId`:"oyo", `nID`:4, `name`:"arti", `order`:0, `version`:"0.2.2"})
create (_62974:`FileNode` {`nID`:5, `name`:"ael", `path`:"/dad/ae", `type`:"ald", `version`:"aeda"})
create (_62975:`Module` {`artifactId`:"aya.marti", `groupId`:"aya", `nID`:6, `name`:"marti", `order`:0, `version`:"0.2.2"})
create (_62976:`FileNode` {`nID`:7, `name`:"bbb.xml", `path`:"/AA", `type`:"xml", `version`:"0.2.2"})
create (_62977:`Component` {`nID`:8, `name`:"My", `order`:0, `type`:"other", `version`:"0.2.2"})
create (_62978:`Component` {`nID`:9, `name`:"idm", `order`:0, `type`:"core", `version`:"0.3.2"})
create (_62979:`Module` {`artifactId`:"rab.rabitt", `groupId`:"rabitt", `nID`:10, `name`:"rab", `order`:0, `version`:"0.3"})
create (_62980:`FileNode` {`nID`:11, `name`:"plugFile", `path`:"/aez/fef", `type`:"xml", `version`:":"})
create (_62981:`Plugin` {`git_repos`:"https://github.com/echinopsii/net.echinopsii.", `nID`:12, `name`:"RabbitMQ", `version`:"0.2.2"})
create (_62982:`FileNode` {`nID`:13, `name`:"dodo.json", `path`:"/la/lala", `type`:"json", `version`:"0.6.2"})
create (_62983:`Distribution` {`editable`:"false", `nID`:14, `name`:"community", `url_repos`:"", `version`:"0.6.1"})
create _62972-[:`CONTAINS`]->_62971
create _62972-[:`module`]->_62970
create _62975-[:`CONTAINS`]->_62974
create _62977-[:`CONTAINS`]->_62976
create _62977-[:`module`]->_62975
create _62977-[:`module`]->_62973
create _62977-[:`module`]->_62972
create _62981-[:`CONTAINS`]->_62980
create _62981-[:`module`]->_62979
create _62981-[:`compatibleWith`]->_62983
create _62983-[:`CONTAINS`]->_62982
create _62983-[:`composedBy`]->_62978
create _62983-[:`composedBy`]->_62977
;
commit
