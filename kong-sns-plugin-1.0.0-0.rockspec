package = "kong-sns-plugin"
version = "1.0.0-0"

source = {
 url    = "git@github.com:carnei-ro/kong-sns-plugin.git",
 branch = "master"
}

description = {
  summary = "a kong plugin to post messages on a SNS Topic",
}

dependencies = {
  "lua ~> 5.1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-sns-plugin.schema"] = "src/schema.lua",
    ["kong.plugins.kong-sns-plugin.v4"] = "src/v4.lua",
    ["kong.plugins.kong-sns-plugin.handler"] = "src/handler.lua",
  }
}