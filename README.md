#Note

Development of metacello has been moved to a [new repository](https://github.com/dalehenrich/metacello-work). 
The primary rationale for the move was to create a history in which repository structual changes are not a factor (for now).

## HOW TO INSTALL

Note that the the git work has not even achieved alpha, yet, so don't 
bootstrap into an image that you care about:)

Assuming Pharo 1.3

### Install FileTree
see README.md at https://github.com/dalehenrich/filetree

### Download the metacello project from GitHub by doing something like the following: 
```shell
  sudo mkdir /opt/git/
  sudo chmod og+rw /opt/git/
  cd /opt/git/
  curl -L https://github.com/dalehenrich/metacello/zipball/newPackageFormat > /tmp/git.zip
  unzip /tmp/git.zip -d /opt/git
```

### You can also clone the metacello repository if you already have git installed:
```shell
  sudo mkdir /opt/git/
  sudo chmod og+rw /opt/git/
  cd /opt/git/
  git clone https://github.com/dalehenrich/metacello
```

If you clone the metacello repository, then you should use:

  '/opt/git/metacello/repository/'

as the path for attaching the FileTree repository.


### Attach to the metacello repository and load Metacello files that have changed for git
(assuming your stating with Metacello 1.0-beta.31.1)"

```Smalltalk
Gofer new
  squeaksource: 'MetacelloRepository';
  package: 'ConfigurationOfOSProcess';
  load.
((Smalltalk at: #'ConfigurationOfOSProcess') project version: #stable) load.

Gofer new
    repository: (MCFileTreeRepository new directory: 
                    (FileDirectory on: '/opt/git/metacello/repository/'));
    package: 'Metacello-Base';
    package: 'Metacello-Core';
    package: 'Metacello-FileTree';
    package: 'Metacello-Git';
    package: 'Metacello-GitHub';
    package: 'Metacello-MC';
    package: 'Metacello-ToolBox';
    package: 'ConfigurationOfMetacello';
    load.
```