# Export Plugin
module.exports = (BasePlugin) ->
  # Define Plugin
  class GruntPlugin extends BasePlugin
    # Name
    name: 'grunt'

    # Configuration
    config:
      writeAfter: []

    createEventHandlers: (docpad) ->
      for eventName in docpad.getEvents()
        @[eventName] = (opts, next) =>
          if tasks = @getConfig()[eventName] or false
            @processGrunt(tasks, opts, next)
          else
            return next()
          @
      @

    # Constructor
    constructor: (opts)->
      # create eventHandlers
      {docpad} = opts
      @createEventHandlers(docpad)

      # Prepare
      super

      # Dependencies
      @safeps = require('safeps')
      @path = require('path')
      @glob = require('glob')

      # Chain
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
