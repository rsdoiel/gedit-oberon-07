
Gedit, Oberon-07 Syntax Highlighting
===================================

This is a set of files to provide Oberon-07 syntax highlighting in
gedit (v3).  It is inspired by work done by Mike Spivey of Oriel College, 
Oxford[^1] and based on Gnome/GTK documentation.

+ https://developer.gnome.org/gtksourceview/stable/lang-tutorial.html
+ https://developer.gnome.org/gtksourceview/stable/lang-reference.html


Installation
------------

Which GTK Source view package used in compiling your GEdit
effects the path for where we install our customizations. The
example below assumes `gtksourceview-4`. 

NOTE: On Raspberry Pi OS (Debian 10, Buster) the GTK Source View 
package is version 3. GEdit didn't pickup the installation in
`$HOME/.local/share/gtksourceview-3/language-specs/` so I had
to manually copy it to `/usr/share/gtksourceview-3/language-specs/` to
be available in the editor.

~~~

    git clone https://github.com/rsdoiel/gedit-Oberon-07
    cd gedit-Oberon-07
    mkdir -p $HOME/.local/share/gtksourceview-4/language-specs
    cp Oberon-07.lang $HOME/.local/share/gtksourceview-4/language-specs/
    mkdir -p $HOME/.local/share/mime/packages
    cp overrides.xml $HOME/.local/share/mime/packages/

~~~


[^1]: See [Spivey's Corner](http://spivey.oriel.ox.ac.uk/corner/Syntax_highlighting_of_Oberon_code_(Imperative_Programming\))
