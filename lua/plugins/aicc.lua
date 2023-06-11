local hfcc = require('hfcc')
-- TOKEN ========================================================
local copilot_token = "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" -- You can use our public token, but we recommend to use your own HuggingFace token to replace this to get rid of rate limits.

hfcc.setup({
    api_token = copilot_token, -- cf Install paragraph
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
    debounce_ms = 80,
    accept_keymap = "<Tab>",
    dismiss_keymap = "<S-Tab>",
})
