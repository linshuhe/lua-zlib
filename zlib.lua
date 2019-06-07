local zlib = require("zlib")

--[[
    inflated 是解压后的数据
    bytes_in 是压缩数据的长度
    bytes_out 是解压后数据的长度
]]
function uncompress(deflated)
    local uncompress = zlib.inflate()
    local inflate, eof, byetes_in, byetes_out = uncompress(deflated)
    return inflate
end

--[[
    deflated 是压缩后的数据
    bytes_in 是压缩前数据的长度
    bytes_out 是压缩后数据的长度
    'finish'为压缩选项，有 "none", "sync", "full", "finish", NULL 几种类型
]]
function compress(inflate)
    local compress = zlib.deflate()
    local deflated, eof, byetes_in, byetes_out = compress(inflate,'finish')
    return deflate
end