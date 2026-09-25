local map = vim.keymap.set

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {
    desc = "Find files",
})

map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", {
    desc = "Live grep",
})

map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", {
    desc = "Buffers",
})

map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", {
    desc = "Help",
})

map("n", "<leader>w", "<cmd>w<CR>", {
    desc = "Save",
})

map("n", "<leader>q", "<cmd>q<CR>", {
    desc = "Quit",
})

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "<Esc>", "<cmd>nohlsearch<CR>")

map("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", {
    desc = "Next buffer",
})

map("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", {
    desc = "Previous buffer",
})

map("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>", {
    desc = "Previous buffer",
})

map("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>", {
    desc = "Next buffer",
})

for i = 1, 9 do
    map("n", "<leader>" .. i, function()
        require("bufferline").go_to(i, true)
    end, {
        desc = "Go to buffer " .. i,
    })
end

map("n", "<leader>bd", "<cmd>bdelete<CR>", {
    desc = "Delete current buffer",
})

map("n", "<leader>bp", "<cmd>BufferLinePickClose<CR>", {
    desc = "Pick buffer to close",
})

map("n", "<leader>bb", "<cmd>BufferLinePick<CR>", {
    desc = "Pick buffer",
})

map("n", "<leader>bh", "<cmd>BufferLineMovePrev<CR>", {
    desc = "Move buffer left",
})

map("n", "<leader>bl", "<cmd>BufferLineMoveNext<CR>", {
    desc = "Move buffer right",
})
