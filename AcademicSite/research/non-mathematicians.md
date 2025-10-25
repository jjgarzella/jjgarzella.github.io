@def title = "For Non-Mathematicians"

# About my research, for non-mathematicians

My work broadly falls under the category of *basic research* (sometimes *basic science*
or *basic mathematics*).

### What is basic research?

Essentially, basic research is when you try to understand something just for the sake of figuring it
out, without thinking too hard about any of the practical applications. So "understanding the
chemical reactions that happen in cells" is basic research, while "making a new medical device" is
not. 

The people that tend to do basic research tend to be the ones who are motivated by "the joy of
discovery" or "the beauty of math/science" and so on. This tends to be even more true about my
field, pure mathematics, which pretty far away from most applications. I'm no exception, I do my
research motivated purely by beauty. In fact, there are many people who join my field precisely *because* they think it has no practical applications. So you might be asking

### Isn't this all a big waste of money? Why would anyone pay people to do basic research?

Well, let's think about number theory, which is one of my areas of research.
Number theorist study, well, numbers, but mostly we tend to study *prime numbers*--
numbers that don't factor into a product of two other numbers 
($7$ is a prime number, $6 = 2 \cdot 3$ is not).

Here's an example of something you might get asked if you were a number theorist.
First, I'll tell you some gargantuan number like $34,534,943,779,597,906,100,370$.
I'll let you know that I got this number by multiplying two prime numbers
that roughly have the same number of digits.
Can you tell me what those two numbers are?
In other words, can you factor big numbers into prime factors?

It may seem a bit useless, and indeed for over 2000 years, people thought that
number theory as a whole subject was completely useless.
Some mathematicians have even [bragged](https://en.wikipedia.org/wiki/A_Mathematician's_Apology)
about how useless number theory is. 
But in the 1970's, Clifford Cocks, a mathematician at the British equivalent to the NSA, 
found a use for the problem in the previous paragraph.
Basically, it's a way of encoding secret messages. If you can find the two
prime numbers that multiply to the big number, then you can decode the message.

Cocks' idea, which is called *RSA* (named for the people who publically discovered it)
is now the foundation of modern computer security. 
Dear reader, your internet connection, the one that you're using to read this webpage,
was secured by RSA or one of its variants.
And if you could just solve the factoring problem (for numbers that are 1000 digits long),
then you could hack into just about anything. 

So apparently number theory isn't so useless.

### Another story

One of the great unsolved problems of our time is "why does machine learing work so well?"
There are many candidates for a theory of learning, but none of them have quite explained
the huge advances in AI yet.
One candidate for this theory is called *singular learning theory*, pioneered by Japanese 
mathematician [Sumio Watanabe](https://sites.google.com/view/sumiowatanabe/home?authuser=0).
Now, at some point, Watanabe needed to know about a topic in pure math,
which goes by the technical term "real log canonical thresholds". 
Now, I know, listening to someone jabber on about "real log canonical thresholds" or whatever is 
probably a cure for insomnia. 
Don't worry, I'm not going to get into any technicalities.
It really doesn't matter what "real log canonical thresholds" actually are. 
Just that Watanabe needed to know about them. 

Luckily for Watanabe, he could just ask [Morihiko Saito](https://en.wikipedia.org/wiki/Morihiko_Saito).
Saito is a pretty famous mathematician who is quite well-respected in 
pure math social circles.
In fact, a few of the topics mentioned in my 
[description of my research for mathematicians](../mathematicians) were pioneered by Saito.[^1]
Anyways, Watanabe asked Saito his questions, and the result was 
[this paper](https://arxiv.org/abs/0707.2308).
I don't know much about singular learning theory, but I'm pretty sure that some of the things
defined in the paper are central to the theory.

Will singular learning theory tell us why AI works? 
Who knows, but if it tells us anything at all, it wouldn't have been possible without Saito's
research.
This brings in to focus one of the real purposes of basic research:

> The real output of basic research isn't the research itself, it's the **expertise** of the 
> researcher.

Note that "real log canonical thresholds" weren't a thing before Saito, if you look closely he
actually *defines* them in his paper.
What Watanabe really needed wasn't Saito's previous research, but his expertise.

### The pattern

The previous two examples aren't the only instances of the pattern: first, people do research
to learn about something for its own sake.
Then, later, when someone who does care about applications comes across a problem they
can't solve, they go ask the person who does basic research, and often they can get
their question answered.

It turns out, there is great power in doing something for its own sake. 

That's why universities and governments pay so much money for academic types who might not even
care if their research gets used.
In research areas like biology and chemistry, where advances in basic research tend to quickly
lead to new medications that can save lives, those same universities and governments pay a lot
more.
But even in pure math, this happens often enough that it's worth it to fund research.

### The connection to my own research

I'd now like to speculate on how my own research might connect to a story like this.
My research area was pioneered by 
[Alexander Grothendieck](https://en.wikipedia.org/wiki/Alexander_Grothendieck), 
a french mathematician who made important contributions to the theory of geometry.
Now, Grothendieck's ideas are very powerful and have led to resolutions of many
open problems in pure math, but have a reputation for being useless for practical applications.
Part of the issue is that these ideas work really when you allow imaginary numbers,[^2] but not so much
with just real numbers.

Recently, though, there has been a breakthrough. 
Clausen and Scholze have figured out a way to take Grothendieck's ideas and adapt them to a more
general context--one that includes geometry over the real numbers.
These ideas are some of the ones that I use in my own research, though I have not yet touched the
real numbers.
Honestly, the connections between Clausen and Scholze's research and geometry over the real
numbers is pretty unexplored--you should expect to see lots of progress over the next ten years.
In a few years, it's quite possible that some problem in data science or physics might
need to use the Clausen-Scholze approach to Grothendieck's style of geometry.[^3]
At that point, it'll be the people in my area and closely related areas who will be experts
that can answer questions about for the people who need them for applications.
Who knows? Maybe I'll even be one of those experts myself.
In the meantime, I'll continue pursue beauty, and we'll see what happens.







[^1]: If you are a college student in a math major, I have a challenge for you: Saito has made fundamental contributions to at least two things in the big list towards the end. Which ones?

[^2]: Also, his ideas work with more scuffed kinds of number systems like *numbers modulo $p$* or *$p$-adic numbers*. But not so well with the real numbers for some reason.

[^3]: Honestly, this probably would have been against Grothendieck's own wishes. He was a radical pacifist, and retired from academic life when he realized his institute was funded by the military. He once gave math lectures in Vietnam next to a city that was being bombed in protest of the Vietnam war. 
