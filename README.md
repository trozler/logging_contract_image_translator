# Interface node logging contract

This contract is used to log the start and end time (time since unix epoch) of transactions made on interface nodes.

### How to run and deploy

```
yarn install
yarn compile
yarn test
yarn deploy:network ropsten
```

### Deploying notes

If you want to deploy you need to create a `.env` file add the following:

```
INFURA_API_KEY=XXXXXXXXXXXXXXXX
MNEMONIC= <phrase>
```

Examples of mnemonic phrases are:

```
ice kitten symbol laughing banana liquid nominee dust call boring unlock make survey myself embrace soap series thing wedding badge cement strike smell rib
```

### Pre Requisites

Before running any command, make sure to install dependencies:

```sh
$ yarn install
```
