#import "letterpad.typ": letterpad

#letterpad()[

  // Title
  #align(center)[
    #text(14pt, weight: "bold")[LETTER OF APPROVAL]
  ]

  #v(20pt)

  // REMOVE THIS NOTICE
  #text(red, 10pt)[
    REMOVE THIS NOTICE:
    This is template is made for Purwanchal Campus, edit `letterpad.typ` to match your campus's letterpad.
  ]

  // Approval text
  #set par(justify: true)
  #text(12pt)[
    The undersigned certify that they have read and recommended to the Institute of Engineering for acceptance of the project report entitled #text(weight: "bold")["#upper[Implementing A Super Cool Project using All the Knowledge I have Acquired]"] submitted by #upper[Example Karki (PUR000BCT000), Example Khanal (PUR000BCT000), Example GUragain (PUR000BCT000)] and #upper[Example Subedi (PUR000BCT000)] in partial fulfillment of the requirements for the Bachelor's degree in Something Engineering.
  ]

  #v(40pt)

  // Supervisor section
  #line(length: 250pt, stroke: 0.5pt + black)
  #text(12pt)[
    Asst. Prof. Pukar Karki \
    Supervisor \
    Department of Electronics and Computer Engineering, Purwanchal Campus, Dharan, \
    Institute of Engineering, Tribhuvan University
  ]

  #v(40pt)

  // Head of Department section
  #line(length: 250pt, stroke: 0.5pt + black)
  #text(12pt)[
    Asst. Prof. Manoj Kumar Guragai \
    Head of #h(3pt) Department \
    Department of Electronics and Computer Engineering, Purwanchal Campus, Dharan, \
    Institute of Engineering, Tribhuvan University
  ]

  #v(40pt)

  // External Examiner section
  #line(length: 250pt, stroke: 0.5pt + black)
  #text(12pt)[
    Prof. Dr. Subarna Shakya \
    External Examiner \
    Department of Electronics and Computer Engineering Central Campus, Pulchowk \
    Institute of Engineering, Tribhuvan University
  ]


  // Date of Approval
  #align(bottom)[
    #text(12pt, weight: "bold")[Date of Approval: #h(3pt) 31st March, 2026]
  ]
]
