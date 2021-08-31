build: contracts/instance.sol
	npx oz compile

deploy:
#	npx oz create  testnet --init initialize
#	npx oz deploy -n development -k upgradeable -f 0x90F8bf6A479f320ead074411a4B0e7944Ea8c9C1 StrategyBalancerMettalex 0x9561C133DD8580860B6b7E504bC5Aa500f0f06a7
	npx oz deploy --network testnet

init:
	npm init -y
	npm install @openzeppelin/cli
	npm install @openzeppelin/contracts-ethereum-package@2.5
	npm audit fix
	rm -rf .openzeppelin
	npx oz INSTACOIN --no-interactive

verify:
	npx truffle run verify Instance@0xd8c71B7fC1D634Fdba5EBf4F78Efea861a16733B --network testnet