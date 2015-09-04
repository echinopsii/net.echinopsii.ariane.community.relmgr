#! /bin/zsh
GIT_EXEC_PATH=/usr/local/Cellar/git/2.2.1
MAVEN_HOME=/usr/local/Cellar/maven/3.2.5
JAVA_HOME=$(/usr/libexec/java_home)

if [[ "$PATH" != *"$GIT_EXEC_PATH"* ]]; then
    export PATH=$GIT_EXEC_PATH/bin:$PATH;
    echo "export PATH env variable ($PATH)"
fi
if [[ "$PATH" != *"$MAVEN_HOME"* ]]; then
    export PATH=$MAVEN_HOME/bin:$PATH;
    echo "export PATH env variable ($PATH)"

fi
if [[ "$PATH" != *"$JAVA_HOME"* ]]; then
    export PATH=$JAVA_HOME/bin:$PATH;
    echo "export PATH env variable ($PATH)"
fi

python3 ariane_relsrv/server/restful.py
