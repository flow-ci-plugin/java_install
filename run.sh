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

flow_cmd "mvn install -DskipTests=true -Dmaven.javadoc.skip=true -B -V" --echo --retry --assert
