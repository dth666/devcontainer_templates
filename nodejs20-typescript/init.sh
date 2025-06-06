npm init -y
npm pkg set main="./build/index.js"
npm pkg set scripts.dev="nodemon --watch src --exec ts-node src/index.ts"
npm pkg set scripts.build="tsc"
npm pkg set scripts.start="node build/index.js"
mkdir -p build
mkdir -p output
mkdir -p src/config
mkdir -p src/core
mkdir -p src/services
mkdir -p src/utils
touch src/index.ts
npm install --save-dev typescript ts-node @types/node nodemon

#Para hacer endpoints REST
npm install express
npm install --save-dev @types/express
#REDIS
npm install redis
npm install --save-dev @types/redis

npx tsc --init
echo '======================================================='
echo 'Devcontainer setup complete!'
echo '======================================================'
echo 'Se debe configurar en tsconfig.json el \"outDir\": \"./build\" y \"rootDir\": \"./src\"'
echo '======================================================='
