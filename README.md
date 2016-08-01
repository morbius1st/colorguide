# colorguide package

A package to display a guide of the colors used by UI and Syntax themes

![Sceenshot](https://cloud.githubusercontent.com/assets/17919240/17274519/e8c376fa-5699-11e6-9f21-aab794e32a23.png?raw=true)

![Sceenshot](https://cloud.githubusercontent.com/assets/17919240/17274538/e64c6db8-569a-11e6-817a-0246ff104287.png?raw=true)

## Notes

Firstly, please forgive me if I do anything wrong - this package is full of firsts - I've not written HTML / CSS / Less / Coffee before and, of course, not written a package for Atom before.

Colorguide will display the "final" values of the **custom** colors and **custom** color variables used by a theme - UI and Syntax.  

Unfortunately, in order to do this, I must add files into the theme and modify one file.  This is nesessary in order to obtain the actual values assigned to each variable.

## Invocation
<kbd>ctrl-alt-o<kbd>

## Configuration

Colorguide comes with configuration files for several of the popular themes:
- UI: Atom Material, Isotope, Nucleus Dark, and Seti
- Syntax: Atom Material, Atom Monokai, Fizzy, Gl-dark, Monokai, and Seti

Colorguide will display the colors values of Atom's required / Official UI and Syntax Variables even if the colorguide configuration files are not added to a theme.

I did not make configuration files for Atom's the out-of-the-box themes because:
- they do not exist in the packages folder
- they have only a few custom colors and color variables

### Configure A theme

This is an example of how to configure the seti-ui theme:

- copy the folder `colorguide/examples/seti-ui/lib/colorguide` into `seti-ui/lib/colorguide`
- copy the folder `colorguide/examples/seti-ui/styles/colorguide` into `seti-ui/styles/colorguide`
- add the two import statement into `ui-variables.less` per the file `colorguide/examples/seti-ui/styles/add to ui-variables.less.txt`
- restart or reload Atom - and, of course, make sure that `seti-ui` is the ui theme

### Color Bar Modifications

![Sceenshot](https://cloud.githubusercontent.com/assets/17919240/17276989/d02f093a-56ec-11e6-9fa8-8ab3e7a6a2ec.png?raw=true)

The background color of the four color bars are set by default to:
- Top:          #ffffff    (<span style="background-color:#ffffff; color:black">white</span>)
- Middle-top:    #808080 (<span style="background-color:#808080; color:white">gray</span>)
- Middle-bottom: #000000 (<span style="background-color:black; color:white">black</span>)
- Bottom: the editor background color.

The first three background colors can be changed individually for each variable.  In the `.coffee` files, modify a `new cgVarColor()` object definition to include additional parameter(s):

```javascript
new cgVarColor(idx, group, category, name, desc, 'top color', 'mid-top color', 'mid-bottom color')
```

For example, to change the background color of the top color bar for `text-color-success` shown above, modify the line in the file
`colorguide/lib/cg-variables-ui-required.coffee` like this:

```javascript
new cgVarColor(0.060, g.GRPur1.key, c.CATur1.key, 'text-color-success', 'General Text Color - Success (Green)', '#000080')
```

Which produces:

![Sceenshot](https://cloud.githubusercontent.com/assets/17919240/17277240/c1a633c4-56f2-11e6-92e5-169c3d8eca44.png?raw=true)

## For New themes

This is not very complex but will take too long to explain.  There are template configuration files in the examples folder:
- `examples/--syntax`  - for syntax themes
- `examples/--ui`      - for ui themes

Basically, copy the folders into the correct folder for the theme (make the `lib` folder if needed) and edit them.  There are notes in the template files that help understand how to edit them.  The important thing to remember is that there must be a 1 to 1 correspondence between the class definitions in the `less` file and the matching `coffee` file.

## Future Enhancements

Depending on interest, I may add a search function that will help find where a variable is located in the charts.
