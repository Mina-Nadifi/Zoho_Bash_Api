6git add .#!/bin/bash

echo "Hello world!"
curl -X POST  https://accounts.zoho.com/oauth/v2/token   --data-urlencode 'refresh_token=1refresh_token'   --data-urlencode 'client_id=client_id'   --data-urlencode 'client_secret=client_secret'   --data-urlencode 'redirect_uri=https://localhost:7195/account/integrations/zoho/tokencallback'   --data-urlencode 'grant_type=refresh_token' --output baghali.json
