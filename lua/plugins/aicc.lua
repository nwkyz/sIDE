local hfcc = require('hfcc')

hfcc.setup({
  api_token = "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", -- cf Install paragraph
  model = "bigcode/starcoder", -- can be a model ID or an http(s) endpoint
  -- parameters that are added to the request body
  query_params = {
    max_new_tokens = 128,
    temperature = 0.2,
    top_p = 0.95,
    stop_token = "<|endoftext|>",
  },
  -- set this if the model supports fill in the middle
  fim = {
    enabled = true,
    prefix = "<fim_prefix>",
    middle = "<fim_middle>",
    suffix = "<fim_suffix>",
  },
})
