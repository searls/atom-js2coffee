js2coffee = require("js2coffee")

module.exports =
  js2coffeeView: null

  activate: (state) ->
    atom.workspaceView.command "js2coffee:convert", => @convert()

  convert: ->
    editor = atom.workspace.activePaneItem
    try
      editor.setText(js2coffee.build(editor.getText()))
    catch e
      console.error("It looks like this may not be valid JavaScript.")
