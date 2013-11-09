# Export Grunt configruation
module.exports = (grunt) ->

  grunt.initConfig
    # Copy: Simply copy test.html to test.copy.html.
    copy:
      test:
        src: "out/test.html"
        dest: "out/test.copy.html"

    # Concat: Concatinate a number of files together.
    concat:
      test:
        src: ["out/test.html", "docpad.coffee"]
        dest: "out/test.concat.html"

  # Load all available tasks.
  grunt.loadNpmTasks "grunt-contrib-copy"
  grunt.loadNpmTasks "grunt-contrib-concat"

  # Register the default task to "concat".
  grunt.registerTask "default", ["concat"]
