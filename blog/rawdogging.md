@def title = "An interesting trend in computer algebra"
@def rss_title = "An interesting trend in computer algebra"
@def rss_pubdate = Date(2026, 11, 2)
@def rss_description = "We explore the trend of people (and agents) choosing not to use computer algebra systems"
@def tags = ["code-heavy", "meta-math"]

# An interesting trend in computer algebra

Computer algebra is at a crossroads right now, with the advent of AI. However, to fully understand where we are, I think we need to turn the clock back and look at where we were right before AI started having a huge impact on mathematics research.

With that in mind, I want to talk about a curious trend I've seen in computer algebra, which started before the AI revolution, and has only accelerated since. That trend is...

## Rawdogging

For our purposes, "rawdogging" means writing mathematical software without the use of Sage, Oscar, Magma, Mathematica, or any other such computer algebra system. Among human programmers, pre-AI, the two big trends I've seen are (1) using Rust, which doesn't have a computer algebra system[^1], to do mathematical programming, and (2) using Python without using Sage. This trend spans from individual projects to larger collaborations like [sseq](https://github.com/SpectralSequences/sseq) and [cytools](https://cy.tools/) (the latter is notably written in Python and not Sage). The trend also includes both junior and senior mathematicians, and includes both beginner programmers and experts.

The obvious disadvantage of rawdogging in the pre-AI age is that you don't have access to all of the algorithms that would be pre-implemented by a computer algebra system. Firstly, this can lead to the mathematician reimplementing algorithms that are already included in the CAS, i.e. reinventing the wheel. That's a waste of time. Furthermore, a reimplemented algorithm might be using a naive implementation, which might make it very slow. That'll waste compute time. I have seen this pattern, including all the wasted time, happen multiple times in real research.

So if rawdogging has all these disadvantages, why do people do it?

Everyone has their unique reasons, but here are a few patterns I've seen in anecdotal conversations I've had:

1. Familiarity - often, mathemticians might have had prior coding experience in Python or Rust from their before-I-was-a-mathematician days. Installing and learning a new system can be daunting, but picking up an old one isn't so bad. I've even heard of people using stright-up Java for their mathematical code, because they took a Java class before and had some familiarity.
2. Accessibility - Python is everywhere and pretty easy to install, and people who have less experience with programming just aren't going to bother with things that are hard to install. This was especially true pre-AI. 
3. Industry applicability - Some mathematicians want to transition to industry, especially software engineering, after academia. In the pre-AI software world, which language(s) you had experiecne in mattered a lot for many jobs. Whether it was right or not, people wouldn't look at resumes which didn't have the exact language their shop uses. For matheamticians transitioning to industry, coding in a custom language like Macaulay2 or Magma is not very useful for their resume. Sage could probably be pitched as Python experience. Anecdotally, it seems like Rust was the canonical "I'm switching to industry, so I'll learn XXX" language before AI. Maybe it still is.
4. Excitement - people around the software engineering community are genuinely excited about Rust, in a way that people just aren't about most other programming langauges. 
5. Critiques of existing computer algebra systems - many computer algebra systems are famously not necessarily made with software engineering best practices. Many are monolithic. Many are slow at things they shouldn't be slow at. Many are closed-source. Many randomly lack functionality, reinvent the wheel, and commit various anti-patterns. Most if not all of them are very much biased towards the type of research that their creators do. It's very tempting to want to avoid that entirely and do your own thing.

## What's changed

The introduction of good AI coding agents has accelerated the trend of rawdogging in computer algebra, but the reasons have changed a lot.

First of all, some of peoples previous reasons for rawdogging are gone. Particularly in relation to "Familiarity" and "Accessibility"--if you ask the AI to code something in your preferred computer algebra system, it will do it just fine. This makes our CAS systems more accessible to newer users, just so long as they know the CAS exists. So for people who both know about computer algebra systems and want to use them, AI actually *increases* the chance of someone using a CAS.

On the other hand, there's a new reason to leave the CAS world: speed. AI systems are really, really good at making code go fast, and they're really good at using every bit of local hardware that's available. You have a computation that's taking a while? Maybe you have a Mac? Your coding agent is perfectly capable of writing custom [Metal](https://en.wikipedia.org/wiki/Metal_(API)) code that will optimize that bottleneck on your laptop's GPU. You know how many computer algebra systems have algorithms that can run on your Mac's GPU as of the time of this writing? Zero. Zilcho.

What concerns me most though is what happens if you take one step further in the "vibe" direction. If you just ask an AI to implement an algorithm, *without* specifying what language, the chance that it uses a computer algebra system will be slim. Most of the time it will re-implement whatever it needs in C++, C, or Python. For example, the code in the [vibe-mathed prime gaps papers](../twin_primes_saga) is all C/C++ and Python. 

As a not-very-scientific experiment, I gave a blank Opus 5.5 the prompt "I need to write a high performance algorithm that does exact computations. Recommend me a few options for a tech stack." and the first thing it recommended was C/C++ with GMP and FLINT, calling this setup the "gold standard". Let me tell you, for the majority of people working in computer algebra, they would definitely *not* say that C + GMP/FLINT is the gold standard. But you can't beat it on performance without writing something custom.

I think there's a pretty easy interpretation of this in terms of Steve Yegge's [software survival ratio](https://steve-yegge.medium.com/software-survival-3-0-97a2a6255f7b). FLINT saves cognition (and thus tokens/money/energy); it requires very little setup, it's a C library that does not require installing any tooling, and it's got fast, optimized algorithms that would be hard to synthesize from scratch. All of the mainstream computer algebra systems, including Magma, Sage, Oscar, Mathematica, and so on, have a noticable friction cost, they'll require installation, perhaps a license, and the algorithms are often slower than a synthesized C algorithm would be. 

The effect of this friction is that if anyone asks an AI to do a mathematical task, without specifically asking it to use a particular CAS, then it won't. 

In my opinion, that makes this trend a huge long-term concern for all traditional computer algebra systems.

## How do we respond?

The short answer is, I don't know. It might just be that the general-purpose computer algebra system will go the way of the dinosaur. Although I'm not so sure, and even if it does happen, I think it could take a while. 

One very easy, and IMO very high-impact thing that we can do is to improve C-call and interoperability functionality in all computer algebra systems. My dream wish list would be to have robust support for embedding OSCAR in C programs, adding C-call functionality to MAGMA, and improving the syntax and readability of "using Sage as a python package". As far as I can tell, all of these things are possible already or at least without too much effort, but I don't know if many people are trying them.

Another thing I wonder is if we can find some hope when we look at FLINT. FLINT is a library that was started by and still is maintained by academic mathematicians, but unlike the higher-level CAS's, agents love to use it. I wonder if we can find a lot of traction by making smaller, more self-contained, more optimized libraries that look more like FLINT than a general-purpose CAS.

[^1]: Rust technically has [Savage](https://github.com/p-e-w/savage), but it considers "research-level mathematics" to be a non-feature. Since research-level mathematics is the **only** thing that I care about in the context of this blog post, Savage doesn't count as a computer algebra system.
