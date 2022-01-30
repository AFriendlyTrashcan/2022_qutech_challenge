from getpass import getpass

from quantuminspire.qiskit import QI
from coreapi.auth import BasicAuthentication
from quantuminspire.credentials import save_account

from qiskit import QuantumCircuit, assemble, Aer, execute
from qiskit.circuit import QuantumRegister, ClassicalRegister, QuantumCircuit

def get_authentication():
    """Gets the authentication for connecting to the
       Quantum Inspire API.
    """
    print('Enter email:')
    email = input()
    print('Enter password')
    password = getpass()
    return email, password 


def get_backend(arch):
    if 'authentication' not in vars().keys():
        authentication = get_authentication()
    QI.set_authentication_details(*authentication)
    qi_backend = QI.get_backend(arch)
    return qi_backend


