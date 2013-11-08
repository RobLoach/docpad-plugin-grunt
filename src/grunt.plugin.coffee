# Export Plugin
module.exports = (BasePlugin) ->
  # Define Plugin
  class GruntPlugin extends BasePlugin
    # Name
    name: 'grunt'

    config:
      gruntTasks: []

    # Constructor
    constructor: ->
      # Prepare
      super

      # Require HTML Minifier
      #@htmlmin = require('html-minifier').minify

      # Chain
      @

    # Write After
    # Run Grunt after DocPad generation
    writeAfter: (opts,next) ->
      # Dependencies
      safeps = require('safeps')
      path = require('path')
      fs = require('fs')

      # Prepare
      config = @getConfig()
      rootPath = @docpad.getConfig().rootPath
      gruntPath = path.join(rootPath, 'node_modules', '.bin', 'grunt')
      tasks = [gruntPath]
      for task in config.gruntTasks
        tasks.push task

      # Execute
      safeps.spawn(tasks, {cwd:rootPath,output:true}, next)

      # Chain
      @
