-- Source of inspiration: https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/lazy/snippets.lua

return {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
        require("luasnip.loaders.from_lua").lazy_load({
          paths = { vim.fn.stdpath("config") .. "/lua/w1nston/snippets" },
        })

        local ls = require("luasnip")

        ls.filetype_extend("javascript", { "jsdoc", "typescript" })
        ls.filetype_extend("typescriptreact", { "typescript" })

        vim.keymap.set({"i", "s"}, "<C-E>", function()
            if ls.choice_active() then
                ls.change_choice(1)
            end
        end, {silent = true})
    end
}
