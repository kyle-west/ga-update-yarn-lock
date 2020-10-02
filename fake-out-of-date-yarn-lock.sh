sed -i '' 's/dotenv": "^8.2.0/dotenv": "8.1.0/g' package.json
sleep 1
rm -rf node_modules yarn.lock
sleep 1
yarn install
sleep 1
sed -i '' 's/dotenv@8.1.0:/dotenv@^8.1.0:/g' yarn.lock
sed -i '' 's/dotenv": "8.1.0/dotenv": "^8.2.0/g' package.json