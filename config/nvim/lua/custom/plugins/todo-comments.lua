return
{
  "folke/todo-comments.nvim",
  cmd = { "TodoTrouble", "TodoTelescope" },
  event = "VimEnter",
  config = true,
  keys = {
    { "]t",         function() require("todo-comments").jump_next() end, desc = "Next todo comment" },
    { "[t",         function() require("todo-comments").jump_prev() end, desc = "Previous todo comment" },
    -- { "<leader>xt", "<cmd>TodoTrouble<cr>",                              desc = "Todo (Trouble)" },
    -- { "<leader>xT", "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>",      desc = "Todo/Fix/Fixme (Trouble)" },
    { "<leader>st", "<cmd>TodoTelescope<cr>",                            desc = "Todo" },
    { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>",    desc = "Todo/Fix/Fixme" },
  },
}

-- TODO: wew
-- HACK: wew
-- FIX: wew
-- NOTE: wew

-- PERF: wew
-- WARN: wew
-- TEST: wew
