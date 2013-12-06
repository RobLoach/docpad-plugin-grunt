# Export Plugin
module.exports = (BasePlugin) ->
  # Define Plugin
  class GruntPlugin extends BasePlugin
    # Name
    name: 'grunt'

    # Configuration
    config:
      writeAfter: []
      writeBefore: false
      renderBefore: false
      renderAfter: false
      generateBefore: false
      generateAfter: false

    # Constructor
    constructor: ->
      # Prepare
      super

      # Dependencies
      @safeps = require('safeps')
      @path = require('path')
      @glob = require('glob')

      # Chain
      @

    writeBefore: (opts, next) ->
      if tasks = @getConfig().writeBefore or false
        @processGrunt(tasks, opts, next)
      else
        return next()
      @

    writeAfter: (opts, next) ->
      if tasks = @getConfig().writeAfter or false
        @processGrunt(tasks, opts, next)
      else
        return next()
      @

    renderBefore: (opts, next) ->
      if tasks = @getConfig().renderBefore or false
        @processGrunt(tasks, opts, next)
      else
        return next()
      @

    renderAfter: (opts, next) ->
      if tasks = @getConfig().renderAfter or false
        @processGrunt(tasks, opts, next)
      else
        return next()
      @

    generateBefore: (opts, next) ->
      if tasks = @getConfig().generateBefore or false
        @processGrunt(tasks, opts, next)
      else
        return next()
      @

    generateAfter: (opts, next) ->
      if tasks = @getConfig().generateAfter or false
        @processGrunt(tasks, opts, next)
      else
        return next()
      @

    # Process the Grunt tasks.
    processGrunt: (tasks, opts, next) ->
      # Prepare
      rootPath = @docpad.getConfig().rootPath

      # Find the Grunt path
      files = @glob.sync '**/grunt-cli/bin/grunt',
        cwd: rootPath
        nosort: true

      # Check whether or not the file was found
      if gruntPath = files[0] or false
        # Construct the command line arguments for Grunt
        command = [@path.join rootPath, gruntPath]
        command.push task for task in tasks or []

        # Execute
        @safeps.spawn(command, {cwd: rootPath, output: true}, next)

      else
        err = new Error('Could not find the Grunt command line interface.')
        return next(err); err

      # Chain
      @
