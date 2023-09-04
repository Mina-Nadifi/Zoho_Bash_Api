6git add .#!/bin/bash

echo "Hello world!"
curl -X POST  https://accounts.zoho.com/oauth/v2/token   --data-urlencode 'refresh_token=1000.8adfd0041994f54c1544137b5b13e0be.9a18836eb316ad84b9880ee89211e006'   --data-urlencode 'client_id=1000.5L4AXFROOH9YW01527EFVN3SV3QH4P'   --data-urlencode 'client_secret=7da1db8752e3d7b898f4683b7b02dfd6702b6c3821'   --data-urlencode 'redirect_uri=https://localhost:7195/account/integrations/zoho/tokencallback'   --data-urlencode 'grant_type=refresh_token' --output baghali.json
