require'gp'.setup({
    agents = {
    {
        name = "ChatGPT4", 
        chat = true, 
        command = false, 
        -- string with model name or table with model name and parameters 
        model = { model = "gpt-4-1106-preview", temperature = 1.1, top_p = 1 }, 
        -- system prompt (use this to specify the persona/role of the AI) 
        system_prompt = "You are a general AI assistant.\n\n" 
            .. "The user provided the additional info about how they would like you to respond:\n\n" 
            .. "- If you're unsure don't guess and say you don't know instead.\n" 
            .. "- Ask question if you need clarification to provide better answer.\n" 
            .. "- Think deeply and carefully from first principles step by step.\n" 
            .. "- Zoom out first to see the big picture and then zoom in to details.\n" 
            .. "- Use Socratic method to improve your thinking and coding skills.\n" 
            .. "- Don't elide any code from your output if the answer requires coding.\n" 
            .. "- Take a deep breath; You've got this!\n", 
    }, 
    { 
        name = "ChatGPT3-5", 
        chat = true, 
        command = false, 
        -- string with model name or table with model name and parameters 
        model = { model = "gpt-3.5-turbo-1106", temperature = 1.1, top_p = 1 }, 
        -- system prompt (use this to specify the persona/role of the AI) 
        system_prompt = "You are a general AI assistant.\n\n" 
            .. "The user provided the additional info about how they would like you to respond:\n\n" 
            .. "- If you're unsure don't guess and say you don't know instead.\n" 
            .. "- Ask question if you need clarification to provide better answer.\n" 
            .. "- Think deeply and carefully from first principles step by step.\n" 
            .. "- Zoom out first to see the big picture and then zoom in to details.\n" 
            .. "- Use Socratic method to improve your thinking and coding skills.\n" 
            .. "- Don't elide any code from your output if the answer requires coding.\n" 
            .. "- Take a deep breath; You've got this!\n", 
    }, 
    { 
        name = "CodeGPT4", 
        chat = false, 
        command = true, 
        -- string with model name or table with model name and parameters 
        model = { model = "gpt-4-1106-preview", temperature = 0.8, top_p = 1 }, 
        -- system prompt (use this to specify the persona/role of the AI) 
        system_prompt = "You are an AI working as a code editor.\n\n" 
            .. "Please AVOID COMMENTARY OUTSIDE OF THE SNIPPET RESPONSE.\n" 
            .. "START AND END YOUR ANSWER WITH:\n\n```", 
    }, 
    { 
        name = "CodeGPT3-5", 
        chat = false, 
        command = true, 
        -- string with model name or table with model name and parameters 
        model = { model = "gpt-3.5-turbo-1106", temperature = 0.8, top_p = 1 }, 
        -- system prompt (use this to specify the persona/role of the AI) 
        system_prompt = "You are an AI working as a code editor.\n\n" 
            .. "Please AVOID COMMENTARY OUTSIDE OF THE SNIPPET RESPONSE.\n" 
            .. "START AND END YOUR ANSWER WITH:\n\n```", 
    }, 
    },   openai_api_key = os.getenv("OPENAI_API_KEY"),
})


local function keymapOptions(desc)
    return {
        noremap = true,
        silent = true,
        nowait = true,
        desc = "GPT prompt " .. desc,
    }
end


vim.keymap.set({"n"}, "<leader>gp", "<cmd>GpPopup<cr>", keymapOptions("Visual Popup"))
vim.keymap.set({"n"}, "<leader>gw", "<cmd>GpRewrite<cr>", keymapOptions("Inline Rewrite"))
vim.keymap.set({"n"}, "<leader>ga", "<cmd>GpAppend<cr>", keymapOptions("Append (after)"))
vim.keymap.set({"n"}, "<leader>gb", "<cmd>GpPrepend<cr>", keymapOptions("Prepend (before)"))
vim.keymap.set({"n"}, "<leader>gn", "<cmd>GpChatNew vsplit<cr>", keymapOptions("New Chat"))
vim.keymap.set({"n"}, "<leader>gd", "<cmd>GpChatDelete<cr>", keymapOptions("New Chat"))
vim.keymap.set({"n"}, "<leader>gr", "<cmd>GpChatRespond<cr>", keymapOptions("New Chat"))
vim.keymap.set({"n"}, "<leader>gf", "<cmd>GpChatFinder<cr>", keymapOptions("New Chat"))
vim.keymap.set({"n"}, "<leader>gt", "<cmd>GpChatToggle vsplit<cr>", keymapOptions("Toggle Chat"))
