#Update the Eslint Status to pending on Github Pull Request

curl -k -X POST -H "Authorization: token bcd839b18801" https://github01..net/api/v3/repos/orgtechonology/orgrepo/statuses/$(git rev-parse HEAD) -d "{
  \"state\": \"pending\",
  \"target_url\": \"${BUILD_URL} \",
  \"description\": \"Preparing for Istanbul code Coverage\",
  \"context\": \"continuous-integration/jenkins/IstanbulCoverage \"
}"
