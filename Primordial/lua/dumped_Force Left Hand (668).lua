-- [BADKET] LUA CS2-CSGO Scripts
-- Optimized for performance and stability

-- [BADKET] LUA CS2-CSGO Scripts
-- Optimized for performance and stability

-- [BADKET] LUA CS2-CSGO Scripts
-- Optimized for performance and stability

-- [BADKET] LUA CS2-CSGO Scripts
-- Optimized for performance and stability


local lefthand = cvars.cl_righthand
function setleft()
    lefthand:set_int(0)
end
callbacks.add(e_callbacks.NET_UPDATE, setleft)
