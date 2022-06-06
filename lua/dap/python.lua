-- python3 -m pip install debugpy
return {
    adapters = {
        type = "executable",
        command = "python3",
        args = {"-m", "debugpy.adapter"}
    },
    configurations = {
        {
            type = "python",
            request = "launch",
            name = "Launch file",
            program = "${file}",
            pythonPath = function()
                return vim.g.python_path
            end
        }
    }
}

-- 指定 Python 解释器路径
vim.g.python_path = "C:\\Users\\Administrator\\AppData\\Local\\Programs\\Python\\Python38"
