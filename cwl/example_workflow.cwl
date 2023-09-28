cwlVersion: v1.2
class: Workflow

requirements:
  StepInputExpressionRequirement: {}
inputs:
  original_input: string

steps:
  example_step:
    run: example_tool.cwl
    in:
      tool_input:
        source: original_input
        valueFrom: prefix_$(self)_suffix
    out:
      - output_text

outputs:
  final_output:
    type: File
    outputSource: example_step/output_text
