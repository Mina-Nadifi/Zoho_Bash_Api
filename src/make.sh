echo "refresh_token"
read refresh_token
echo "client_id"
read client_id
echo "client_secret"
read client_secret
mina=$( curl -X POST  https://accounts.zoho.com/oauth/v2/token   --data-urlencode "refresh_token=${refresh_token}"   --data-urlencode "client_id=${client_id}"   --data-urlencode "client_secret=${client_secret}"   --data-urlencode 'redirect_uri=https://localhost:7195/account/integrations/zoho/tokencallback'   --data-urlencode 'grant_type=refresh_token')
echo $mina
sina=$(echo $mina | cut -d':' -f 2)
shang=$(echo $sina | cut -d',' -f 1)
koskhol=$(echo $shang | cut -b 2-71)

curl --location 'https://projectsapi.zoho.com/restapi/portal/805006628/projects/' --header "Authorization: Bearer ${koskhol}" --output data/projects.json
curl --location 'https://projectsapi.zoho.com/restapi/portal/805006628/projects/2095560000000048229/tasklists/' --header "Authorization: Bearer ${koskhol}" --output data/tasklists.json
curl --location 'https://projectsapi.zoho.com/restapi/portal/805006628/projects/2095560000000048229/' --header "Authorization: Bearer ${koskhol}" --output data/minacodes.json
curl --location 'https://projectsapi.zoho.com/restapi/portal/805006628/projects/2095560000000048229/milestones/' --header "Authorization: Bearer ${koskhol}" --output data/milestones.json
