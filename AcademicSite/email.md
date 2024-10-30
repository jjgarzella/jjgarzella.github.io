@def title = "Emails and Bots"


Email: jgarzellaucsd.edu but replace the "a" with an "@"

### Why don't you just put my email on your website so I can click on it and/or copy-paste it?


[Email-harvesting](https://en.wikipedia.org/wiki/Email-address_harvesting)
bots roam the web, looking for email addresses of real people
(probably so the bot owners can send lots of spam emails). 
Changing one's email in a human-readable way is quite
common in academic websites.
The fancy word for this is [address munging](https://en.wikipedia.org/wiki/Address_munging).

What follows is a short demonstration of why it works:

### How to make a simple email bot

You can make your own email bot! 
All the knowledge
you need is contained in [Automate the Boring Stuff with Python](https://automatetheboringstuff.com/).

Here's what you need to do:

0. Learn the Basics of Python (Chapters 1-6).
1. Learn about [Regular Expressions](https://en.wikipedia.org/wiki/Regular_expression),
   and write one that matches valid email addresses (Chapter 7).
2. Write a [web scraper](https://en.wikipedia.org/wiki/Web_scraping)
   using [Beatiful Soup](https://realpython.com/beautiful-soup-web-scraper-python/)
   that searches through web pages looking for emails (Chapter 12).
3. Use an email sending module (Chapter 18) to send any email you want 
   to the web addresses you found!

Now, you have a bot that, given a web page, searches for correctly formatted email address
like "johndoe@example.com"
and can send messages to those addresses.

### Fighting the bots

Ok, now let's try to modify the bot to scrape academic websites for
emails.

First, modify the bot to serach for both valid email addresses
and emails that are formatted like my email.

Now, make the bot search for email addresses formatted correctly, 
like mine, 
and like [Sam Spiro's](http://www.math.ucsd.edu/~sspiro/).

Now, make the bot search for email addresses formatted correctly, 
like mine, 
like [Sam Spiro's](http://www.math.ucsd.edu/~sspiro/),
and like [Aaron Bertram's](https://www.math.utah.edu/~bertram/).

Now, make the bot search for email addresses formatted correctly, 
like mine, 
like [Sam Spiro's](http://www.math.ucsd.edu/~sspiro/),
like [Aaron Bertram's](https://www.math.utah.edu/~bertram/),
and like [Jennifer Balakrishnan's](http://math.bu.edu/people/jbala/).

Now, make the bot search for email addresses formatted correctly, 
like mine, 
like [Sam Spiro's](http://www.math.ucsd.edu/~sspiro/),
like [Aaron Bertram's](https://www.math.utah.edu/~bertram/),
like [Jennifer Balakrishnan's](http://math.bu.edu/people/jbala/),
and like [Chenyang Xu's](https://web.math.princeton.edu/~chenyang/).

...and hopefully at this point you see how hard it would be
to make a bot that just gets any researcher's email.

<!--
### A: Be unique.

If you take one look at the homepage of my website, it's pretty easy to see
what my email address is and use step 3 to send me spam. It might not even be too bad
to use steps 1 and 2 to get my address automatically. But if you try to write
a regular expression/web scraper combo that correctly gets my email AND a 
normally formatted email, you might find that it is a bit of a pain.

If you continue to another academic website, you'll likely find that their 
email is pretty easy to find, but it's formatted in yet a different way. 
Trying to make a web scraper that finds *any* email from *any* 
website is a MAJOR pain in the neck, and once you've done it, as soon as 
any person changes one thing your bot breaks.

Almost anything connected to the internet can be misused, given enough time.
Computer security consists of making "enough time" so long that nobody
bothers to do it.
-->
