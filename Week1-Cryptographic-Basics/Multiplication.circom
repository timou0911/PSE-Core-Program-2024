// A circuit that proves the multiplication of three numbers.

pragma circom 2.1.6;

template Multiplication() {
    signal input a;
    signal input b;
    signal input c;

    signal intermediate;

    signal output result;

    intermediate <== a * b;
    result <== intermediate * c;

    log(intermediate, result);
}

component main = Multiplication();

/* INPUT = {
    "a": "3",
    "b": "4",
    "c": "5"
} */
