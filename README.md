# PoC

You may utilize these demonstrative PoCs for local debugging as well as generating the proof of exploit.

## Generate the proof via [0xHacked Online Tool](https://www.0xhacked.com/tool).

Submit your PoC file on [0xHacked Online Tool](https://www.0xhacked.com/tool) and download the proof upon completion. It usually takes minutes.

## Generate the proof via [zkProver](https://github.com/0xHackedLabs/zkProver)

### Prerequisite

* [Foundry](https://github.com/foundry-rs/foundry)
* [zkProver](https://github.com/0xHackedLabs/zkProver)

### Debug locally

```bash
forge test -vv
```

### Generating the proof of exploit

* SushiRouter

```bash
zkProver evm -r https://rpc.flashbots.net -b 17007841 src/SushiRouter/SushiRouterExploit.sol
```
* FuseProtocol

```bash
zkProver evm -r https://rpc.flashbots.net/ -b 17007841 src/fuseProtocol/FuseProtocolExploit.sol
```
