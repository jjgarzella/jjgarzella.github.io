

### Q: Why don't I just put my email on my website so you can click on it?

Answer: Bots. 

It might seem a little paranoid to be afraid of bots, but they're 
not so hard to make. You can make one, and all the knowledge
you need is contained in [Automate the Boring Stuff with Python](https://automatetheboringstuff.com/).

Here's what you need to do:

0. Learn the Basics of Python (Chapters 1-6).
1. Learn about [Regular Expressions](https://en.wikipedia.org/wiki/Regular_expression),
   and write one that matches emails (Chapter 7).
2. Write a [web scraper](https://en.wikipedia.org/wiki/Web_scraping)
   using [Beatiful Soup](https://realpython.com/beautiful-soup-web-scraper-python/)
   that searches through web pages looking for emails (Chapter 12).
3. Use an email sending module (Chapter 18) to send any email you want 
   to the web addresses you found!

With slightly more sophisticated ideas (though the strategy is essentially the same),
a few people (say, 1-5 people) can send spam emails to literally tens of thousands.
 
### Q: How can one hope to protect oneself from the onslaught of automated spam?

Answer: Be a special snowflake.

If you take one look at the homepage of my website, it's pretty easy to see
what my email address is and use step 3 to send me spam. It's also not too bad
to use steps 1 and 2 to get my address automatically. But if you try to write
a regular expression/web scraper combo that correctly gets my email AND a 
normally formatted email, you might find that it is a bit of a pain.

If you continue to another academic website, you'll likely find that their 
email is pretty easy to find, but it's formatted in yet a different way. 
Trying to make a web scraper that finds *any* email from *any* academic
website is a MAJOR pain in the neck, and once you've done it, the second
any person changes their formatting you have to fix it.  

Almost anything connected to the internet can be misused, given enough time.
Computer security consists of making "enough time" so long that nobody
bothers to do it.
