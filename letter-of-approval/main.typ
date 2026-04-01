#import "letterpad.typ": letterpad

// This function generates the official letterhead design at the top of the page.
// You can customize the specific college and department names by changing the arguments below.
#letterpad(
  // The name of your campus in Nepali
  campus-nepali: "पूर्वाञ्चल क्याम्पस",
  // The name of your campus in English
  campus-english: "Eastern Region Campus",
  // Department name in Nepali
  department-nepali: "इलेक्ट्रोनिक्स तथा कम्प्युटर विभाग",
  // Department name in English
  department-english: "Department of Electronics & Computer Engineering",
  // Short/abbreviated form of campus name in Nepali
  campus-short-nepali: "पू.क्या.फा.नं."
)[

  // Title
  #align(center)[
    #text(14pt, weight: "bold")[LETTER OF APPROVAL]
  ]

  #v(20pt)



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
