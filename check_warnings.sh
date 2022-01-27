echo ""
echo "Checking Warnings..."

export JAVA_HOME="${JAVA_HOME}"

mvn -f pom.xml -ntp "-DcompileOptionXlint=-Xlint:all" "-DcompileOptionXdoclint=-Xdoclint:all/private" "-DcompileOptionFail=true" "-Dmaven.compiler.showWarnings=true" "-Dorg.slf4j.simpleLogger.levelInBrackets=false" "-Dorg.slf4j.simpleLogger.defaultLogLevel=info" "-Dorg.slf4j.simpleLogger.warnLevelString=Warning:" clean compile

if [[ $? -ne 0 ]];
then
  touch found_compile_warnings
  exit 1;
fi

exit 0;
