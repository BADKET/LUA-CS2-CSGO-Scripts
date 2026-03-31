-- [BADKET] LUA CS2-CSGO Scripts
-- Optimized for performance and stability

-- [BADKET] LUA CS2-CSGO Scripts
-- Optimized for performance and stability

-- [BADKET] LUA CS2-CSGO Scripts
-- Optimized for performance and stability

-- [BADKET] LUA CS2-CSGO Scripts
-- Optimized for performance and stability


local function on_draw_watermark()
    local fps = client.get_fps()
    local tickrate = client.get_tickrate()
    return "primordial.dev | "..user.name.." ["..user.uid.."] | "..fps.." fps | "..tickrate.." tick"
end

callbacks.add(e_callbacks.DRAW_WATERMARK, on_draw_watermark)
