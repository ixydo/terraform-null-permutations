module "set1" {
  source = "../"

  list1 = ["a", "b", "c"]
  list2 = ["d", "e", "f"]
}

module "set2" {
  source = "../"

  list1 = "${module.set1.result}"
  list2 = ["g", "h", "i"]
}

output "result" {
  value = "${module.set2.result}"
}
