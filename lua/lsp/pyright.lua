-- {
--   python = {
--     analysis = {
--       autoSearchPaths = true,
--       diagnosticMode = "workspace",
--       useLibraryCodeForTypes = true
--     }
--   }
-- }

return {
    root_dir = function()
        return vim.fn.getcwd()
    end,
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "off"
            }
        }
    }
}
