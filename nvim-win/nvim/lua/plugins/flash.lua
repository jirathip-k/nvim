return {
	"folke/flash.nvim",
	event = "VeryLazy",
	---@type Flash.Config
	opts = {},
    -- stylua: ignore
    keys = {
        { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end,   desc = "Flash" },
        { "r", mode = "o",               function() require("flash").remote() end, desc = "Remote Flash" },
    },
}
