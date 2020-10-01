sed -i '' 's/"express": "^4.17.0"/"express": "4.17.0"/g' package.json
sleep 1
rm -rf node_modules yarn.lock
sleep 1
yarn install
sleep 1
sed -i '' 's/express@4.17.0:/express@^4.17.0:/g' yarn.lock
sed -i '' 's/"express": "4.17.0"/"express": "^4.17.0"/g' package.json