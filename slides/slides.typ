// Julia programming slides - JOSS package, language comparisons, tools

#let microbiome_package_intro_slide = [
= `Microbiome.jl` - A julia package for microbiome data science

== Microbiome data has a common structure

#slide[
    #v(1em)
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0, 0), [#image("../figures/joss-fig1a.png", width: 400pt)])
    (pause,)
    content((13, 0), [#image("../figures/joss-fig1b.png", width: 300pt)])
    }))

    #v(2em)
    #text(11pt)[Bonham, _et. al._, _JOSS_ (2021)]
]
]

#let microbiome_ecosystem_slide = [
== `Microbiome.jl` unifies analysis and composes with julia ecosystem

#slide[

    #v(-1em)
    #figure(
        image("../figures/joss-fig2.png", width: 70%)
    )
]
]

#let microbiome_summary_slide = [
== Summary of `Microbiome.jl`

- Open source package to ease microbiome community analysis
  - Built-in loading of common data types
  - Seamlessly link microbiome data types and sample metadata
- Designed for extensibility / integration with julia stats / data science ecosystem
  - eg. stats, ML, plotting
- Built around efficient Sparse Matrix data type to avoid memory bottlenecks
]

#let julia_journey_slide = [
== My Julia journey

#slide(composer:(2fr,2fr))[
  #v(-2em)
  #set align(center)
  #image("../figures/stackoverflow-first.png", width: 83%)
  #image("../figures/julia-pr.png", width: 76%)
][
  #pause
- First language I tried to learn (c. 2014, `julia v0.3`)#pause
- Stopped in favor of python until May \2017#pause
- Hooked when I implemented min-hash sketch just based on equation
  in paper, and it was _fast_#pause
- First registered package (`Microbiome.jl`) Oct 2017
- First PR to julia language in 2018
]
]

#let two_language_problem_slide = [
== The two language problem

#slide(composer: (1fr,1fr))[
  - In interactive languages, performance-critical code
    is written in compiled language
  - Splits community of users and developers
    (the "two cultures problem")
  - Makes it difficult for domain-experts to contribute
][
  #v(-3em)
  #cetz-canvas({
    import cetz.draw: *

    content((0,0), image("../figures/lng_numpy.png", width: 9em))
    content((0,-7), image("../figures/lng_pytorch.png",width: 11em))
  })
]
// pause
#slide(composer: (1fr,1fr))[
  - In interactive languages, performance-critical code
    is written in compiled language
  - Splits community of users and developers
    (the "two cultures problem")
  - Makes it difficult for domain-experts to contribute
][
  #cetz-canvas({
    import cetz.draw: *

    content((0,0), image("../figures/lng_purrr.png", width: 12em))
    content((0,-6), image("../figures/lng_pak.png",width: 11em))
  })

]
]

#let julia_no_two_language_slide = [
== Julia (mostly) doesn't have a 2 language problem

#cetz-canvas({
  import cetz.draw: *

  content((0,0), image("../figures/lng_dataframes.png", width: 13em))
  content((0,-4), image("../figures/lng_cuda.png",width: 13em))
  content((12,0), image("../figures/lng_mlj.png", width: 13em))
  content((12,-4), image("../figures/lng_images.png", width: 13em))
})
]

#let julia_speed_slide = [
== Julia is (or can be) fast!

#align(center, image("../figures/speed_vs_codesize_comparison.jpg", width: 75%))
]

#let pkg_manager_slide = [
== Package / environment manager (`Pkg.jl`) is built-in

#slide(composer: (1fr,1fr))[
  - Pkg REPL mode accessed by pressing `]`
  - Direct dependencies and compat stored in `Project.toml`
  - Full environment with explicit versions stored in `Manifest.toml`
  - strict adherence to SemVer
  - Recreating environment as simple as `] instantiate`
][
  #image("../figures/pkg.png")
]
]

#let shell_mode_slide = [
== Run Shell programs

#align(center, image("../figures/shell-mode.png"))
]

#let interop_slides = [
== Run python or R code with PythonCall.jl, RCall.jl, and CondaPkg.jl

#slide[
  #set align(center)
  #image("../figures/rcall.png")
  #pause
][
  #set align(center)
  #image("../figures/pythoncall.png")
]
]

#let juliaup_slide = [
== Installation with `juliaup`

- inspired by `rustup`
- `curl -fsSL https://install.julialang.org | sh`
- also available from the Windows store

#image("../figures/juliaup.png")
]

#let vscode_slide = [
== Use any text editor (VS Code is well supported)

#align(center, image("../figures/vscode.png", width: 63%))
]