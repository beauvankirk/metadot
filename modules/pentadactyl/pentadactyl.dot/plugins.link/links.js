/**
 * Links plugin.
 */

"use strict";

XML.ignoreWhitespace = false;
XML.prettyPrinting   = false;

/* use strict */
var INFO =
["plugin",  { name:    "links",
              version: "0.1",
              href:    "http://dactyl.sf.net/pentadactyl/plugins#links-plugin",
              summary: "Scuttle published",
              xmlns:   "dactyl" },
["author",  { email:   "rhatto@riseup.net" }, "Silvio Rhatto"],
["license", { href:    "http://opensource.org/licenses/mit-license.php" }, "MIT"],
["project", { name:    "Pentadactyl", "min-version": "1.0" }],
    ["p", {},
        "This plugin provides a shortcut command to publish a link to a Scuttle site."],
    ["item", {},
        ["tags", {}, ":link"],
        ["strut"],
        ["spec", {}, ":link"],
        ["description", {},
            ["p", {},
                "Add the current page into the Scuttle site."
                ]]]];

group.commands.add(["link"],
    "Add link to scuttle",
    function (args) {
      var instance = 'https://links.sarava.org/bookmarks?action=add&address=';
      var doc      = content.document;
      var href     = encodeURIComponent(doc.location.href);
      var title    = encodeURIComponent(doc.title);
      var desc     = encodeURIComponent(doc.getSelection());
      var tags     = encodeURIComponent(args.toString().replace(/,,/g, ','));
      commands.execute('tabopen ' + instance + href + '&title=' + title + '&description=' + desc + '&tags=' + tags);
    },
    { argCount: "*" }, true);
