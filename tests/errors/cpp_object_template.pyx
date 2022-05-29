# mode: error
# tag: cpp

from libcpp.vector cimport vector

cdef class A:
    pass

def main():
    cdef vector[object] vo
    vo.push_back(object())
    cdef vector[A] va
    va.push_back(A())

def memview():
    import array
    cdef vector[int[:]] vmv
    vmv.push_back(array.array("i", [1,2,3]))

_ERRORS = u"""
10:16: Python object type 'Python object' cannot be used as a template argument
12:16: Python object type 'A' cannot be used as a template argument
17:19: Reference-counted type 'int[:]' cannot be used as a template argument
"""
