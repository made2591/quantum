include "qelib1.inc";
qreg q[1];
creg c0[1];

h q[0];
t q[0];
h q[0];
s q[0];
measure q[0] -> c0[0];