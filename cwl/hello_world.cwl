cwlVersion: v1.2
class: Workflow

inputs:
  message:
    type: string
    default: "Hello World"
    inputBinding:
      position: 1
outputs:
  output_message:
    type: string
    outputSource: hello/output_message
    
steps:
  hello:
    run:
      class: CommandLineTool
      baseCommand: echo
      inputs:
        message:
          type: string
          inputBinding:
            position: 1
      outputs:
        output_message:
          type: string
          outputBinding:
            glob: stdout

    in:
      message: message
    out: [output_message]

