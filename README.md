# [Grunt](http://gruntjs.com) Plugin for [DocPad](http://docpad.org)

<!-- BADGES/ -->

[![Build Status](https://secure.travis-ci.org/RobLoach/docpad-plugin-grunt.png?branch=master)](http://travis-ci.org/RobLoach/docpad-plugin-grunt "Check this project's build status on TravisCI")
[![NPM version](https://badge.fury.io/js/docpad-plugin-grunt.png)](http://badge.fury.io/js/docpad-plugin-grunt "View this project on NPM")
[![Gittip button](http://img.shields.io/gittip/RobLoach.png)](https://www.gittip.com/RobLoach/ "Support this project using Gittip")
[![Flattr button](http://img.shields.io/flattr/donate.png?color=yellow)](http://flattr.com/thing/2257574/RobLoach "Support this project using Flattr")
[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/RobLoach/docpad-plugin-grunt/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

<!-- /BADGES -->


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
```

The following will run the `"cssmin"` and `"uglify"` tasks from Grunt during the
[generateAfter](http://docpad.org/docs/events#generateafter) event:

```coffeescript
  plugins:
    grunt:
      writeAfter: false
      generateAfter: ["cssmin", "uglify"]
```


<!-- HISTORY/ -->

## History
[You can discover the history inside the `HISTORY.md` file](https://github.com/robloach/docpad-plugin-grunt/blob/master/HISTORY.md#files)

<!-- /HISTORY -->


<!-- CONTRIBUTE/ -->

## Contributing
[You can discover the contributing instructions inside the `CONTRIBUTING.md` file](https://github.com/robloach/docpad-plugin-grunt/blob/master/CONTRIBUTING.md#files)

<!-- /CONTRIBUTE -->


<!-- BACKERS/ -->

## Backers

### Maintainers

These amazing people are maintaining this project:

- Rob Loach (https://github.com/robloach)

### Contributors

These amazing people have contributed code to this project:

- Rob Loach (https://github.com/robloach) - [view contributions](https://github.com/robloach/docpad-plugin-grunt/commits?author=RobLoach)
- Eric Vantillard (https://github.com/evantill) - [view contributions](https://github.com/robloach/docpad-plugin-grunt/commits?author=evantill)

[Become a contributor!](https://github.com/robloach/docpad-plugin-grunt/blob/master/CONTRIBUTING.md#files)

<!-- /BACKERS -->


<!-- LICENSE/ -->

## License
Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT License](http://creativecommons.org/licenses/MIT/)

Copyright &copy; 2013 [Rob Loach](http://robloach.net)

<!-- /LICENSE -->
