// Name of Experiment: initialization of two entagled states with two qbits.
// The state of entaglement is reached with (|01> + |10>)\sqrt(2): the reason is simple. 
// The state describe a first qbit (the qbit in right part of each ket notation) in a superposition: 
// you don't know the state of qbit, is equally 0 and 1. Even the second qbit is in a undeterministic superposition. 
// You know, looking to that particular state, that both qbit are enrolled in a form of entaglement: 
// that means, when you look at one of the qbit in this state it behaves randomly, but its random behavior allows you 
// to perfectly predict how the other qbit would behave if measured (along the same axis). 
// Entangled states exhibit this combination of perfect correlation between randomness.

OPENQASM 2.0;
include "qelib1.inc";

// initialization 2-quantum bits register
qreg q[2];
// initialization 2-classic bits register
creg c[2];

// perform superposition in first qbit using hadamard gate (equals to maps X basis -> Z, and Z -> X.)
h q[0];
// now q[0] is in a superposition. Is 0 and 1. Keep that in mind.

// perform CNOT using first qbit (pos 0) as control and second qbit (pos 1) as target
// CNOT consist in a quantum operator that take two qbit as argument. If control, first argument, is in state 1,
// CNOT applies Pauli transform on X (flip, or logical NOT) in target qbit (second argument).
cx q[0],q[1];

// measure first qbit, insert result in first classical register
measure q[0] -> c[0];
// So, measuring first qbit, this is in a superposition so could be 0. This would not change the initial 
// state of second qbit (0) after CNOT execution. The resulting state would be |00>. 

// measure second qbit, insert result in second classical register
measure q[1] -> c[1];
// But, the first qbit could be 1 and this would change the initial state of second qbit (0) to 1.
// The resulting state would be |11>.

// This exhibit the correlation between randomness of two qbit system. Another example could be done 
// adding a flip operation on second qbit. Result should be |10> (if 0, keep unchanged, so 1) or |01> 
// (if 1, change, so 0, because of 0 with doulbe not (X + CNOT). See above

// Name of Experiment: initialization entagled states with two qbits

qreg q[2];
creg c[2];

h q[0];
x q[1]; // ADDED X
cx q[0],q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];

// Name of Experiment: initialization of two entagled states with two qbits.
// The state of entaglement is reached with (|01> + |10>)\sqrt(2): the reason is simple. 
// The state describe a first qbit (the qbit in right part of each ket notation) in a superposition: 
// you don't know the state of qbit, is equally 0 and 1. Even the second qbit is in a undeterministic superposition. 
// You know, looking to that particular state, that both qbit are enrolled in a form of entaglement: 
// that means, when you look at one of the qbit in this state it behaves randomly, but its random behavior allows you 
// to perfectly predict how the other qbit would behave if measured (along the same axis). 
// Entangled states exhibit this combination of perfect correlation between randomness.

OPENQASM 2.0;
include "qelib1.inc";

// initialization 2-quantum bits register
qreg q[2];
// initialization 2-classic bits register
creg c[2];

// perform superposition in first qbit using hadamard gate (equals to maps X basis -> Z, and Z -> X.)
h q[0];
// now q[0] is in a superposition. Is 0 and 1. Keep that in mind.

// perform CNOT using first qbit (pos 0) as control and second qbit (pos 1) as target
// CNOT consist in a quantum operator that take two qbit as argument. If control, first argument, is in state 1,
// CNOT applies Pauli transform on X (flip, or logical NOT) in target qbit (second argument).
cx q[0],q[1];

// measure first qbit, insert result in first classical register
measure q[0] -> c[0];
// So, measuring first qbit, this is in a superposition so could be 0. This would not change the initial 
// state of second qbit (0) after CNOT execution. The resulting state would be |00>. 

// measure second qbit, insert result in second classical register
measure q[1] -> c[1];
// But, the first qbit could be 1 and this would change the initial state of second qbit (0) to 1.
// The resulting state would be |11>.

// This exhibit the correlation between randomness of two qbit system. Another example could be done 
// adding a flip operation on second qbit. Result should be |10> (if 0, keep unchanged, so 1) or |01> 
// (if 1, change, so 0, because of 0 with doulbe not (X + CNOT). See above

// Name of Experiment: initialization entagled states with two qbits

qreg q[2];
creg c[2];

h q[0];
x q[1]; // ADDED X
cx q[0],q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];

// Name of Experiment: initialization entagled states with three qbits (should be correct ?!)

// So, measuring first qbit, this is in a superposition so could be 0. This would not change the initial 
// state of second qbit (0) after CNOT execution. But this is also in a superposition because of Hadamard
// If first superposition collapse in 0, then resulting would be equally |110> or |000>.
// If first superposition collapse in 1, than second collapse in X H. 
// So then resulting would be equally |111>, |001>, and equally to first.

qreg q[3];
creg c[3];

h q[0];
cx q[0],q[1];
h q[1];
cx q[1],q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];

// If you want 8 equally state then add H transform to third qbit (don't know).

include "qelib1.inc";
qreg q[3];
creg c[3];

h q[0];
cx q[0],q[1];
h q[1];
cx q[1],q[2];
h q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
