  Metacello new
    project: 'Sample';
    repository: 'github://dalehenrich/MetacelloRepository:master';
    get.

  Metacello new
    project: 'Sample';
    filetree: '/opt/git/sample/repository';
    get.

  "download  HEAD of master branch .. create Monticello (filetree) repository"
  Metacello new
    project: 'Sample';
    repository: 'github://dalehenrich/sample:master/';
    get.

  "load version 1.1 using metacello/sample/metacello.json directly"
  Metacello new
    project: 'Sample';
    repository: 'github://dalehenrich/sample:1.1/repository';
    load.

  "load #stable version using ConfigurationOfSample (project reference)"
  Metacello new
    project: 'Sample';
    version: #stable;
    repository: 'filetree:///opt/git/MetacelloRepository/';
    load.

  Metacello new
    project: 'Metacello';
    filetree: '/opt/git/metacello/repository/';
    load: #('ALL' ).

  Metacello new
    project: 'FileTree';
    repository: 'http://ss3.gemstone.com/ss/FileTree';
    version: '1.0';
    load.
