OPENQASM 2.0;
include "qelib1.inc";
gate ccz q0,q1,q2 { p(pi/4) q1; p(pi/4) q2; cx q1,q2; u(0,0,-pi/4) q2; cx q1,q2; u(0,0,0) q2; cx q1,q0; p(-pi/4) q0; p(pi/4) q2; cx q0,q2; u(0,0,pi/4) q2; cx q0,q2; u(0,-pi/2,0) q2; cx q1,q0; p(pi/4) q0; p(pi/4) q2; cx q0,q2; u(0,0,-pi/4) q2; cx q0,q2; u(0,0,0) q2; }
gate c3z q0,q1,q2,q3 { p(pi/8) q2; p(pi/8) q3; cx q2,q3; u(0,0,-pi/8) q3; cx q2,q3; u(0,0,0) q3; cx q2,q1; p(-pi/8) q1; p(pi/8) q3; cx q1,q3; u(0,0,pi/8) q3; cx q1,q3; u(0,-pi/4,0) q3; cx q2,q1; p(pi/8) q1; p(pi/8) q3; cx q1,q3; u(0,0,-pi/8) q3; cx q1,q3; u(0,0,0) q3; cx q1,q0; p(-pi/8) q0; p(pi/8) q3; cx q0,q3; u(0,0,pi/8) q3; cx q0,q3; u(0,-pi/4,0) q3; cx q2,q0; p(pi/8) q0; p(pi/8) q3; cx q0,q3; u(0,0,-pi/8) q3; cx q0,q3; u(0,0,0) q3; cx q1,q0; p(-pi/8) q0; p(pi/8) q3; cx q0,q3; u(0,0,pi/8) q3; cx q0,q3; u(0,-pi/4,0) q3; cx q2,q0; p(pi/8) q0; p(pi/8) q3; cx q0,q3; u(0,0,-pi/8) q3; cx q0,q3; u(0,0,0) q3; }
gate mcmt q0,q1,q2,q3 { c3z q0,q1,q2,q3; }
gate mcmt_139622135406864 q0,q1,q2 { ccz q0,q1,q2; }
qreg q[5];
reset q[0];
reset q[1];
reset q[2];
reset q[3];
reset q[4];
h q[0];
h q[1];
h q[3];
mcmt q[1],q[2],q[3],q[4];
x q[1];
x q[3];
mcmt q[1],q[2],q[3],q[4];
x q[1];
x q[3];
cx q[2],q[4];
cx q[0],q[2];
cx q[0],q[4];
cx q[3],q[2];
cx q[1],q[4];
mcmt_139622135406864 q[3],q[4],q[2];
