require('zhangchi.base')
require('zhangchi.highlights')
require('zhangchi.maps')
require('zhangchi.plugins')

local has = function(x)
  return vim.fn.has(x) == 1
end
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('zhangchi.macos')
end
if is_win then
  require('zhangchi.windows')
end
