return {
    "folke/sidekick.nvim",
    opts = {
        -- add any options here
        cli = {
            tools = {
                antigravity = {
                    cmd = { "agy" },
                },
            },
        },
    },
    keys = {
        -- Toggle the Sidekick AI CLI Terminal
        {
            "<leader>aa",
            function() require("sidekick.cli").toggle({ name = "claude", focus = true }) end,
            desc = "Sidekick Toggle CLI"
        },
        -- Select from your available tools
        {
            "<leader>as",
            function() require("sidekick.cli").select() end,
            desc = "Select CLI"
        },
        -- Send visual selection or context templates
        { "<leader>av", function() require("sidekick.cli").send({ msg = "{selection}" }) end, mode = { "x" },      desc = "Send Visual Selection" },
        { "<leader>ap", function() require("sidekick.cli").prompt() end,                      mode = { "n", "x" }, desc = "Select Prompt" },
    },
}
