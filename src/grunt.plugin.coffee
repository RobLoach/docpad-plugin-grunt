# Export Plugin
module.exports = (BasePlugin) ->
  # Define Plugin
  class GruntPlugin extends BasePlugin
    # Name
    name: 'grunt'

    # Configuration
    config:
      gruntOptions:
        afterWrite: ''

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
			# Prepare
			safeps = require('safeps')
			pathUtil = require('path')
			docpad = @docpad
			rootPath = docpad.getConfig().rootPath
			gruntPath = pathUtil.join(rootPath, 'node_modules', '.bin', 'grunt')
	
			# Perform the grunt `min` task
			# https://github.com/gruntjs/grunt/blob/0.3-stable/docs/task_min.md
			command = [gruntPath]
			
			# Execute
			safeps.spawn(command, {cwd:rootPath,output:true}, next)
	
			# Chain
			@
