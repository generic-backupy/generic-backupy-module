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

Write your code in the module.py file, and change your meta information
in gb.json file.

## Current Problems (Future Todos)

### zip file name
Please don't uses spaces and other "unfriendly" filenames for the zip file.
It leads to problems in the installation process in the 
generic backup application

### installation on distributed instances
Currently, there is no support on installation on distributed instances.
Currently, it will only be installed on the first system, which gets
the installation worker job. 
We need to implement a sync functionality later.
