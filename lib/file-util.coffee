_ = require 'underscore-plus'
{Directory} = require 'atom'
fs = require 'fs-plus'
Path = require 'path'



module.exports =

  getRealPath: (testPath) ->
    (new Directory(testPath)).getRealPathSync()

  findActiveThemeVariables: (themeRootFolder, themeVariableFileName) ->
    themeRootFolderReal = @getRealPath(themeRootFolder)

    if fs.isDirectorySync(themeRootFolderReal)
      themeFilePath = Path.win32.join(themeRootFolderReal, 'lib', themeVariableFileName)

      if fs.isFileSync(themeFilePath)
        return  Path.relative(__dirname, themeFilePath)

    return ''

  findVariables: (rootFolder, variableFileName) ->
    if rootFolder != __dirname
      variableFileName = 'lib/' + variableFileName

    rootFolderReal = @getRealPath(rootFolder)

    if fs.isDirectorySync(rootFolderReal)
      filePath = Path.win32.join(rootFolderReal, variableFileName)

      if fs.isFileSync(filePath)
        filePath = Path.relative(__dirname, filePath)

        if filePath == variableFileName
          filePath = './' + filePath

        return  filePath

    return ''
