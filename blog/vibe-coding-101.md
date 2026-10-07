@def title = "Tutorial: Vibe Coding 101"
@def rss_title = "Tutorial: Vibe Coding 101"
@def rss_pubdate = Date(2026, 10, 7)
@def rss_description = "An introduction to vibe coding for theory researchers who have zero experience using agents."
@def tags = ["code-heavy"]

# Tutorial: Vibe Coding 101

So you want to try out vibe coding for the first time, but don't know where to start?

In this tutorial, I'll walk you through a very basic setup. No experience required. 

This is aimed at mathematics/theory researchers who may or may not have experience programming, and have no experience using AI.

Of course, if you just blindly ask an AI to code something for you, it might just do it, and it might do a pretty good job. But as researchers, one of our jobs is to [understand what's going on](../why-basic-research). So our goal is going to be to this in a way that's slightly more structured, and gives us more input into what our AI is doing. 

## Prerequisites

To get started, you'll need to have a subscription or API access to some sort of AI service, for example Anthropic and OpenAI both offer \$20/month versions and OpenCode offers a \$10/month version. It'll also be useful to have access to some sort of AI on the web, mostly for answering "tech support" questions. The free one that comes up on google search is sufficient for our purposes, or you can use the web interface from your subscription. 

Once you have access, you'll need to download and install a so-called *coding agent* program. For example, Claude Code for Anthropic, Codex for OpenAI, and OpenCode is itself an agent. These come in multiple variants, you can download a desktop app version that runs in a window, or you can use it inside of a terminal. If you're not already familiar with the terminal, I recommend the desktop version. Either way, you should ask your web AI for install instructions. If your web AI tells you something that you don't understand, always ask for clarification.

I'm choosing to refer you to the web AI instead of giving you precise installation commands or instructions because the exact commands and configurations of vibe-coded software (like these coding agents) tends to change a lot. For example, if I gave you a command to paste in your terminal like I did in my [how to install Julia](../how-to-install-julia) post, those commands would likely become outdated pretty fast.

The last thing you'll need is to choose a paper to vibe code. A short paper is best. I tend to use papers that are algorithms, but if you'd like you can choose a paper that has a short proof, you can try to formalize it in Lean[^1].

### Bonus: Sandboxes

A sandbox is just some sort of mechanism that prevents your agent from accessing things it shouldn't. Generally, this is done by enforcing that the agent only touches things that live in a specific "safe" space.

Sandboxes protect you if your agent tries to do something destructive, like, say, delete everything on your whole computer. 

If you want to run your coding agent while you're not actively watching it, I recommend using some sort of sandbox.

On the other hand, if you're willing to sit at your computer for the duration of this tutorial, then you can save this step for later and skip the rest of this section.

Now, the agent programs like Claude Code, Codex, and OpenCode do come with a "sandbox" feature, but it is complete weak sauce and makes the agent a lot less useful. In practice, everyone disables this and uses the so-called "YOLO" mode where the agent has permission to do anything.

Instead, there are two fairly simple ways you can build a sandbox[^2].

1. The simplest way is to create a new user account on your computer, make it so that it **does NOT** have administrator priveleges, and then remove any sensitive files out of shared directories that all users can see. Run your agent in the new user account.
2. For the tech-minded or tech-curious, install [Docker](https://www.docker.com/) and run your agent in a Docker container. You can ask your web AI for instructions.

## Getting started

### Install `/grill-me`

Ok, so the first thing we're going to do is install a few things. Open up your coding agent, paste in the following sentence, and hit enter:

> Please install the `/grill-me` and `/grilling` skills from `https://github.com/mattpocock/skills/tree/c55ee46073ed923f86ce59a5eb3b6d895095d1b7/skills/productivity`

### What is a skill?

A *skill* is basically a fancy name for a reusable prompt. It consists of a set of instructions, and maybe a few supplemental files. The idea is to have skills for mechanical things that you do often. For example, you could have a skill for creating a new project, or doing a code review, or polishing the grammar on a paper.

You run skills by typing a slash and then the name of the skill, or else the agent will just try to figure out if it needs a skill and use it automatically.

The `/grill-me` skill instructs the AI to interview you about something you ask it to do. That way, it gets a very precise understanding of what you want. We'll use it in a minute. The `/grilling` skill is internal to `/grill-me` and you don't have to bother with it.

### Install Beads

Next paste the following into your agent:

> Please install beads from the github repo gastownhall/beads and put it on the path so that you can use it.

### What is Beads?

Beads is an task tracker library for agents. It provides an command line tool for agents (or humans, technically) to create prompts that have some structured data (title, body, tags, etc.) and store them in a special database. Each entry is called a bead. Each bead is supposed to represent a task that the agent does. Beads has a bunch of other fancy features that I think you'll appreciate further into your vibe coding journey.

So why use Beads to keep track of tasks?

Basically, any (current) AI agent has a limited amount of text that it can handle, which people usually call the *context*. Your whole conversation is included in the context, and this is sent across the internet every time you hit enter. If the context fills up, then the agent will do something called *compacting the context*, which means it takes the whole converstaion history, summarizes it, and continues the conversation from there.

People have observed that as the context fills up, and *especially* after compaction, the agents get way, way dumber and make way worse decisions.

Beads lets you manage this in a lot of different ways. For example, you can

* restart the session frequently and use beads so that the new session remembers what you worked on
* have your agent spawn other agents (often called "subagents") to do some tasks that might use up a lot of context
* divide your tasks between multiple AI brands, using each brand for the tasks it is the best at
* put a big task into a parent bead (called an *epic*) so that each session doesn't have to look at the full prompt

Now, coding agent programs like Claude Code and Codex do have their own issue trackers, but again they are mostly weak sauce and won't do what you really need them to. Furthermore, there are a bunch of rip-offs of beads out there, but beads is pretty popular and well-supported, and I don't know of a competitor that's actually good.

## Actually doing the vibe coding

### Part 1: The grill

Ok, now we've spent so much time installing stuff, let's start vibing. 

First, make a new folder for your project, and start a new session in that folder. Next, pull down the tex source of your paper[^3], and plop that thing into your project folder.

Now, write a message in the prompt text. Tell the agent that you want to implement algorithm in the paper and/or tell it you want to formalize the result in the paper. Specify any details you know think might be important. Make sure to include this sentence: `In this session make a plan and file it as a beads epic with subtasks and dependencies, and we will not write any code.`. At the end of your message, type `/grill-me` before you click enter.

Now, the AI will interview you about the paper. It will probably try to read the paper, by running a few command-line commands on your computer. The agent might give you a confirmation dialogue, asking you to approve commands. Take a look at each command and do so, you can ask it clarifying questions about anything you see.

It might not know what beads is, if not, tell it to look at `bd` on the command line and the associated documentation. Usually, you have to enable beads in every single folder you use it in. Your AI will know how to do this, and in general it will be able to figure out how it's supposed to use beads and explain it to you.

### Part 2: Waiting

Once your `/grill-me` is done, your agent will file the beads using the beads command-line interface. Once the whole thing is filed, end the session. Now, start up a new session in the same folder.

Make sure you have "accepting edits" enabled (ask your web AI about how to do this). If you are using a sandbox, put your agent into YOLO mode[^4].

Tell your agent to take a look at the beads and implement the algorithm/formalization. Then sit back, relax, and watch it go.

If you have a sandbox, you can literally leave the room and go for a run or get coffee. If you don't, you'll likely have to approve a bunch of command-line commands. But that's probably ok, since this paper isn't that long. Another option for those not using a sandbox is to ask the AI which commands it's going to use, and then give permission for those commands specifically.

### Part 3: See what you got.

After a few minutes, the AI will be done. Now you get to try it out! Run the code, see if it works, test it on an example or two. You can look at the code and see if you can make heads or tails of it, or ask the AI to explain it to you.

## Conclusion

And that's it! Congrats, you're a vibe coder now!

[^1]: You might need to install Lean, you can ask your web AI how to do that.
[^2]: Note that this kind of sandbox protects against rogue actions that come from [misunderstandings](../nightmare-painter), rather than agents with bad intentions (if such intentions are even possible, I think it's still up for debate, and it might come down to ontology)  or bad actors with AI assistants. Understand that a safeguards-off model, especially a big one like ChatGPT Astra or Claude Fable, can likely hack through this kind sandbox. The chance of this is unlikely enough that (as of September 2026) that I think it's more than safe to still use these agents autonomously within a docker container or user-priviledged account. As of this writing, I do not put agents in YOLO mode unless they are in a sandbox.
[^3]: You can also use the pdf, but you might need to install a pdf reader program. Ask your web AI how to do this.
[^4]: One confusing point is that Claude Code and Codex have an "auto mode" that works like YOLO mode; but instead of actually approving every command, it has another AI looking at each command and deciding whether it's safe or not. This costs a little bit extra, since you have to pay for the extra AI. I don't use it myself, so I won't recommend something I don't use myself, but I guess you can try it if you want.
