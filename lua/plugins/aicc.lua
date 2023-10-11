local llm = require('llm')
-- TOKEN ========================================================
local copilot_token = "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" -- You can use our public token, but we recommend to use your own HuggingFace token to replace this to get rid of rate limits.

llm.setup({
    api_token = copilot_token, -- cf Install paragraph
    tokens_to_clear = { "<EOT>" },
    fim = {
        enabled = true,
        prefix = "<PRE> ",
        middle = " <MID>",
        suffix = " <SUF>",
    },
    model = "codellama/CodeLlama-13b-hf",
    context_window = 4096,
    tokenizer = {
        repository = "codellama/CodeLlama-13b-hf",
    },
    query_params = {
        max_new_tokens = 512,
        temperature = 0.2,
        top_p = 0.95,
        stop_tokens = nil,
    },
    -- set this if the model supports fill in the middle
    debounce_ms = 150,
    accept_keymap = "<Tab>",
    dismiss_keymap = "<S-Tab>",
    tls_skip_verify_insecure = false,
    -- llm-ls configuration, cf llm-ls section
    lsp = {
        -- bin_path = vim.api.nvim_call_function("stdpath", { "data" }) .. "/mason/bin/llm-ls",
        bin_path = nil,
        version = "0.2.0",
    }
})
