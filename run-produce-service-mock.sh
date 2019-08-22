docker run  --rm \
-e "STUBRUNNER_IDS=com.ibm.developer:produce-service:+:stubs:9876" \
-e "STUBRUNNER_REPOSITORY_ROOT=http://host.docker.internal:8081/artifactory/libs-release-local/" \
-e "STUBRUNNER_STUBS_MODE=REMOTE" \
-p "8083:8083" \
-p "9876:9876" \
springcloud/spring-cloud-contract-stub-runner:2.1.1.RELEASE
