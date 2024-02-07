require'gp'.setup({
    openai_api_key = os.getenv("OPENAI_API_KEY"),
})


local function keymapOptions(desc)
    return {
        noremap = true,
        silent = true,
        nowait = true,
        desc = "GPT prompt " .. desc,
    }
end


vim.keymap.set({'n', 'i'}, '<leader>gp', "<cmd>GpPopup<cr>", keymapOptions("Visual Popup"))
vim.keymap.set({"n", "i"}, "<leader>gw", "<cmd>GpRewrite<cr>", keymapOptions("Inline Rewrite"))
vim.keymap.set({"n", "i"}, "<leader>ga", "<cmd>GpAppend<cr>", keymapOptions("Append (after)"))
vim.keymap.set({"n", "i"}, "<leader>gb", "<cmd>GpPrepend<cr>", keymapOptions("Prepend (before)"))
vim.keymap.set({"n", "i"}, "<leader>gn", "<cmd>GpChatNew vsplit<cr>", keymapOptions("New Chat"))
vim.keymap.set({"n", "i"}, "<leader>gd", "<cmd>GpChatDelete<cr>", keymapOptions("New Chat"))
vim.keymap.set({"n", "i"}, "<leader>gr", "<cmd>GpChatRespond<cr>", keymapOptions("New Chat"))
vim.keymap.set({"n", "i"}, "<leader>gt", "<cmd>GpChatToggle vsplit<cr>", keymapOptions("Toggle Chat"))
