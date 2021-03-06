# Export Plugin
module.exports = (BasePlugin) ->
  # Define Plugin
  class GruntPlugin extends BasePlugin
    # Name
    name: 'grunt'

    # Configuration
    config:
      warnOnError: false

    createEventHandlers: (docpad) ->
      # Retain the local scope to allow manipulation of DocPad events
      docpad.getEvents().forEach (eventName) =>
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
      docpad = @docpad
      config = @getConfig()
      rootPath = @docpad.getConfig().rootPath

      # Find the Grunt path
      files = @glob.sync '**/grunt-cli/bin/grunt',
        cwd: rootPath
        nosort: true

      # Check whether or not the file was found
      if gruntPath = files[0] or false
        # Construct the command line arguments for Grunt
        command = ['node', @path.join rootPath, gruntPath]
        command.push task for task in tasks or []

        # Execute
        @safeps.spawn command, {cwd: rootPath, output: true}, (err) ->
          if err
            if config.warnOnError
              docpad.log "warn", "Grunt Error: " + err.message
            else
              return next(err)
          return next()

      else
        err = new Error('Could not find the Grunt command line interface.')
        return next(err)

      # Chain
      @
