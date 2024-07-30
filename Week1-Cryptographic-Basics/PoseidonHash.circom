// A circuit that proves input to a Poseidon Hash.

pragma circom 2.1.6;

include "circomlib/poseidon.circom";

template PoseidonHash() {
    signal input preimage;
    signal input hash;
    signal output hashOutput;

    component hasher = Poseidon(1);
    hasher.inputs[0] <== preimage;
    hashOutput <== hasher.out;

    hashOutput === hash;
}

component main = PoseidonHash();

/* INPUT = {
    "preimage": "12345",
    "hash": "4267533774488295900887461483015112262021273608761099826938271132511348470966"
} */
