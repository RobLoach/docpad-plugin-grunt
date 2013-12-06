# [Grunt](http://gruntjs.com) Plugin for [DocPad](http://docpad.org)

[![Build Status](https://secure.travis-ci.org/RobLoach/docpad-plugin-grunt.png?branch=master)](http://travis-ci.org/RobLoach/docpad-plugin-grunt "Check this project's build status on TravisCI")
[![NPM version](https://badge.fury.io/js/docpad-plugin-grunt.png)](http://badge.fury.io/js/docpad-plugin-grunt "View this project on NPM")
[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/RobLoach/docpad-plugin-grunt/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

Run [Grunt](http://gruntjs.com) tasks when building with [DocPad](https://docpad.org).


## Install

```bash
$ docpad install grunt
```


## Configure

By default, the plugin will run the `default` tasks associated with Grunt during
the [writeAfter](http://docpad.org/docs/events#writeafter) event with DocPad.
This is equivilant to adding the following configuration to your [DocPad
configuration file](http://docpad.org/docs/config):

```coffeescript
  plugins:
    grunt:
      writeAfter: []
      writeBefore: false
      renderBefore: false
      renderAfter: false
      generateBefore: false
      generateAfter: false
```

The following will run the `"cssmin"` and `"uglify"` tasks from Grunt during the
[generateAfter](http://docpad.org/docs/events#generateafter) event:

```coffeescript
  plugins:
    grunt:
      writeAfter: false
      generateAfter: ["cssmin", "uglify"]
```


## History
[You can discover the history inside the `HISTORY.md` file](https://github.com/robloach/docpad-plugin-grunt/blob/master/HISTORY.md#files)


## Contributing
[You can discover the contributing instructions inside the `CONTRIBUTING.md` file](https://github.com/robloach/docpad-plugin-grunt/blob/master/CONTRIBUTING.md#files)


## License
Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT License](http://creativecommons.org/licenses/MIT/)
<br/>Copyright &copy; 2013 [Rob Loach](http://robloach.net)
