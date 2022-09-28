#!/usr/bin/env bash

set -euxo pipefail

certoraRun \
    certora/harnesses/ERC20VotesHarness.sol \
    certora/harnesses/ERC721VotesHarness.sol \
    certora/munged/governance/TimelockController.sol \
    certora/harnesses/GovernorPreventLateQuorumHarness.sol \
    --verify GovernorPreventLateQuorumHarness:certora/specs/GovernorPreventLateQuorum.spec \
    --solc solc \
    --optimistic_loop \
    --loop_iter 1 \
    --rule_sanity advanced \
    --msg "all sanity" \