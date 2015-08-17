begin
create (_142028:`SubModule` {`artifactId`:"son.fils", `groupId`:"son", `nID`:1, `name`:"fils", `order`:0, `version`:"0.3"})
create (_142029:`FileNode` {`nID`:2, `name`:"lxla", `path`:"/ala/eer", `type`:"al", `version`:"00."})
create (_142030:`SubModuleParent` {`artifactId`:"", `groupId`:"", `nID`:3, `name`:"papa", `version`:"0.3"})
create (_142031:`SubModule` {`artifactId`:"oyo.arti", `groupId`:"oyo", `nID`:4, `name`:"arti", `order`:0, `version`:"0.2"})
create (_142032:`FileNode` {`nID`:5, `name`:"ael", `path`:"/dad/ae", `type`:"ald", `version`:"aeda"})
create (_142033:`SubModule` {`artifactId`:"aya.marti", `groupId`:"aya", `nID`:6, `name`:"marti", `order`:0, `version`:"0.2"})
create (_142034:`FileNode` {`nID`:7, `name`:"bbb.xml", `path`:"/AA", `type`:"xml", `version`:"0.1"})
create (_142035:`Module` {`git_repos`:"net.echinopsii.ariane.community.my.git", `nID`:8, `name`:"My", `order`:0, `type`:"other", `version`:"0.2.2"})
create (_142036:`Module` {`git_repos`:"net.echinopsii.ariane.community.core.idm.git", `nID`:9, `name`:"idm", `order`:0, `type`:"core", `version`:"0.3.2"})
create (_142037:`SubModule` {`artifactId`:"rab.rabitt", `groupId`:"rabitt", `nID`:10, `name`:"rab", `order`:0, `version`:"0.3"})
create (_142038:`FileNode` {`nID`:11, `name`:"plugFile", `path`:"/aez/fef", `type`:"xml", `version`:":"})
create (_142039:`Plugin` {`nID`:12, `name`:"RabbitMQ", `version`:"0.2.2"})
create (_142040:`FileNode` {`nID`:13, `name`:"dodo.json", `path`:"/la/lala", `type`:"json", `version`:"0.6.2"})
create (_142041:`Distribution` {`nID`:14, `name`:"community", `version`:"0.6.1"})
create _142030-[:`COMPOSED OF`]->_142028
create _142030-[:`CONTAINS`]->_142029
create _142033-[:`CONTAINS`]->_142032
create _142035-[:`COMPOSED OF`]->_142033
create _142035-[:`COMPOSED OF`]->_142031
create _142035-[:`COMPOSED OF`]->_142030
create _142035-[:`DEPENDS ON`]->_142041
create _142035-[:`CONTAINS`]->_142034
create _142036-[:`DEPENDS ON`]->_142041
create _142039-[:`COMPOSED OF`]->_142037
create _142039-[:`COMPATIBLE WITH`]->_142041
create _142039-[:`CONTAINS`]->_142038
create _142041-[:`CONTAINS`]->_142040
;
commit
