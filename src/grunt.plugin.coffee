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

      # Chain
      @

    # Write After
    # Run Grunt after DocPad generation
    writeAfter: (opts, next) ->
      # Prepare
      config = @getConfig()
      rootPath = @docpad.getConfig().rootPath
      gruntPath = @path.join(rootPath, 'node_modules', '.bin', 'grunt')
      command = [gruntPath]
      command.push task for task in config.gruntTasks or []

      # Execute
      @safeps.spawn(command, {cwd: rootPath, output: true}, next)

      # Chain
      @
