echo ""
echo "Recompiling Homework..."
export JAVA_HOME="${JAVA_HOME}"
mvn -f pom.xml -ntp --quiet "-DcompileOptionXlint=-Xlint:none" "-DcompileOptionXdoclint=-Xdoclint:none" "-DcompileOptionFail=false" "-Dmaven.compiler.showWarnings=false" clean compile test-compile
