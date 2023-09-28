cwlVersion: v1.2
class: CommandLineTool

baseCommand: ["echo"]

inputs:
  tool_input:
    type: string
    inputBinding:
      position: 1

outputs:
  output_text:
    type: File
    outputBinding:
      glob: "output.txt"

stdout: "output.txt"
