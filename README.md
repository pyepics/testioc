pyepics-testioc
---------------

An EPICS IOC which has the records required to run the
[pyepics](https://github.com/pyepics/pyepics) test suite.

Requirements
------------

* A working Debian-based installation
* NSLS-II controls package repository in your sources.list:
    http://epics.nsls2.bnl.gov/debian/
* These packages installed: epics-dev epics-synapps-dev build-essential 
* For the simulator script, you will need: python python-numpy
* pyepics

Instructions
------------
    
1. Install the requirements as listed above

2. At the top-level directory:
```bash
    $ make
    $ cd iocBoot/iocTestioc
    $ ./st.cmd
```
3. In another terminal on the same machine, run the simulation script:
```bash
    $ python simulator.py
```
