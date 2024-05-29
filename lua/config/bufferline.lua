local status, bufferline = pcall(require, "bufferline")
if not status then
    vim.notify("没有找到 bufferline")
  return
end
 
bufferline.setup({
    options = {
        mode = "buffers",
        -- 显示id
        number = "ordinal",
        close_command = "bdelete! %d",       -- 点击关闭按钮关闭
        right_mouse_command = "bdelete! %d", -- 右键点击关闭
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer" ,
                text_align = "left",
                separator = true,
            }
        },
    },
})

vim.opt.termguicolors = true