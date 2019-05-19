docker run  --rm \
-e "APPLICATION_BASE_URL=http://192.168.65.2:8080" \
-e "PUBLISH_ARTIFACTS=true" \
-e "PROJECT_NAME=producer-service" \
-e "PROJECT_GROUP=com.ibm.developer" \
-e "REPO_WITH_BINARIES_URL=http://192.168.65.2:8081/artifactory/libs-release-local" \
-e "PROJECT_VERSION=0.0.1-SNAPSHOT" \
-v "$(pwd)/contracts/:/contracts:ro" \
-v "$(pwd)/build-output:/spring-cloud-contract-output/" \
springcloud/spring-cloud-contract:2.2.0.BUILD-SNAPSHOT

#2.1.1.RELEASE
#2.2.0.BUILD-SNAPSHOT --no tests