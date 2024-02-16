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


vim.keymap.set({'n', 'i'}, '<leader>ggp', "<cmd>GpPopup<cr>", keymapOptions("Visual Popup"))
vim.keymap.set({"n", "i"}, "<leader>ggw", "<cmd>GpRewrite<cr>", keymapOptions("Inline Rewrite"))
vim.keymap.set({"n", "i"}, "<leader>gga", "<cmd>GpAppend<cr>", keymapOptions("Append (after)"))
vim.keymap.set({"n", "i"}, "<leader>ggb", "<cmd>GpPrepend<cr>", keymapOptions("Prepend (before)"))
vim.keymap.set({"n", "i"}, "<leader>ggn", "<cmd>GpChatNew vsplit<cr>", keymapOptions("New Chat"))
vim.keymap.set({"n", "i"}, "<leader>ggd", "<cmd>GpChatDelete<cr>", keymapOptions("New Chat"))
vim.keymap.set({"n", "i"}, "<leader>ggr", "<cmd>GpChatRespond<cr>", keymapOptions("New Chat"))
vim.keymap.set({"n", "i"}, "<leader>ggt", "<cmd>GpChatToggle vsplit<cr>", keymapOptions("Toggle Chat"))
