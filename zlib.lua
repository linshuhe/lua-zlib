local c = require "zlib.c"
local zlib = {}
--[[
    inflated 是解压后的数据
    bytes_in 是压缩数据的长度
    bytes_out 是解压后数据的长度
]]
function zlib.uncompress(deflated)
    local uncompress = c.inflate()
    local inflate, eof, byetes_in, byetes_out = uncompress(deflated)
    return inflate
end

--[[
    deflated 是压缩后的数据
    bytes_in 是压缩前数据的长度
    bytes_out 是压缩后数据的长度
    'finish'为压缩选项，有 "none", "sync", "full", "finish", NULL 几种类型
]]
function zlib.compress(inflate)
    local compress = c.deflate()
    local deflated, eof, byetes_in, byetes_out = compress(inflate,'finish')
    return deflate
end

return zlib