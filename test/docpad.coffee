# Test DocPad exports
module.exports = {
  templateData:
    site:
      title: "Grunt Plugin for DocPad"

  plugins:
    # By default, it uses "concat", but we will use "copy" instead.
    grunt:
      gruntTasks: ["copy"]
}
