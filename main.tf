# Create all combindations of the first and second lists
data "null_data_source" "stage1" {
  count = "${length(var.list1)}"

  inputs = {
    permutations = "${join(",", formatlist(var.format, var.list1[count.index], var.list2))}"
  }
}

# Flatten the list, stage 1 of 2
data "template_file" "stage2" {
  count    = "${length(data.null_data_source.stage1.*.outputs)}"
  template = "${lookup(data.null_data_source.stage1.*.outputs[count.index], "permutations")}"
}

# Convert flattened data to a list, stage 2 of 2
locals {
  "result" = "${split(",", join(",", data.template_file.stage2.*.rendered))}"
}
