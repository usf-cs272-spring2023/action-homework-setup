echo ""
echo "Checking Warnings..."

export JAVA_HOME="${JAVA_HOME}"

# "-Dorg.slf4j.simpleLogger.levelInBrackets=false" "-Dorg.slf4j.simpleLogger.defaultLogLevel=info" "-Dorg.slf4j.simpleLogger.warnLevelString=Warning:"
mvn -f pom.xml -ntp "-DcompileOptionXlint=-Xlint:all" "-DcompileOptionXdoclint=-Xdoclint:all/private" "-DcompileOptionFail=true" "-Dmaven.compiler.showWarnings=true" clean compile
