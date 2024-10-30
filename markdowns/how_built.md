[//]: # (Want to find a markdown compiler that doesn't preserve newlines)

## How was this website built?

I used the [Publish](https://github.com/JohnSundell/Publish) 
library to generate this website.
The way it works is pretty simple:
I write the content for my pages in 
[markdown](https://www.markdownguide.org/),
and do a bit of simple coding in Swift,
a general-purpose programming language 
designed by Apple. 
Then, Publish generates all of the HTML files
(and other website nonsense) and I'm left
with a working website. 

This approach takes a little bit of work
(it took me about X weeks working Y-Z
hours per week),
and it helps to know a bit about programming,
but there are some nice advantages:
  * There is no javascript, so the end website
    is super fast and works much better on a
    slow connection.
  * Once the layout is done, I can update the
    website really quickly by changing one of
    the markdown files
  * I have full control over the layout and 
    appearence of my website, without relying
    on themes/templates as with (for example)
    WordPress.

I would definitely recommend this approach
to anyone who is comfortable with general-
purpose programming! 
Also, if Swift isn't your language, you
may want to check out 
[Jekyll](https://jekyllrb.com/)
(Ruby) or 
[Hugo](https://gohugo.io/)
(Go).

<!--
## How was this website built?

I used the [Publish](https://github.com/JohnSundell/Publish) library to generate this website. The way it works is pretty simple: I write the content for my pages in [markdown](https://www.markdownguide.org/), and do a bit of simple coding in Swift, a general-purpose programming language designed by Apple. Then, Publish generates all of the HTML files (and other website nonsense) and I'm left with a working website. 

This approach takes a little bit of work (it took me about X weeks working Y-Z 
hours per week), and it helps to know a bit about programming, but there are some nice advantages:
  * There is no javascript, so the end website is super fast and works much better on a slow connection.
  * Once the layout is done, I can update the website really quickly by changing one of the markdown files
  * I have full control over the layout and appearence of my website, without relying on themes/templates as with (for example) WordPress.

I would definitely recommend this approach to anyone who is comfortable with general-purpose programming! Also, if Swift isn't your language, you may want to check out [Jekyll](https://jekyllrb.com/) (Ruby) or [Hugo](https://gohugo.io/) (Go).
-->
