
# Gedit, Oberon-7 Syntax Highlighting

This is a set of files to provide Oberon-7 syntax highlighting in
gedit (v3).  It is based on the work by Mike Spivey of Oxford[^spiveycorner].
Mike also has a nice Oberon compiler :-) as well as the documentation
on the GTK/Gnome site.

+ https://developer.gnome.org/gtksourceview/stable/lang-tutorial.html
+ https://developer.gnome.org/gtksourceview/stable/lang-reference.html

## Installation

```
    git clone git@github.com:rsdoiel/gedit-oberon
    mkdir -p $HOME/.local/share/gtksourceview-4/language-specs
    cp oberon-7.lang $HOME/.local/share/gtksource-view-4/language-specs/
    mkdir -p $HOME/.local/share/mime/packages
    cp overrides.xml $HOME/.local/share/mime/packages/
    mkdir -p $HOME/.local/share/gtksourceview-4/styles
    cp sober.xml $HOME/.local/share/gtksourceview-4/styles
```


[^spiveycorner]: See http://spivey.oriel.ox.ac.uk/corner/Syntax_highlighting_of_Oberon_code_(Imperative_Programming)
