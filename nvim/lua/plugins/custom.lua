return {
  { "ellisonleao/gruvbox.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = false },
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
      },
    },
  },
  {
    "folke/flash.nvim",
    keys = {
      { "s", mode = { "n", "x", "o" }, false },
    },
  },
  { "akinsho/bufferline.nvim", enabled = false },
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        documentation = {
          window = {
            border = "rounded",
          },
        },
      },
      keymap = {
        preset = "super-tab",
        ["<Tab>"] = {
          function(cmp)
            if cmp.snippet_active() then
              return cmp.accept()
            else
              return cmp.select_and_accept()
            end
          end,
          "snippet_forward",
          "fallback",
        },
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<C-j>"] = { "select_next", "fallback" },
      },
    },
  },
  {
    "stevearc/aerial.nvim",
    opts = {
      layout = {
        max_width = { 100, 0.3 },
        width = nil,
        min_width = 50,
      },
    },
  },
  {
    "robitx/gp.nvim",
    config = function()
      local conf = {
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
              .. "- Answer as short as possible, without yapping."
              .. "- Ask question if you need clarification to provide better answer.\n"
              .. "- Don't provide full coding examples unless specifically asked for it. Code examples with a few lines of code are allowed.\n"
              .. "- If you're unsure don't guess and say you don't know instead.\n"
              .. "- Think deeply and carefully from first principles step by step.\n"
              .. "- Use Socratic method to improve your thinking and coding skills.\n",
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
              .. "- Answer as short as possible, without yapping."
              .. "- Ask question if you need clarification to provide better answer.\n"
              .. "- Don't provide full coding examples unless specifically asked for it. Code examples with a few lines of code are allowed.\n"
              .. "- If you're unsure don't guess and say you don't know instead.\n"
              .. "- Think deeply and carefully from first principles step by step.\n"
              .. "- Use Socratic method to improve your thinking and coding skills.\n",
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
        },
        openai_api_key = os.getenv("OPENAI_API_KEY"),
      }
      require("gp").setup(conf)
      local function keymapOptions(desc)
        return {
          noremap = true,
          silent = true,
          nowait = true,
          desc = "GPT prompt " .. desc,
        }
      end
      vim.keymap.set({ "n" }, "<leader>gp", "<cmd>GpPopup<cr>", keymapOptions("Visual Popup"))
      vim.keymap.set({ "n" }, "<leader>gw", "<cmd>GpRewrite<cr>", keymapOptions("Inline Rewrite"))
      vim.keymap.set({ "n" }, "<leader>ga", "<cmd>GpAppend<cr>", keymapOptions("Append (after)"))
      vim.keymap.set({ "n" }, "<leader>gb", "<cmd>GpPrepend<cr>", keymapOptions("Prepend (before)"))
      vim.keymap.set({ "n" }, "<leader>gn", "<cmd>GpChatNew vsplit<cr>", keymapOptions("New Chat"))
      vim.keymap.set({ "n" }, "<leader>gd", "<cmd>GpChatDelete<cr>", keymapOptions("Delete Chat"))
      vim.keymap.set({ "n" }, "<leader>gr", "<cmd>GpChatRespond<cr>", keymapOptions("Respond"))
      vim.keymap.set({ "n" }, "<leader>gf", "<cmd>GpChatFinder<cr>", keymapOptions("Find Chat"))
      vim.keymap.set({ "n" }, "<leader>gt", "<cmd>GpChatToggle vsplit<cr>", keymapOptions("Toggle Chat"))
    end,
  },
}
