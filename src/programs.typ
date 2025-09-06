#set math.equation(numbering: "1.")

#let process(process_name, process_notes, process_lines) = [
  #set align(center)
  Process #process_name
  #line(length: 100%, stroke: 0.5pt)
  #process_notes \
  #let lineno = 1;
  #set align(left)
  #pad(x: 10pt)[
    #for line in process_lines [
        #process_name#lineno: #h(4pt) #line 
        #(lineno += 1)

    ]
  ]
  
// #label(process_name + str(lineno)) \
]

#let programs(program_name, shared_variables, ..processes) = [
  #set align(center)
  #line(length: 100%, stroke: 0.5pt)
  #program_name
  #line(length: 100%, stroke: 0.5pt)
  #shared_variables
  #line(length: 100%, stroke: 0.5pt)
  #grid(
    columns: processes.pos().len(),
    gutter: 1em,
    ..processes.pos().map(it => [#it])
  )



  #line(length: 100%, stroke: 0.5pt)
]