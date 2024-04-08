local llm = require('llm')
-- TOKEN ========================================================
local copilot_token = "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" -- You can use our public token, but we recommend to use your own HuggingFace token to replace this to get rid of rate limits.

llm.setup({
  api_token = copilot_token, -- cf Install paragraph
  model = "bigcode/starcoder", -- can be a model ID or an http(s) endpoint
  tokens_to_clear = { "<|endoftext|>" }, -- tokens to remove from the model's output
  -- parameters that are added to the request body
  query_params = {
    max_new_tokens = 192,
    temperature = 0.2,
    top_p = 0.95,
    stop_tokens = nil,
  },
  -- set this if the model supports fill in the middle
  fim = {
    enabled = true,
    prefix = "<fim_prefix>",
    middle = "<fim_middle>",
    suffix = "<fim_suffix>",
  },
  debounce_ms = 150,
  accept_keymap = "<Tab>",
  dismiss_keymap = "<S-Tab>",
  tls_skip_verify_insecure = false,
  -- llm-ls configuration, cf llm-ls section
  lsp = {
    bin_path = nil,
    version = "0.4.0",
  },
  tokenizer = nil, -- cf Tokenizer paragraph
  context_window = 8192, -- max number of tokens for the context window
  enable_suggestions_on_startup = false,
  enable_suggestions_on_files = "*", -- pattern matching syntax to enable suggestions on specific files, either a string or a list of strings
})

