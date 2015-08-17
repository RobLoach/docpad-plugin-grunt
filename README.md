# [Grunt](http://gruntjs.com) Plugin for [DocPad](http://docpad.org)

<!-- BADGES/ -->

[![Build Status](https://img.shields.io/travis/RobLoach/docpad-plugin-grunt/master.svg)](http://travis-ci.org/RobLoach/docpad-plugin-grunt "Check this project's build status on TravisCI")
[![NPM version](https://img.shields.io/npm/v/docpad-plugin-grunt.svg)](https://npmjs.org/package/docpad-plugin-grunt "View this project on NPM")
[![NPM downloads](https://img.shields.io/npm/dm/docpad-plugin-grunt.svg)](https://npmjs.org/package/docpad-plugin-grunt "View this project on NPM")
[![Dependency Status](https://img.shields.io/david/RobLoach/docpad-plugin-grunt.svg)](https://david-dm.org/RobLoach/docpad-plugin-grunt)
[![Dev Dependency Status](https://img.shields.io/david/dev/RobLoach/docpad-plugin-grunt.svg)](https://david-dm.org/RobLoach/docpad-plugin-grunt#info=devDependencies)<br/>


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
The following can be used if you want the default tasks to run but just show
a warning if the Gruntfile fails and continue running.

```coffeescript
  plugins:
    grunt:
      warnOnError: true
```

<!-- HISTORY/ -->

## History
[Discover the change history by heading on over to the `HISTORY.md` file.](https://github.com/RobLoach/docpad-plugin-grunt/blob/master/HISTORY.md#files)

<!-- /HISTORY -->


<!-- CONTRIBUTE/ -->

## Contribute

[Discover how you can contribute by heading on over to the `CONTRIBUTING.md` file.](https://github.com/RobLoach/docpad-plugin-grunt/blob/master/CONTRIBUTING.md#files)

<!-- /CONTRIBUTE -->


<!-- BACKERS/ -->

## Backers

### Maintainers

These amazing people are maintaining this project:

- Rob Loach (http://robloach.net)

### Sponsors

No sponsors yet! Will you be the first?



### Contributors

These amazing people have contributed code to this project:

- [Eric Vantillard](https://github.com/evantill) — [view contributions](https://github.com/RobLoach/docpad-plugin-grunt/commits?author=evantill)
- [interpaul](https://github.com/interpaul) — [view contributions](https://github.com/RobLoach/docpad-plugin-grunt/commits?author=interpaul)
- [Jeff Turner](https://github.com/jtwebman) — [view contributions](https://github.com/RobLoach/docpad-plugin-grunt/commits?author=jtwebman)
- [RobLoach](https://github.com/RobLoach) — [view contributions](https://github.com/RobLoach/docpad-plugin-grunt/commits?author=RobLoach)

[Become a contributor!](https://github.com/RobLoach/docpad-plugin-grunt/blob/master/CONTRIBUTING.md#files)

<!-- /BACKERS -->


<!-- LICENSE/ -->

## License

Unless stated otherwise all works are:

- Copyright &copy; Rob Loach (http://robloach.net)

and licensed under:

- The incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT License](http://opensource.org/licenses/mit-license.php)

<!-- /LICENSE -->


