@def title = "How to Install Julia and Oscar like a Pro"
@def rss_title = "How to Install Julia and Oscar like a Pro"
@def rss_pubdate = Date(2026, 2, 19)
@def rss_description = "Overview of the Julia/Oscar toolchain"

# How to Install Julia and Oscar like a Pro

In this post, we'll discuss how to install [Oscar](https://www.oscar-system.org/) on your personal computer. I'll assume a very little familiarity with programming, and none with any of the specific concepts or tools we'll discuss. Instead of doing the fastest possible thing to get started, I'd like to discuss *why* we're doing what we're doing along the way. This will lead us into a discussion of recent advances in software development over the past 20-25 years. 

## What even is a computer algebra system?

I want to clear up one subtlety in terminology. In order to do mathematical research with programming, you need (at least) two things:

* A *programming language*, i.e. a set of commands that can be used to write computer programs. Things like if-statements, while-loops, for-loops, lists, and so on are part of the programming language. This is Turing-complete and a priori has nothing to do with any specific use cases, such as mathematical programming.
* A *standard library* or *framework*, i.e. a set of functions which are provided out of the box for the user. This may include standard coding exercises like sorting a list, or very math-specific things like computing the class group of a number field.

This distinction can be confusing at times, because many computer algebra systems provide both a programming language and a framework, releasing them with the same name. One example of this is [Macaulay2](https://macaulay2.com/).
On the other hand, we will use the [Julia programming language](https://julialang.org/), with [Oscar](https://www.oscar-system.org/) as our framework.

<!--Many computer algebra systems provide both a programming language and a standard library, referring to the programming language synonymously with the project as a whole. For example, MAGMA, Macaulay2, Mathematica, and GAP follow this pattern. A non-example is PARI/GP - GP is the programming language and PARI is the framework. SageMath takes a very different approach, by using Python as the programming language and focusing on the standard library--however, Sage does make a few (mostly trivial) changes to the look and feel of Python for the sake of mathematical notation. Oscar **only** provides a framework, using Julia out-of-the-box as its programming language. Thus, while it makes sense for me to say that I wrote a program "in MAGMA" or "in Sage", it doesn't make sense to write a program "in Oscar", since Oscar is just a package that lives within the wider Julia infrastructure.-->

Thus, to install Oscar it is enough to install Julia, and install various Julia packages (including Oscar itself).

## Installing Julia

### Windows

* It turns out that Oscar doesn't actually support Windows. This is ok though, because we can use Windows Subsystem for Linux (WSL), see the [instructions](https://www.oscar-system.org/getting-started/install-win/) on Oscar's website. 
* I highly recommend installing the [Windows terminal](https://apps.microsoft.com/detail/9n0dx20hk701?hl=en-US&gl=US). Among other things, it'll let you use math symbols like Ω or ≤ in your code. <!--This is useful even if you don't plan to use the terminal to code, since (as we'll see later) the terminal is used for Julia prompts.-->

### Mac

* If you're on a Mac, you'll need to install the Apple developer tools, see the [instructions](https://www.oscar-system.org/getting-started/install-mac/) on Oscar's website.

## Step 1: Version manager (Install Julia)

Any programming language periodically have updates which add functionality, fix bugs, increase performance, and so on. It's nice to be able to use the latest version of your language, since it's likely to work better and faster. On the other hand, updating can be a pain, and even worse, sometimes you update and then it breaks your code.

Software engineers have dealt with thse issue for decades, and in the past 10-20 years the community seems to have converged on a solution. A *version manager* is a program that manages multiple versions of the language installed at once. For example, a while back Oscar was broken with Julia version 1.10 for some reason on my desktop computer. I used Julia version 1.8 for some of my research code. Eventually, whatever bug was causing the problem got fixed and I started using the latest version, which by that time was 1.11.

Julia's version mananger is called [`juliaup`](https://github.com/JuliaLang/juliaup), which is a reference to [`rustup`](https://rustup.rs/). [Rust](https://www.rust-lang.org/) is a programming language that got really popular among software developers in the 2010s, and it has rave reviews. For example, it consistently wins the "most loved" technologies on the [Stack Overflow Developer Survey](https://stackoverflow.blog/2020/06/05/why-the-developers-who-use-rust-love-it-so-much/).
One of the reasons for Rust's popularity is the tools that surround it, including `rustup`, the version manager for Rust.
As such, Rust has had a huge influence on software engineering since the mid-2010's. In particular, `juliaup` is designed to work in a very analogous way to `rustup`.

Rust has not yet been used that much for mathematics, but maybe this will change in the future: there are already people doing stuff with [Gromov-Witten invariants](https://docs.rs/cygv/latest/cygv/) and [stable homotopy theory](https://github.com/SpectralSequences/sseq). 

You can installed `juliaup` using the [instructions in `juliaup`'s README](https://github.com/JuliaLang/juliaup) (if you're on Windows, make sure to use the "Linux" instructions in your WSL terminal). 

To check if you've properly installed `juliaup`, you can type `julia` into the command line. You see a Julia prompt (if it doesn't work, you might need to restart the terminal window). This is called the Julia *REPL*, which stands for *R*ead *E*valuate *P*rint *L*oop. You type commands into the REPL, and Julia prints out the output of the command. To verify that the REPL is working properly, you can try doing basic arithmetic:

```julia
julia> 2+2
4
```

## Step 2: Package manager (Install Oscar)

Once we've installed Julia, Oscar can simply be installed as a Julia package. A *package* is, roughly, a self-contained collection of code that's meant to be used by others, and a *package manager* is a program that downloads packages from the internet and takes care of installation and configuration. 

Julia's package manager, known as `Pkg`, is modeled closely after `cargo`, the package manager for Rust. `cargo` also dates to the mid-2010's and has gotten rave reviews. Most modern package managers since then have either improved on or just copied the general design strategy of `cargo`.

To use Julia's package manager, open a Julia REPL (i.e. type `julia` into the command line if you haven't already) and press the end square bracket `]`. The prompt should turn blue. Then type `add Oscar` and click enter. It'll take a while installing a bunch of things.

## Bonus Step 2.5: If you want to use your GPU

Julia's GPU libraries will work on most computers that were bought post-2020. The first thing you'll need to know is what brand of GPU you have. Your choices are Nvidia, AMD, Intel, or Apple. You should be able to find this in the system settings. Once you know the brand, the Julia library you install is listed here:

| Vendor | Julia Library Name |
|---------|-----------|
| Nvidia | CUDA |
| AMD | ROCm |
| Intel | oneAPI |
| Apple | Metal |

I'll do the example of Nvidia. In this case, you'll go into package mode and run `add CUDA`. Then, regardless of what brand you're using, run `add KernelAbstractions` and `add AcceleratedKernels`. 

## Step 3: IDE (Install VS Code and Plugins)

An IDE (Integrated Development Environment) is basically a souped-up code editor with extra features that help you write code. You don't technically *need* an IDE to write code, but it can be a much nicer experience. Over the past few years, **VS Code** (short for Visual Studo Code) has become a very popular IDE. If you don't want to use VS Code, you can use any other IDE that you're familiar with, but here we'll focus on VS code. 

First, you'll want to download and install VS Code from the [VS Code website](https://code.visualstudio.com/).
Then, open VS Code. 
If you're on a Mac, you can now install all of the plugins you want--
click the extensions icon on the left side, type `julia` into the search box.
Find the "Julia Language Support" plugin, and click install.

### Brief digression for Windows users

If you're using Windows, you'll have to connect your VS Code to WSL.
First, install the WSL extention by clicking the extensions icon on the left,
and typing in `wsl` into the search bar. Find the WSL extension and click Install.

Next, go to the search bar at the very top of VS Code, and type in `>wsl`,
and among the search options should be `WSL: Connect to WSL`. 
Choose this option, and VS Code will reload itself.

Now, you can install the Julia plugin (and any other plugins you may want).
Click the extensions icon on the left again, type `julia` into the search
bar, and click the `Install in WSL` option.

<!-- ## Existing project -->

<!-- You can check if the code is set up correctly by cloning --> 
<!-- MMPSingularities.jl and trying to run something. -->

<!-- First, go to the top search bar and press `>`. You can also do `Ctrl-Shift-P`. This brings up what's called the *command palette* in VS Code. Type `git` into the command palette and select `Git: Clone`. Paste in the url `https://github.com/jjgarzella/MMPSingularities.jl.git`. The command palette will prompt you to choose a folder. You can navigate to a file location in WSL / the Mac filesystem. Or if you don't want to bother, click `Select as Repository Destination` to use whatever VS Code has selected as the default. Once VS Code is done, click `Open`. -->

<!-- Now, navigate to the file `experiments/Visualizing.jl`. If VS Code is set up correctly, there should be a play button on the top right of the code. Click the play button, and a termal should open up in the bottom and load for a second. --> 

<!-- The terimal probably gives you an error. Use the following magic in the julia terminal: -->

<!-- 1. `] activate` then the terminal should change to show a version number. -->
<!-- 2. `add Plots` then a lot of loading will happen -->
<!-- 3. Bacspace, so the prompt says `julia>` again -->
<!-- 4. Paste all of the code in `Visualizing.jl` into the julia REPL, then hit enter -->
<!-- 5. type `plot_simplex()`, and hit enter. and you should see a nice simplex with some dots that you can scroll around and look at. -->

## Trying it out

If you've got everything installed, go ahead and try it out! Type the following into the REPL (or just copy and paste the whole thing, including the `julia>` prompts), and see if you get the same results:

```
julia> using Oscar

julia> R, (x,y,z) = ZZ[:x,:y,:z]
(Multivariate polynomial ring in 3 variables over ZZ, ZZMPolyRingElem[x, y, z])

julia> I = ideal(R, x*y + z^2)
Ideal generated by
  x*y + z^2

julia> Q, map = quo(R,I)
(Quotient of multivariate polynomial ring by ideal (x*y + z^2), Map: R -> Q)

julia> Q(y^2*x) == Q(-y*z^2)
true
```

## TL;DR

Text that is in `monospace font` means that you should
type the code into the terminal and press enter.

### Windows

1. Download Ubuntu from the Windows app store
2. Download Windows Terminal from the Windows app store
3. Open Windows Terminal (in Ubuntu)
4. `curl -fsSL https://install.julialang.org | sh`
5. `julia` (open a Julia REPL)
6. Type `]` to enter package mode
7. `add Oscar`
8. Type backspace to exit package mode 
9. `using Oscar`
10. Download and install VS Code
11. Install the WSL plugin
12. Run the command `>WSL: Connect to WSL` in VS Code
13. Install the Julia plugin in WSL

### Mac

1. Launch a terminal
2. `xcode-select --install`, then confirm 
3. `curl -fsSL https://install.julialang.org | sh`
5. `julia` (open a Julia REPL)
6. Type `]` to enter package mode
7. `add Oscar`
8. Type backspace to exit package mode 
9. `using Oscar`
10. Download and install VS Code
11. Install the Julia plugin


