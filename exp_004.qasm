include "qelib1.inc";
qreg q[1];
creg c[1];

h q[0];
measure q[0] -> c[0];