#import "lib/lib.typ": *

#show: project.with(
  campus: [Somethinganchal Campus],
  type: [A Major Project Progress Report On],
  title: [Implementing A Super Cool Project using All the Knowledge I have Acquired.],
  by: (
    [Example Karki (PUR000BCT000)],
    [Example Khanal (PUR000BCT000)],
    [Example Guragain (PUR000BCT000)],
    [Example Subedi (PUR000BCT000)]
  ),
  supervisor: [Asst. Prof. Example Guragai],
  department: [Department of Something and Something Engineering],
  faculty: [Computer],
  address: [City, Nepal],
  date: [March, 2026],
  show-coverpage: true,
  show-titlepage: true,
)


#include-if-exists("./content/declaration.typ")
#pagebreak()

#include-if-exists("./content/copyright.typ")
#pagebreak()

#include-if-exists("./content/acknowledgement.typ")
#pagebreak()

#include-if-exists("./content/abstract.typ")
#pagebreak()

// Customize outline entries
#show outline.entry.where(level: 1): it => {
  v(0pt)
  link(it.element.location())[
    #strong[#it.prefix() #upper[#it.body()]] #h(1fr) #it.page()]
}
#outline()
#pagebreak()

// Reset the outline entries for List of Figures
= List of Figures
#show outline.entry: it => link(
  it.element.location(),
  it.indented(strong[#it.prefix()], it.inner()),
)
#outline(
  title: none,
  target: figure,
)
#pagebreak()

#include-if-exists("./content/list-of-abbreviations.typ")
#pagebreak()

// Reset page numbering for main content
#set page(numbering: "1")
#counter(page).update(1)
#set heading(
  supplement: [Chapter],
  numbering: "1.1.1.1"
)
#show heading.where(level: 1): it => {
  align(center)[
    #upper[
      #it.supplement #counter(heading).display("1")
      #linebreak()
      #it.body
    ]
  ]
  v(12pt)
}
#show heading.where(level: 2): it => {
  v(6pt)
  [#counter(heading).display("1.1") #it.body]
  v(12pt)
}
#show heading.where(level: 3): it => {
  [#counter(heading).display("1.1.1") #it.body]
  v(6pt)
}

#include-if-exists("./content/introduction.typ")
#pagebreak()

#include-if-exists("./content/related-theory.typ")
#pagebreak()

#include-if-exists("./content/literature-review.typ")
#pagebreak()

#include-if-exists("./content/methodology.typ")
#pagebreak()

#include-if-exists("./content/implementation.typ")
#pagebreak()

#include-if-exists("./content/current-status.typ")
#pagebreak()

#include-if-exists("./content/conclusion.typ")
#pagebreak()

#set heading(numbering: none)
#show heading.where(level: 1): it => {
  align(center)[
    #upper[#it.body]
  ]
  v(12pt)
}

#include-if-exists("./content/references.typ")
#pagebreak()

#set heading(numbering: none)
#show heading.where(level: 1): it => {
  align(center)[#upper[#it.body]]
  v(12pt)
}
#show heading.where(level: 2): it => {
  v(6pt)
  [#it.body]
  v(12pt)
}
#show heading.where(level: 3): it => {
  [#it.body]
  v(6pt)
}

#include-if-exists("./content/appendix.typ")
