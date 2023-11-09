# PoC

This repository contains serveral sample attack transactions. We highly recommend you to start hacking from this repository.

After local debugging of PoC, you can generate the proof of exploit locally using [zkProver](https://github.com/0xHackedLabs/zkProver) or do it online on the [0xHacked Online Tool](https://0xHacked.com/tool).

If you prefer to generate the proof of exploit locally, please follow the steps below.

### 1. requirements

* [Foundry](https://github.com/foundry-rs/foundry)
* [zkProver](https://github.com/0xHackedLabs/zkProver)

### 2. PoC

Write the PoC using the provided [template](src/Exploit.sol).

### 3. debug locally

```bash
forge test -vv
```

### 4. generate the proof of exploit

``` bash
zkProver evm -r https://rpc.flashbots.net/ src/Exploit.sol
```

Additionally, you can generate sample proofs of exploits to view more details on [0xHacked.com](https://0xHacked.com).

* SushiRouter

```bash
zkProver evm -r https://rpc.flashbots.net -b 17007841 src/SushiRouter/SushiRouterExploit.sol
```

* FuseProtocol

```bash
zkProver evm -r https://rpc.flashbots.net/ -b 14684684 src/fuseProtocol/FuseProtocolExploit.sol
```

* Anyswap

```bash
zkProver evm -r https://rpc.flashbots.net/ -b 14037236 src/Anyswap/AnyswapExploit.sol
```
