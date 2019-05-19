docker run  --rm \
-e "STUBRUNNER_IDS=com.ibm.developer:producer-service:+:stubs:9876" \
-e "STUBRUNNER_REPOSITORY_ROOT=http://192.168.65.2:8081/artifactory/libs-release-local/" \
-e "STUBRUNNER_STUBS_MODE=REMOTE" \
-p "8083:8083" \
-p "9876:9876" \
springcloud/spring-cloud-contract-stub-runner:2.1.1.RELEASE