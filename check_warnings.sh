echo ""
echo "Checking Warnings..."

export RESULT="$"
export RESULT="${RESULT}RESULT"
export JAVA_HOME="${JAVA_HOME}"

mvn -f pom.xml -ntp "-DcompileOptionXlint=-Xlint:all" "-DcompileOptionXdoclint=-Xdoclint:all/private" "-DcompileOptionFail=true" "-Dmaven.compiler.showWarnings=true" clean compile
RESULT=$?

echo "Result was -->$RESULT<--"

# add annotation if failed
if [[ -n "$RESULT" ]];
then
  echo "EMPTY"

  if [[ $RESULT -ne 0 ]];
  then
    echo "Hello world"
    exit $RESULT;
  fi
fi

exit 0;
