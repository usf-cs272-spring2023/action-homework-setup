echo ""
echo "Checking Warnings..."

export JAVA_HOME="${JAVA_HOME}"
mvn -f pom.xml -ntp "-DcompileOptionXlint=-Xlint:all" "-DcompileOptionXdoclint=-Xdoclint:all/private" "-DcompileOptionFail=true" "-Dmaven.compiler.showWarnings=true" clean compile

# add annotation if failed
status=$?

if [ $status -ne 0 ]; then
  echo "::warning::Unable to compiling code without warnings. See the \"Check Warnings\" section in the run log for details."
fi

exit $status
