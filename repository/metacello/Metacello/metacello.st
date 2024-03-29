"Evaluate the following (with correct directory path) to produce metacello.json file:

  MetacelloFileTreeConstructor writeJsonFor:'/opt/git/metacello/repository/metacello/Metacello'
"
^MetacelloFileTreeConstructor extractMethodSectionsForSpecBlock: [:spec |
      "Baseline spec"
    spec
        for: #'common'
        do: [ 
            spec blessing: #'baseline'.
            spec repository: 'filetree:///opt/git/metacello/repository/'.
            spec
                project: 'Gofer'
                    with: [ 
                            spec
                                versionString: '1.0.5.1';
                                loads: #('Core');
                                repository: 'http://seaside.gemstone.com/ss/metacello' ];
                project: 'Gofer Tests' copyFrom: 'Gofer' with: [ spec loads: #('Tests') ];
                github: 'FileTree' with: [ spec repository: 'github://dalehenrich/filetree:master/repository' ];
                project: 'OSProcess'
                    with: [ 
                            spec
				className: 'ConfigurationOfOSProcess';
                                versionString: #'stable';
                                repository: 'http://www.squeaksource.com/MetacelloRepository' ];
                yourself.
            spec
                package: 'Metacello-Base';
                package: 'Metacello-ToolBox' with: [ spec requires: #('Metacello-Base' 'Metacello-Core') ];
                package: 'Metacello-Core'
                    with: [ 
                            spec
                                requires: 'Metacello-Base';
                                includes: #('Metacello-MC' 'Metacello-Platform') ];
                package: 'Metacello-MC' with: [ spec requires: #('Metacello-Core' 'Gofer') ];
                package: 'Metacello-FileTree' with: [ spec requires: #('Metacello-MC' 'FileTree') ];
                package: 'Metacello-GitHub' with: [ spec requires: #('Metacello-MC' 'Metacello-FileTree' 'OSProcess') ];
                package: 'Metacello-Git' with: [ spec requires: #('Metacello-GitHub') ];
                package: 'Metacello-Platform' with: [ spec requires: #('Metacello-MC') ];
                package: 'Metacello-Reference' with: [ spec requires: #('Metacello-MC') ];
                package: 'Metacello-Tutorial' with: [ spec requires: #('Metacello-Core') ];
                package: 'Metacello-TestsCore' with: [ spec requires: #('Metacello-Core') ];
                package: 'Metacello-TestsGitHub' with: [ spec requires: 'Metacello-GitHub' ];
                package: 'Metacello-TestsMC'
                    with: [ 
                            spec
                                postLoadDoIt: #'testsMC10beta25PostLoadDoIt';
                                requires: #('Metacello-MC' 'Metacello-TestsCore' 'Gofer Tests') ];
                package: 'Metacello-TestsReference' with: [ spec requires: #('Metacello-Reference') ];
                package: 'Metacello-TestsTutorial' with: [ spec requires: #('Metacello-Tutorial' 'Metacello-TestsMC') ];
                package: 'OB-Metacello'
                    with: [ spec requires: #('Metacello-Platform' 'Metacello-Core' 'Metacello-ToolBox') ];
                yourself.
            spec
                group: 'default' with: #('Metacello-Core' 'Metacello-ToolBox');
                group: 'Base Configuration' with: #('Metacello-Base');
                group: 'Core' with: #('default');
                group: 'Git' with: #('Metacello-Git' 'Metacello-GitHub');
                group: 'Tutorial' with: #('Metacello-Tutorial' 'Metacello-Reference');
                group: 'UI' with: #('OB-Metacello');
                group: 'Tests'
                    with:
                        #('default' 'Metacello-TestsCore' 'Metacello-TestsTutorial' 'Metacello-TestsMC' 'Metacello-TestsReference' 'Metacello-TestsGitHub');
                yourself ].
    spec
        for: #'squeakCommon'
        do: [ 
            spec
                project: 'HelpSystem'
                    with: [ 
                            spec
                                versionString: '1.1';
                                loads: #('Core');
                                repository: 'http://www.squeaksource.com/MetacelloRepository' ];
                project: 'OmniBrowser'
                    with: [ 
                            spec
                                versionString: #'stable';
                                loads: #('Core');
                                repository: 'http://www.squeaksource.com/MetacelloRepository' ];
                yourself.
            spec
                package: 'Metacello-TestsPlatform'
                    with: [ 
                            spec
                                requires: #('Metacello-Platform');
                                file: 'Metacello-TestsPlatform.squeakCommon' ];
                package: 'Metacello-Help' with: [ spec requires: 'HelpSystem' ];
                package: 'OB-Metacello' with: [ spec requires: #('OmniBrowser') ];
                yourself.
            spec
                group: 'default' with: #('Metacello-Help');
                group: 'Tests' with: #('Metacello-TestsPlatform');
                yourself ].
    spec
        for: #'pharo'
        do: [ 
            spec
                project: 'ProfStef'
                    with: [ 
                            spec
                                versionString: #'stable';
                                repository: 'http://www.squeaksource.com/MetacelloRepository' ];
                yourself.
            spec
                package: 'Metacello-ProfStef'
                    with: [ spec requires: #('Metacello-Core' 'ProfStef' 'Metacello-ToolBox') ];
                package: 'Metacello-TestsProfStef' with: [ spec requires: #('Metacello-ProfStef') ];
                package: 'Metacello-Platform' with: 'Metacello-Platform.pharo';
                yourself.
            spec
                group: 'Tests' with: #('Metacello-TestsProfStef');
                group: 'Tutorial' with: #('Metacello-ProfStef');
                yourself ].
    spec
        for: #'pharo1.2.x'
        do: [ 
            spec
                package: 'Metacello-TestsMC' with: [ spec includes: #('Metacello-Issue3758') ];
                package: 'Metacello-Issue3758' with: [ spec requires: #('Metacello-TestsMC') ];
                yourself ].
    spec
        for: #'pharo1.3.x'
        do: [ 
            spec
                package: 'Metacello-TestsMC' with: [ spec includes: #('Metacello-Issue3758') ];
                package: 'Metacello-Issue3758' with: [ spec requires: #('Metacello-TestsMC') ];
                yourself ].
    spec
        for: #'squeak'
        do: [ 
            spec
                package: 'Metacello-Platform' with: 'Metacello-Platform.squeak';
                yourself ].
    spec
        for: #'gemstone'
        do: [ 
            spec
                project: 'GsMonticello'
                    with: [ 
                            spec
                                className: 'ConfigurationOfGsMonticello';
                                versionString: '0.242';
                                repository: 'http://seaside.gemstone.com/ss/MetacelloRepository' ];
                project: 'OmniBrowser'
                    with: [ 
                            spec
                                className: 'ConfigurationOfGsOB';
                                versionString: #'stable';
                                repository: 'http://seaside.gemstone.com/ss/MetacelloRepository' ];
                yourself.
            spec
                package: 'Metacello-MC' with: [ spec preLoadDoIt: #'gemstone10beta24PreLoadDoIt' ];
                package: 'Metacello-Platform'
                    with: [ 
                            spec
                                file: 'Metacello-Platform.gemstone';
                                postLoadDoIt: #'gemstone10beta311PostLoadDoIt';
                                requires: 'GsMonticello' ];
                package: 'Metacello-TestsPlatform'
                    with: [ 
                            spec
                                requires: #('Metacello-Platform');
                                file: 'Metacello-TestsPlatform.gemstone' ];
                package: 'OB-Metacello' with: [ spec requires: #('OmniBrowser') ];
                yourself.
            spec
                group: 'Tests' with: #('Metacello-TestsPlatform');
                yourself ]
].
