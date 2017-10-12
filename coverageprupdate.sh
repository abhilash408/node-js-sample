#Update the Eslint Status
##commit=$(git rev-parse HEAD)
if (grep -c 'class=\"strong\"' coverage/lcov-report/index.html 1> /dev/null 2>&1) then
curl -k -X POST -H "Authorization: token bc839b18801" https://github01.net/api/v3/repos/orgtechnology/orgrepo/statuses/$(git rev-parse HEAD) -d "{
  \"state\": \"success\",
  \"target_url\": \"${BUILD_URL} \",
  \"description\": \"Coverage Results displayed on Jenkins\",
  \"context\": \"continuous-integration/jenkins/IstanbulCoverage \"
}"
else
curl -k -X POST -H "Authorization: token bcd839b18801" https://github01.net/api/v3/repos/orgtechnology/orgrepo/statuses/$(git rev-parse HEAD) -d "{
  \"state\": \"failure\",
  \"target_url\": \"${BUILD_URL} \",
  \"description\": \"Something is wrong with IstanbulCoverage \",
  \"context\": \"continuous-integration/jenkins/IstanbulCoverage \"
}"
fi
