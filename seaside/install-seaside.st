Gofer new
  url:'http://www.smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
  package: 'ConfigurationOfSeaside3';
  load.
((Smalltalk at: #ConfigurationOfSeaside3) project version: #stable) load.


"prepare for deployment: remove default applications and debug toolbar"
WAAdmin applicationDefaults removeParent: WADevelopmentConfiguration instance.
WADispatcher default handlers keys do:[:name | WAAdmin unregister:name].

Smalltalk snapshot: true andQuit: true.
