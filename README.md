# terraform-null-permutations

A simple module to return all possible combinations for a given pair of input lists.

Currently the permutations are returned as a list of underscore (`_`) delimited strings.  For example with the following input:

```
list1 = ["a", "b", "c"]
list2 = ["d", "e", "f"]
list3 = ["g", "h", "i"]
```

You get the following result:

```
result = [
    a_d_g, a_d_h, a_d_i,
    a_e_g, a_e_h, a_e_i,
    a_f_g, a_f_h, a_f_i,
    b_d_g, b_d_h, b_d_i,
    b_e_g, b_e_h, b_e_i,
    b_f_g, b_f_h, b_f_i,
    c_d_g, c_d_h, c_d_i,
    c_e_g, c_e_h, c_e_i,
    c_f_g, c_f_h, c_f_i
]
```

See the sample in the `example/` folder for how this is achieved.

## Usage

```
module "permutations" {
  source = "../"

  list1 = ["a", "b", "c"]
  list2 = ["d", "e", "f"]
}

output "result" {
  value = "${module.permutations.result}"
}
```

## Parameters

| variable | type | default | required |
|----------|------|---------|----------|
| list1 | list | | yes |
| list2 | list | | yes |
| format | string | `%s_%s` | no |
