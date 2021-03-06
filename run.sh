# ************************************************************
#
# This step will install your project dependencies
#
#   Variables used:
#
#   Outputs:
#
# ************************************************************

cd $FLOW_CURRENT_PROJECT_PATH

if [[ ! -f ./pom.xml ]]; then
  echo -e "${ANSI_RED}No such file ./pom.xml!${ANSI_RESET}"
  flow_terminate 2
fi

if [[ ! -f ./mvnw ]]; then
  flow_cmd "mvn install -DskipTests=true -Dmaven.javadoc.skip=true -B -V" --echo --assert
else
  flow_cmd "./mvnw install -DskipTests=true -Dmaven.javadoc.skip=true -B -V" --echo --assert
fi
