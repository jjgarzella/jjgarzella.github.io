@def title = "Julia Stadlmann and bounded gaps between primes"
@def rss_title = "Julia Stadlmann and bounded gaps between primes"
@def rss_pubdate = Date(2026, 9, 21)
@def rss_description = "Telling the story of the recent progress towards the twin primes conjecture"
@def tags = ["math-heavy", "meta-math"]

# Julia Stadlmann and bounded gaps between primes

In this post, I will chronicle the story of some recent advances towards the [twin primes conjecture](https://en.wikipedia.org/wiki/Twin_prime#Twin_prime_conjecture). I believe this story is important because I think it gives us a glimpse into the future of what math research might look like in the age of AI. So after telling you the real story, I'll give a counterfactual story of what I imagine it might have been like in a world without AI. In both stories, Julia Stadlmann is the main character, because her ideas are key ingredients to all of the recent advances.

To set the context for our story, I want to introduce one bit of jargon. There is a condition in the literature called $\dhl{k,2}$. It does *not* matter what this means at all, for us $\dhl{k,2}$ is a black box. However, what you should know is that if $\dhl{k,2}$ holds, then there are infinitely many primes such that the gap between them is less than $H(k)$, where $H(k)$ is given by the [OEIS sequence A008407](https://oeis.org/A008407). 

For example, the Polymath project proved that $\dhl{50,2}$, showing that we have infinitely many bounded gaps of length 246. If someone ever can prove $\dhl{2,2}$, then the twin primes conjecture is true.

**Disclaimer:** I am not an expert in analytic number theory or in bounded gaps between primes. The perspective of this post is as a mathematician who is interested in the effect of AI on the pace of research. The information in this post all comes from my reading of informal expositions of the material (such as introductions) and discussing the results with AI chatbots. I take responsibility for any errors or imprecisions, and I welcome corrections from experts.

## The Real Life Story

**September 1, 2023:** Stadlmann releases her paper [On primes in arithmetic progressions and bounded gaps between many primes](https://arxiv.org/abs/2309.00425), which will henceforth be known to us as *Staldmann's EE paper* (EE is for **E**quidistribution **E**stimates). This makes an improvement to a key technical ingredient for proofs in the area, and is (as far as I can tell) the first advance in this class of problems in years.

This paper has a title based on it's main application, which is a related but different statement about gaps between **many** primes (not just two). An outside observer might suspect that these results have relevance to bounded gaps between primes, but it might not be obvious even to an expert. Or maybe it would be immediately obvious to an expert, as a non-expert myself I can't tell. Either way, one might suspect that Stadlmann herself had an idea of where this might go next. 

**August 31, 2026:** Stadlmann releases her paper [Bounded gaps between primes](https://arxiv.org/abs/2608.31126), which proves $\dhl{49,2}$ and thus gives the prime gap bound of 240 (i.e., there are infinitly pairs of primes with gap 240 or less). The proof is human-made, and gives an interesting and novel way to overcome one of the tradeoffs in the Polymath proof. It is the first improvement since Polymath, which also makes it significant. This paper likely belongs in a top 5 journal given that Stadlmann's EE paper was published in *Advances in Mathematics*, and this paper's title result is better. Could this be an Annals paper? As a non-expert, I can't quite tell, but the point is that it's a really good paper.

This paper will henceforth be referred to as *Stadlmann's main paper*, because it is central to the story. Do not confuse it with the EE paper 😊.

Stadlmann's main paper uses ideas from Stadlmann's EE paper in a crucial way, including adapting one of the equidistribution estimates arguments.

Finally, Stadlmann's main paper is clearly the start of something and not the end, because it admits in the introduction that with more computational resources the result could likely be improved.

**September 1, 2026:** Shiva Kintali, using AI with custom orchestration, releases an improvement which improves on Stadlmann's main paper slightly, proving $\dhl{48,2}$ and gives a prime gap bound of 236.

Despite not currently working in academia, Kintali is no crank--he has a PhD from Georgia Tech, and clearly has sufficient expertise to understand proofs in the area. However, has not previously worked on bounded gaps in primes, which would have made it exceedingly hard to write such a paper in the pre-AI age. The paper has an AI disclosure that describes the collaboration with AI, which in my opinion is compatible with the Leiden declaration.

The ideas in the paper aren't doing anything but using Stadlmann's ideas and being a bit more careful, and this is freely admitted on Kintali's website. So even if/when this gets published, it doesn't deserve to be in a top 5 journal or anything like that.

**September 3, 2026:** AxiomMath releases a preprint which improves Stadlmann's methods, proving $\dhl{45,2}$ and thus giving a prime bound gap of 212. This comes with an automatically generated Lean proof. Like Kintali, the main ideas are due to Stadlmann. They say they rely primarily on numerical computations and optimization.

There is no AI disclosure in this paper, so it's really not clear what role fronteir LLM agents played. The only thing that is mentioned is that AxiomMath's internal tool created the Lean proof.

**September 3, 2026:** Ingo Althofer writes on his "Math with AI diary" that he has used GPT to "milk" Stadlmann's argument into a proof of $\dhl{44,2}$, though as of this writing the linked preprint is very sparse, has many the hallmarks of LLM-generation, and outlines an argument for $\dhl{46,2}$. Althofer claims that the ideas are all Stadlmann's, and he is only the "milkman".

**September 3, 2026:** Coinciding with the release of Astra, OpenAI announces a proof of $\dhl{40,2}$, obtaining a prime gap bound of 186. The proof uses a different idea to Stadlmann's main paper. As far as I can tell, it seems to be weakining a standard assumption in these arguments from something about smooth numbers to pairs (tuples?) of numbers that are "triply densely divisible". To me, this seems like the sort of thing that would be pretty technical and a pain in the butt for a human to do; on the other hand, the paper is only 39 pages so maybe my impression is wrong. 

The OpenAI paper does *not* use Stadlmann's main paper, but it *does* use arguments and ideas from Stadlmann's EE paper in a crucial way. Stadlmann's EE paper is the only paper that is post-2017 and cited by the OpenAI paper.

The date on the paper (August 30) is before Stadlmann's main paper was available publically. However, Stadlmann's main paper is mentioned as independent work in the paper. This suggests that OpenAI and Julia Stadlmann were mutually aware of each other's proofs before either got published. 

Reading between the lines, one imagines that the following scenario may have happened: first, OpenAI mathematicians reached out to Stadlmann before releasing their work, and discovered the mutually independent progress. Stadlmann might not have been quite intending to release her paper yet; likely, OpenAI wanted to release their work by the release of Astra which was already set, and both parties agreed that Stadlmann would write up and release her paper before the release, causing Stadlmann to have to finish her paper quickly, hence the result without doing numerical optimizations that the "milkmen" were able to do in days using AI. 

Discovering independent work on the same problem and arranging for a simultaneous or close-to-simultaneous release is fairly common in mathematical practice. Operating on a deadline measured in weeks and not months or years is very uncommon in mathematical practice.

**September 3, 2026:** Anthropic employee Levent Alpöge discloses via Twitter/X that Claude has obtained a prime gap bound of 188, presumably by showing $\dhl{41,2}$. The argument is not publically available; based on Alpöge's comments, this seems to be because the argument has been sent to be looked over by an expert before public release. Also based on Alpöge's comments, it seems like the argument might be pretty similar to the ChatGPT one.

## If the world was stuck in 2023

Imagine that the world was stuck in 2023, when AI could not contribute substantially to mathematics research. What might have happened instead?

As I'm not an expert in analytic number theory, these counterfactuals aren't meant to be super technically accurate; vaguely, I'm using the $k$ in $\dhl{k,2}$ as a rough measure for progress, and construction this based on my observations about how progress happens in my own areas of expertise.

In what follows, we well set 2026 to be Year 0, and count up from Year 0, rather than using counterfactual dates. 

**Year 0, November:** Stadlmann's paper comes out with a proof of $\dhl{48,2}$, having more time to run computations since there wasn't a deadline.

**Year 1**: Stadlmann gives a bunch of talks about progress on bounded gaps between primes. Stadlmann starts to become a trendy name in analytic number theory.

**Year 1, May**: Quanta Magazine writes an article about Stadlmann's work. It gives a profile of her, and tells the story of all recent progress on bounded gaps between primes, much like [previous](https://www.quantamagazine.org/yitang-zhang-proves-landmark-theorem-in-distribution-of-prime-numbers-20130519/) [articles](https://www.quantamagazine.org/mathematicians-team-up-on-twin-primes-conjecture-20131119/).

**Year 1, August**: A workshop is convened with relevant experts in a variety of topics. Stadlmann is either an organizer or the guest of honor. She gives a lecture series, and many of the participants work on numerical optimizations during the workshop. 

**Year 2, April:** The workshop collaboration releases a paper which proves $\dhl{47,2}$.

**Year 2**: Stadlmann starts a tenure-track job. At this point, she is a regular attendee and has various other papers having to do with equidistribution estimates.

**Year 2**: Stadlmann takes a PhD student, who let's call Thor. Thor's thesis project is to improve on $\dhl{47,2}$. Thor spends a lot of time scratching and clawing and working on numerical optimizations, and gets $\dhl{46,2}$, the smallest possible improvement. 

**Year 6**: Thor graduates, releasing the $\dhl{46,2}$ proof into the wild. Meanwhile, Stadlmann has been making other interesting advances in the field.

**Year 6** Thor, Julia Stadlmann, and one or two of the experts from the conference publish a paper improving the result to $\dhl{44,2}$. At this point, the idea from Stadlmann's original paper is well and truly "milked". People move on to doing different things.

**Year 8**: Julia Stadlmann gets a PhD student who is exceptional, a way better student than Thor, lets call this student Black Widow. Stadlmann gives Black Widow a thesis project whose idea is to find some truly new method for lowering the bound, much like her own thesis. We'll cast aside the idea of whether the idea AI came up with would be the same one that the humans would come up with, and for the sake of argument say that this is the same idea as OpenAI. 

**Year 12**: Black Widow graduates, having successfully showed $\dhl{41,2}$. 

**Year 14**: Another "milking" process, kicked off by Black Widow, completes with the community having proved $\dhl{40,2}$ or $\dhl{39,2}$. The problem becomes dormant again.

## Observations

I'd like to share a few assorted thoughts about the whole situation.

* First, it kinda sucks for Stadlmann, instead of getting to go on tour and get hailed as an expert, she has to read a bunch of papers written by AI with varying levels of slop-ness to figure out how to be at the cutting edge of research in her own area.
* It's interesting that Claude and ChatGPT seem to have found roughly the same argument (even though we aren't completely sure). Daniel Litt talked about this [recently](https://www.daniellitt.com/blog/2026/8/11/the-end-of-mathematics/), where he argues that doing math this way could lead to lower quality mathematics.
* It's also striking that the more autonomous ChatGPT/Claude proofs did not come up with the same idea as Stadlmann. Will humans be able to remain competetive by coming up with ideas that AIs wouldn't have? 
* Perhaps the most striking thing is the pace of these "milkmen" milking out their incremental improvements. It's INSANE. Possibly years of incremental improvements in 3 days.
* You can tell that the "If we were stuck in 2023" mathematical methodology has a certian flow to it. Someone comes up with a good idea, and then the community milks all the low-hanging fruit over 2-5 years. There are some mathematicians who more or less only do milking, and many more start out this way. Once all the low hanging fruit has been milked, the problem goes dormant until a really good student or senior mathematician puts a lot of effort into improving it (usually by doing the same amount of work as in a PhD thesis), after which the community has more new ideas that can be milked.
* Building on the last point, it is also pretty clear that even the pace of these incremental improvements (much less the GPT/Claude proofs) absolutely breaks the previous system in math. Milking is now essentially instant (if you have the cash).
* After seeing this, I think as a pre-tenure mathematician, it's important to be really careful what you say in public, because the rate that AI can improve arguments is crazy. Clearly, there are people watching the arXiv feed who will throw tokens at things which they find interesting. Anything related to something too popular is liable to be tokenmaxxed. Will it become necessary to give your paper a more obscure title in the hopes that people will miss it? Should you even be posting stuff on the arXiv at all before it's been accepted for publication anymore? I don't have answers, but we really have to rethink how we operate.
* Participation in pure math as a whole has been broadened: as I said before Kintali obviously not a crank, but he also isn't working in academia. Academia doesn't really know how to deal with this type of contributor. In 2023's world, such a person would have likely been unable to have the resources to contribute to research and do his day job, but now he can just go ahead and let the bots run. 

As one parting thought, I hope that the mathematical community can recognize that Stadlmann's fingerprints are all over all of these advances, and give her the credit she deserves. 
