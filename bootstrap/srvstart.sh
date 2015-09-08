#! /bin/zsh
GIT_EXEC_PATH=/usr/local/Cellar/git/2.2.1
MAVEN_HOME=/usr/local/Cellar/maven/3.2.5
JAVA_HOME=$(/usr/libexec/java_home)

if [[ "$PATH" != *"$GIT_EXEC_PATH"* ]]; then
    export PATH=$GIT_EXEC_PATH/bin:$PATH;
    echo "export PATH env variable ($PATH)"
which git > /dev/null
if [ $? -ne 0 ]; then
       if [ "${GIT_HOME}" = "" ]; then
               echo "git is not defined in path and not GIT_HOME is not defined. Define your GIT_HOME in your env before starting server."
               exit -1
       else
               export PATH=$GIT_HOME/bin:$PATH
       fi
fi
if [[ "$PATH" != *"$MAVEN_HOME"* ]]; then
    export PATH=$MAVEN_HOME/bin:$PATH;
    echo "export PATH env variable ($PATH)"

which mvn > /dev/null
if [ $? -ne 0 ]; then
       if [ "${MAVEN_HOME}" = "" ]; then
               echo "mvn is not definied in path and MAVEN_HOME is not defined. Define your MAVEN_HOME in your env before starting server."
               exit -1
       else
               export PATH=$MAVEN_HOME/bin:$PATH
       fi
fi
if [[ "$PATH" != *"$JAVA_HOME"* ]]; then
    export PATH=$JAVA_HOME/bin:$PATH;
    echo "export PATH env variable ($PATH)"

which java > /dev/null
if [ $? -ne 0 ]; then
       if [ "${JAVA_HOME}" = "" ]; then
               echo "java is not defined in path and JAVA_HOME is not defined. Define your JAVA_HOME in your env before starting server."
               exit -1
       else
               export PATH=$JAVA_HOME/bin:$PATH
       fi
fi
