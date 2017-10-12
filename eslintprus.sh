#Update the Eslint Status
##commit=$(git rev-parse HEAD)
if (grep -c 'severity=\"error\"' eslint.xml 1> /dev/null 2>&1) then
curl -k -X POST -H "Authorization: token b18801" https://github01.net/api/v3/repos/orgtechnology/orgrepo/statuses/$(git rev-parse HEAD) -d "{
  \"state\": \"failure\",
  \"target_url\": \"${BUILD_URL} \",
  \"description\": \"Lint errors present\",
  \"context\": \"continuous-integration/jenkins/Eslint \"
}"
else
curl -k -X POST -H "Authorization: token bd839b18801" https:/github01.net/api/v3/repos/orgtechnology/orgrepo/statuses/$(git rev-parse HEAD) -d "{
  \"state\": \"success\",
  \"target_url\": \"${BUILD_URL} \",
  \"description\": \"Linted successfully\",
  \"context\": \"continuous-integration/jenkins/Eslint \"
}"
fi
