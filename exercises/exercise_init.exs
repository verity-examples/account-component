System.get_env("CONSOLE_DEVICE", "stdout")
System.get_env("LOG_LEVEL", "info")
System.get_env("LOG_TAGS", "_untagged,-data,messaging,entity_projection,entity_store,ignored")

Mix.install([
  {:account_component, path: "./"}
])

Application.ensure_all_started(:account_component)
