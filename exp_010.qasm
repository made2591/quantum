include "qelib1.inc";
qreg q[3];
creg c[3];

h q[1];
cx q[1],q[2];
cx q[0],q[1];
h q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];
x q[2];
z q[2];
measure q[2] -> c[2];