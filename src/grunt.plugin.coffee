# Export Plugin
module.exports = (BasePlugin) ->
  # Define Plugin
  class GruntPlugin extends BasePlugin
    # Name
    name: 'grunt'

    # Configuration
    config:
      gruntTasks: []

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

    # Write After
    writeAfter: (opts, next) ->
      # Prepare
      config = @getConfig()
      rootPath = @docpad.getConfig().rootPath

      # Find the Grunt path
      files = @glob.sync '**/grunt-cli/bin/grunt',
        cwd: rootPath
        nosort: true

      # Check whether or not the file was found
      if gruntPath = files[0] or false
        # Construct the command line arguments for Grunt
        command = [@path.join rootPath, gruntPath]
        command.push task for task in config.gruntTasks or []

        # Execute
        @safeps.spawn(command, {cwd: rootPath, output: true}, next)

      else
        err = new Error('Could not find the Grunt command line interface.')
        return next(err); err

      # Chain
      @
