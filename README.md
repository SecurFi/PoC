# PoC

You may utilize these demonstrative PoCs for local debugging as well as proof generation.

## Quickstart

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
zkProver evm -r https://rpc.flashbots.net -b 17007841 src/SushiRouter/SushiRouterExploit.sol:SushiExpProxy
```
* FuseProtocol

```bash
zkProver evm -r https://rpc.flashbots.net/ -b 17007841 src/fuseProtocol/FuseProtocolExploit.sol:FuseProtocolExploit
```

## Performance

```
CPU: Intel(R) Xeon(R) Gold 6133 CPU @ 2.50GHz
CPU Cores: 8
MEM: 38G
GPU: Tesla V100
OS: Ubuntu 20.04
```

| PoC | With GPU | Time|
|----|---------|-----|
|SushiRouter| Yes| 4.8 minutes |
|FuseProtocol| Yes | 1.3 hours |
|SushiRouter | NO |  1.6 hours |
|FuseProtocol | NO | ? |

For more details, please check out at https://docs.0xhacked.com/benchmark.
