Radiant *Index Page* Extension
==============================

<table>
    <tr>
        <td>Author</td>
        <td>Benny Degezelle - <a href="http://www.gorilla-webdesign.be">Gorilla Webdesign</a></td>
    </tr>
    <tr>
        <td>Version</td>
        <td>0.1.0</td>
    </tr>
    <tr>
        <td>Contact:</td>
        <td>benny AT gorilla-webdesign DOT be</td>
    </tr>
</table>


About
-----

This is for indexes that have no content for themselve.

For example, a site may be structured like so to keep things organised and clean:

    /about
    /about/history
    /about/team
    /about/objective

Now it is very possible that there is no content for the 'index' page on /about.

With this extension you just make the page on /about an IndexPage, which will...

  * redirect your visitors to it's first published child (default setting)
  * renders the content of the first published child under the parent url

Settings
--------

Per default an index page redirects to it's first published child.

The above example with the default setting:

    /about           -> Redirect to /about/history and thus show history page
    /about/history   -> Show history page
    /about/team      -> Show team page
    /about/objective -> Show objective page

You can change this behaviour by setting the 'index.page' configuration to 'include'.

    Radiant::Config["index.page"] = 'include'

This renders the first published child under

  * its own url
  * under the url of its parent

The above example with the default setting:

    /about           -> Show history page
    /about/history   -> Show history page
    /about/team      -> Show team page
    /about/objective -> Show objective page

Contributors
------------

* [Michael Kessler](http://blog.netzpiraten.ch/)

Sponsors
--------

Some work has been kindly sponsored by:

* [Gorilla Webdesign](http://www.gorilla-webdesign.be)
* [Screen Concept](http://www.screenconcept.ch)

License
-------

This extension is released under the MIT license, see the [LICENSE](master/LICENSE) for more
information.