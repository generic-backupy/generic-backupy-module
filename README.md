# Generic-Backupy Module
This is a template for generic-backupy modules. In this template, 
a module will be created, which uses the extra dependency numpy.
You can install any types of python modules, which will be installed
in a separate python environment, which will be invoked by generic-backupy
at execution time of the module.

```
cd module
python3 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt
deactivate
```
