Discount Markdown Processor for Ruby
====================================
[![Build Status](https://travis-ci.org/davidfstr/kramdown.svg?branch=master)](https://travis-ci.org/davidfstr/kramdown)
[![Build status](https://ci.appveyor.com/api/projects/status/47i0qxrnvjbg724f/branch/master?svg=true)](https://ci.appveyor.com/project/DavidFoster/kramdown/branch/master)

Discount is an implementation of John Gruber's Markdown markup language in C. It
implements all of the language described in [the markdown syntax document][1] and
passes the [Markdown 1.0 test suite][2].

CODE: `git clone git://github.com/davidfstr/kramdown.git`  
HOME: <http://dafoster.net/projects/kramdown/>  
DOCS: <http://rdoc.info/github/davidfstr/kramdown/master/kramdown>  
BUGS: <http://github.com/davidfstr/kramdown/issues>  

Discount was developed by [David Loren Parsons][3]. The Ruby extension
is maintained by [David Foster][4].

[1]: http://daringfireball.net/projects/markdown/syntax
[2]: http://daringfireball.net/projects/downloads/MarkdownTest_1.0.zip
[3]: http://www.pell.portland.or.us/~orc
[4]: https://github.com/davidfstr

INSTALL, HACKING
----------------

New releases of kramdown are published to [RubyGems][]:

    $ [sudo] gem install kramdown

The kramdown sources are available via Git:

    $ git clone git://github.com/davidfstr/kramdown.git
    $ cd kramdown
    $ rake --tasks

See the file [BUILDING][] for hacking instructions.

[RubyGems]: https://rubygems.org/gems/kramdown
[BUILDING]: https://github.com/davidfstr/kramdown/blob/master/BUILDING

USAGE
-----

kramdown implements the basic protocol popularized by RedCloth and adopted
by BlueCloth:

    require 'kramdown'
    markdown = kramdown.new("Hello World!")
    puts markdown.to_html

Additional processing options can be turned on when creating the
kramdown object:

    markdown = kramdown.new("Hello World!", :smart, :filter_html)

Inject kramdown into your BlueCloth-using code by replacing your bluecloth
require statements with the following:

    begin
      require 'kramdown'
      BlueCloth = kramdown
    rescue LoadError
      require 'bluecloth'
    end

COPYING
-------

Discount is free software;  it is released under a BSD-style license
that allows you to do as you wish with it as long as you don't attempt
to claim it as your own work. kramdown adopts Discount's license
verbatim. See the file `COPYING` for more information.

