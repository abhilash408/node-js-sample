#Update the Eslint Status to pending on Github Pull Request

curl -k -X POST -H "Authorization: token bcb18801" https://usolxpgithub01.use.ucdp.net/api/v3/repos/uorgtechnology/orgrepo/statuses/$(git rev-parse HEAD) -d "{
  \"state\": \"pending\",
  \"target_url\": \"${BUILD_URL} \",
  \"description\": \"Preparing to lint code\",
  \"context\": \"continuous-integration/jenkins/Eslint \"
}"
