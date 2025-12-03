import readline

# Disable REPL history entirely
readline.set_history_length(0)
readline.clear_history()
readline.write_history_file = lambda *args, **kwargs: None
readline.read_history_file  = lambda *args, **kwargs: None

