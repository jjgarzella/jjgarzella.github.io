@def title = "For Mathematicians"


# About my research, for mathematicians

I want to describe one thread that motivate a lot of my research. It doesn't cover everything, but
it's a big motivating factor.

### The combinatorics of motives

Grothendieck's idea of "motives" is a major motivating factor for modern algebraic and analytic
geometry. Let's exposit the basic idea. The concept of *linearity* is a recurring theme in
mathemtics, and lesson of this theme is that linear objects are much easier to deal with than
nonlinear objects. In geometry, this philosophy comes up in the study of *(co)homology theories*.
Given a category of "geometric spaces" (for example varieties, manifolds, etc.), one associates
a "linear" object $H^*(X)$ to a geometric space $X$. One can then use properties of the linear
spaces $H^*(X)$ to prove various facts about X. In categorical language, $H^*$ is a functor from
geoemtric spaces to linear spaces.

$$ 
\newcommand{\category}[1]{\textsf{#1}}

\category{GeomSpc} \xrightarrow{H^{*}} \category{LinSpc}
$$

However, there isn't just one cohomology theory, there are many different ones, each with the same
nice properties. However, there are no-go theorems which guarentee that a *universal*
cohomology theory cannot exist. There are various setting one can work in, but perhaps the most
famous is characteristic $p$ algebraic geometry: here we have $\ell$-adic cohomology and various
flavors of $p$-adic cohomology (rigid, crystalline, etc.), and no-go theorem saying that they can't
come from some cohomology theory over $\mathbb{Q}$.

$$
\begin{tikzcd}
\category{Var}_{k} \arrow{r}{H^{i}_{\'et}} &
\category{\(\overline{\mathbb{Q}_{\ell}}\)-Vect} \\
\arrow{rd}{\(H^{i}_{crys}\)} &
\category{\(F\)-crystal}
\end{tikzcd}
$$

Grothendieck's philosophy is that despite the no-go theorem, there should be some sort of category,
called the cateogry of *motives*, that acts as a universal cohomology theory. So we'd expect any
nice cohomology functor $H^*$ to factor through a fucntor $M$ from geometric spaces to motives.

Picture?

Now, making a definition that \*should\* coincide with the correct category of motives isn't
completely impossible, and Grothendieck even did this with his category of *pure motives*. However,
the definition of pure motives is really abstract, and it's quite hard to prove things with it.
What's missing is a *combinatorics* for this category, i.e. a concrete way to work tangibly with the
objects and morphisms in the category. 

On the other hand, given any particular cohomology theory (e.g. crystalline), one often has
a natural extra structure on this cohomology (e.g. an $F$-crystal). Such objects tend to be pretty
useful for computations and can be used to prove concrete facts about algebraic varieties. That is
to say, their combinatorics is well-understood. However, they might not contain enough information
to prove harder facts, because they don't know anything about the other cohomology theories. For
example, $F$-crystal structures on crystalline cohomology don't know about étale cohomology. 

So that's the duality of motives. We can either define something "close to the motive" which will be
abstract, or we can define something "close to the ground" that might not contain enough information
to prove the fact that we want. Research tends to reflect this: either we start with an abstract
definition and work really hard to understand anything at all about it, or we start with a concrete
definition and try to prove that the information it contains is already enough for our purposes.

There are many research topics in algebraic geometry that are some variant of this philosophy: we
define some notion which should be related to motives. Usually it's a numerical invariant that
should be deducible from knowledge of the motive, or it's a linear category that should recieve
a functor from the category of motives. This includes, but is not limited to \*deep breath\* motivic
homotopy theory, motivic cohomology, Chow motives, Chow rings, Algebraic cycles, Hodge structures,
mixed Hodge modules, log canonical thresholds, Gromov-Witten invariants, Hodge atoms, $F$-crystals,
constructible sheaves, $F$-gauges, prismatic $F$-gauges, prismatic $F$-crystals, $F$-pure
thresholds, quasi-$F$-pure thresholds, Dieudonné modules, $p$-divisible groups, Tate modules, Newton
polygons, Ekedahl-Oort types, Galois representations, modules with integrable connection, etc. With
this broad interpretation, one can say that perhaps a majority of algebraic geometers are studying
motives! 

My interest in motives is in exploring this combinatorics: considering various notions like the ones
written above, calculating them (often on a computer), and trying to find patterns and
relationships, in the hopes that one day maybe this will shed some light on the deeper story.
Abstractly, I'm interested in any of the things listed above and probably more, but of course I am
a finite human being and have expertise in very few of them.

There has been some exciting recent progress in this area. The paper
[arXiv:1802.03261](https://arxiv.org/abs/1802.03261v2), colloquially known as "B-M-S Two",
constructs a "motivic filtration" (something that was discovered from a "close to the motive"
approach due to Voevodsky et. al.) on a cohomology theory that is "closer to the ground". The
cohomology theory in question is a variant of crystalline cohomology, called *prismatic cohomology*,
though the paper predates that term. Prismatic cohomology has recieved a lot of fanfare, and the
philosophy of motives shows why: it seems to be honestly closer to the motive than things that we've
dealt with before, and it's also likely to be sufficiently computable to actually do stuff.

One major thread of my current research is to actually compute prismatic cohomology and various
downstream invariants (though so far, I have only gotten to the char=$p$ case which is equivalent to
crystalline cohomology) and investigate the combinatorics and patterns arising from these
invariants. For example, my paper [arXiv:2502.12428](https://arxiv.org/abs/2502.12428) gives
algorihtms and implementations to compute one such donwstream invariant (the "quasi-$F$-split
height") about 1000x faster than previous implementations. The methods should apply to other
downstream invariants, and I hope to explore this in future work. Another paper,
[arXiv:2509.06211](https://arxiv.org/abs/2509.06211), shows that there exists a relationship between
two downstream invariants (the "quasi-$F$-split height" and the "$F$-pure threshold"). The previous
proof uses cohomology heavy machinery, but our proof is "close to the ground", very short, and more
general. Is this evidence of something deeper going on at the cohomology level? It's unclear, but
I'd be really interested to find out. Finally, in a work in progress, my collaborators and I give
algorithms for calculating crystalline cohomology that are significantly faster than the state of
the art.

For more on my research, see my [papers](../). For another thread that motivates some of my other
research, see my [description for non-mathematicians](../non-mathematicians/)
