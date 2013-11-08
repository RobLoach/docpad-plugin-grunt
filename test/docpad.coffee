module.exports = {
  templateData:
    site:
      title: "Grunt Plugin for DocPad"

  plugins:
    # Use only the copy task.
    grunt:
      gruntTasks: [
        "copy"
      ]
}
