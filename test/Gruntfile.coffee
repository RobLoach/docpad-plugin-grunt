module.exports = (grunt) ->

  grunt.initConfig
    # Simply copy test.html to test.copy.html
    copy:
      test:
        src: "out/test.html"
        dest: "out/test.copy.html"

  grunt.loadNpmTasks "grunt-contrib-copy"

  grunt.registerTask "default", ["copy"]
