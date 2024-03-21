# AFL++ Fuzz action


## Background

AFL++ is the most popular fuzzing engine used by many software engineers and security enthusatics. 
The motivation is to create action is where the local workstation is exhausted, Github Actions can be used to fuzz the target continuously.

## Inputs


```yaml
 campaign_name:
    description: "Name of your campaign"
    default: "none"
  fuzz_target:
    description: "Target binary to be fuzzed"
    required: true
  input_folder:
    description: "Path of the input folder used as seed corpus"
    required: true
  output_folder:
    description: "Path of the output folder where crashes and state are saved"
    required: true
  timeout:
    description: "Time to wait if the fuzzer hangs"
    default: 10
  time:
    description: "Fuzzing time"
    default: 120
  qemu_mode:
    description: "QEMU Mode"
    default: false
```