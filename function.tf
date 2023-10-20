resource "azurerm_function_app_function" "main" {
  name            = "function-hhcompany"
  function_app_id = azurerm_linux_function_app.main.id
  language        = "Python"

  file {
    name    = "__init__.py"
    content = file("scripts/v1/__init__.py")
  }

  file {
    name    = "readme.md"
    content = file("scripts/v1/readme.md")
  }

  # file {
  #   name    = "host.json"
  #   content = file("scripts/host.json")
  # }

  test_data = jsonencode({
    "name" = "Azure"
  })

  config_json = jsonencode(
    {
      "bindings" = [
        {
          "name"       = "msg",
          "type"       = "queueTrigger",
          "direction"  = "in",
          "queueName"  = "stq-hhcompany",
          "connection" = "AzureWebJobsStorage"
        }
      ]
    }
  )
}
