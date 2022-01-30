OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[4];
cx q[0],q[2];
cx q[1],q[2];
cx q[3],q[2];
cx q[4],q[2];
x q[0];
x q[3];

measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
