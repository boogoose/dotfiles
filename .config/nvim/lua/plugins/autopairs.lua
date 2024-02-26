-- TODO check whether this is optimised, where the hell i got these settings from, whether the default values on github might be better, and compare them to some of the esoteric shit I had before and is now archived
return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true,
    opts = {
    check_ts = true,
    ts_config = {
        lua = { "string", "source" },
        javascript = { "string", "template_string" },
        java = false,
    },
    disable_filetype = { "TelescopePrompt", "spectre_panel" },
    fast_wrap = {
        map = "<M-e>",
        chars = { '{', '[', '(', '"', "'" },
        pattern = [=[[%'%"%)%>%]%)%}%,]]=],
        end_key = '$',
        keys = 'qwertyuiopzxcvbnmasdfghjkl',
        check_comma = true,
        highlight = 'Search',
        highlight_grey='Comment'
    },
    },

}

