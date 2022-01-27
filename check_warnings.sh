echo ""
echo "Checking Warnings..."

export DOLLAR="$"
export JAVA_HOME="${JAVA_HOME}"

mvn -f pom.xml -ntp "-DcompileOptionXlint=-Xlint:all" "-DcompileOptionXdoclint=-Xdoclint:all/private" "-DcompileOptionFail=true" "-Dmaven.compiler.showWarnings=true" clean compile
RESULT=$?

echo "Result was -->${DOLLAR}RESULT<--"

# add annotation if failed
if [[ -n "${DOLLAR}RESULT" ]];
then
  echo "EMPTY"

  if [[ ${DOLLAR}RESULT -ne 0 ]];
  then
    echo "Hello world"
    exit ${DOLLAR}RESULT;
  fi
fi

exit 0;
