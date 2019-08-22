docker run  --rm \
-e "APPLICATION_BASE_URL=http://host.docker.internal:8080" \
-e "PUBLISH_ARTIFACTS=true" \
-e "PROJECT_NAME=produce-service" \
-e "PROJECT_GROUP=com.ibm.developer" \
-e "REPO_WITH_BINARIES_URL=http://host.docker.internal:8081/artifactory/libs-release-local" \
-e "PROJECT_VERSION=0.0.1-SNAPSHOT" \
-e "EXTERNAL_CONTRACTS_GROUP_ID=com.ibm.developer" \
-e "EXTERNAL_CONTRACTS_ARTIFACT_ID=produce-service" \
-e "EXTERNAL_CONTRACTS_VERSION=0.0.1-SNAPSHOT" \
-e "EXTERNAL_CONTRACTS_REPO_WITH_BINARIES_URL=git://https://github.com/wkorando/produce-contracts.git" \
-v "$(pwd)/build-output:/spring-cloud-contract-output/" \
-v "$(pwd)/contracts/:/contracts:ro" \
springcloud/spring-cloud-contract:2.1.1.RELEASE

#2.1.1.RELEASE
#2.2.0.BUILD-SNAPSHOT --no tests
#-e "EXTERNAL_CONTRACTS_PATH=/path/to/contracts/repo/root" \
#-e "EXTERNAL_CONTRACTS_REPO_WITH_BINARIES_URL=git://https://github.com/wkorando/produce-contracts.git" \
#-e "EXTERNAL_CONTRACTS_PATH=/Users/William.Korando@ibm.com/code/collaborative-contract-driven-development-2-0/produce-contracts/" \
#-e "APPLICATION_BASE_URL=http://host.docker.internal:8080" \