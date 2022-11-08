package main

import future.keywords.if

null_resource_a if {
    some res in input.resource_changes
    res.type = "null_resource"
    res.name = "example-a"
    res.change.actions[_] = "create"
}

deny[msg] {
    null_resource_a = true
    msg := "null resources with name 'example-a' cannot be created"
}
