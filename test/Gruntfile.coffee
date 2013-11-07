module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")

    concat:
      options:
        banner: banner
      test:
        src: "src/files/components/build.js"
        dest: "src/files/components/build.min.js"

  grunt.loadNpmTasks "grunt-contrib-concat"

  grunt.registerTask "default", ["concat"]
