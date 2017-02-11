# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

# Set UI Size
UIFixedSize = 13
document.documentElement.style.fontSize = UIFixedSize + 'px'

# Dinamically change UI size (ctrl+, ctrl-)
UIFontSize = 12
atom.commands.add 'atom-workspace',
  'ui:increase-font-size': ->
    UIFontSize += 1
    document.documentElement.style.fontSize = UIFontSize + 'px'
  'ui:decrease-font-size': ->
    UIFontSize -= 1
    document.documentElement.style.fontSize = UIFontSize + 'px'
