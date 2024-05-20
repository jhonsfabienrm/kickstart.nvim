return
{
    "Diogo-ss/42-header.nvim",
    lazy = false,
    config = function()
        local header = require("42header")
        header.setup({
            auto_update = true,  -- update header when saving
            user = "jramihaj", -- your user
            mail = "jramihaj@student.42tana.mg", -- your mail
        })
    end
}
