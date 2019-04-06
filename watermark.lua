--local variables for API functions. Generated using https://github.com/sapphyrus/gamesense-lua/blob/master/generate_api.lua
local client_userid_to_entindex, client_set_event_callback, client_screen_size, client_trace_bullet, client_unset_event_callback, client_scale_damage, client_get_cvar, client_random_int, client_latency, client_set_clan_tag, client_log, client_timestamp, client_trace_line, client_random_float, client_draw_debug_text, client_delay_call, client_visible, client_exec, client_eye_position, client_set_cvar, client_error_log, client_draw_hitboxes, client_camera_angles, client_system_time, client_color_log, client_reload_active_scripts = client.userid_to_entindex, client.set_event_callback, client.screen_size, client.trace_bullet, client.unset_event_callback, client.scale_damage, client.get_cvar, client.random_int, client.latency, client.set_clan_tag, client.log, client.timestamp, client.trace_line, client.random_float, client.draw_debug_text, client.delay_call, client.visible, client.exec, client.eye_position, client.set_cvar, client.error_log, client.draw_hitboxes, client.camera_angles, client.system_time, client.color_log, client.reload_active_scripts
local entity_get_player_resource, entity_get_local_player, entity_is_enemy, entity_get_bounding_box, entity_is_dormant, entity_get_steam64, entity_get_player_name, entity_hitbox_position, entity_get_game_rules, entity_get_all, entity_set_prop, entity_is_alive, entity_get_player_weapon, entity_get_prop, entity_get_players, entity_get_classname = entity.get_player_resource, entity.get_local_player, entity.is_enemy, entity.get_bounding_box, entity.is_dormant, entity.get_steam64, entity.get_player_name, entity.hitbox_position, entity.get_game_rules, entity.get_all, entity.set_prop, entity.is_alive, entity.get_player_weapon, entity.get_prop, entity.get_players, entity.get_classname
local globals_realtime, globals_absoluteframetime, globals_tickcount, globals_lastoutgoingcommand, globals_curtime, globals_mapname, globals_tickinterval, globals_framecount, globals_frametime, globals_maxplayers = globals.realtime, globals.absoluteframetime, globals.tickcount, globals.lastoutgoingcommand, globals.curtime, globals.mapname, globals.tickinterval, globals.framecount, globals.frametime, globals.maxplayers
local ui_new_slider, ui_new_combobox, ui_reference, ui_set_visible, ui_new_textbox, ui_new_color_picker, ui_new_checkbox, ui_mouse_position, ui_new_listbox, ui_new_multiselect, ui_is_menu_open, ui_new_hotkey, ui_set, ui_new_button, ui_set_callback, ui_name, ui_get = ui.new_slider, ui.new_combobox, ui.reference, ui.set_visible, ui.new_textbox, ui.new_color_picker, ui.new_checkbox, ui.mouse_position, ui.new_listbox, ui.new_multiselect, ui.is_menu_open, ui.new_hotkey, ui.set, ui.new_button, ui.set_callback, ui.name, ui.get
local renderer_load_svg, renderer_circle_outline, renderer_rectangle, renderer_gradient, renderer_circle, renderer_text, renderer_line, renderer_triangle, renderer_measure_text, renderer_world_to_screen, renderer_indicator, renderer_texture = renderer.load_svg, renderer.circle_outline, renderer.rectangle, renderer.gradient, renderer.circle, renderer.text, renderer.line, renderer.triangle, renderer.measure_text, renderer.world_to_screen, renderer.indicator, renderer.texture
local math_ceil, math_tan, math_cos, math_sinh, math_pi, math_max, math_atan2, math_floor, math_sqrt, math_deg, math_atan, math_fmod, math_acos, math_pow, math_abs, math_min, math_sin, math_log, math_exp, math_cosh, math_asin, math_rad = math.ceil, math.tan, math.cos, math.sinh, math.pi, math.max, math.atan2, math.floor, math.sqrt, math.deg, math.atan, math.fmod, math.acos, math.pow, math.abs, math.min, math.sin, math.log, math.exp, math.cosh, math.asin, math.rad
local table_sort, table_remove, table_concat, table_insert = table.sort, table.remove, table.concat, table.insert
local string_find, string_format, string_gsub, string_len, string_gmatch, string_match, string_reverse, string_upper, string_lower, string_sub = string.find, string.format, string.gsub, string.len, string.gmatch, string.match, string.reverse, string.upper, string.lower, string.sub
local materialsystem_chams_material, materialsystem_arms_material, materialsystem_find_texture, materialsystem_find_material, materialsystem_override_material, materialsystem_find_materials, materialsystem_get_model_materials = materialsystem.chams_material, materialsystem.arms_material, materialsystem.find_texture, materialsystem.find_material, materialsystem.override_material, materialsystem.find_materials, materialsystem.get_model_materials
local ipairs, assert, pairs, next, tostring, tonumber, setmetatable, unpack, type, getmetatable, pcall, error = ipairs, assert, pairs, next, tostring, tonumber, setmetatable, unpack, type, getmetatable, pcall, error
--end of local variables

local offset_x, offset_y = -5, 5
-- interfaces

local antiut_reference = ui_reference("Misc", "Settings", "Anti-untrusted")
local watermark = ui_new_checkbox("Visuals", "Effects", "Watermark")

local frametimes = {}
local fps_prev = 0
local value_prev = {}
local last_update_time = 0

local function renderer_rect( x, y, w, h, r, g, b, a)
    renderer.line(x, y, x+w, y, r, g, b, a)
    renderer.line(x, y, x, y+h, r, g, b, a)
    renderer.line(x, y+h, x+w, y+h, r, g, b, a)
    renderer.line(x+w, y+h, x+w, y, r, g, b, a)
end

local white_col = 255, 255, 255, 255

function draw_container( x, y, w, h)

    local c = {10, 60, 40, 40, 40, 60, 20};

    for i = 0,6,1 do
        renderer_rect( x+i, y+i, w-(i*2), h-(i*2),c[i+1], c[i+1], c[i+1], 200);
    end

    -- transparency background
    renderer_rectangle( x + 6, y + 6, w - 12, h - 12, 25, 25, 25, 245);

    -- creating rainbow variables
    local r = math_floor( math_sin( globals_realtime() * 2) * 127 + 128 )
    local g = math_floor( math_sin( globals_realtime() * 2 + 2 ) * 127 + 128 )
    local b = math_floor( math_sin( globals_realtime() * 2 + 4 ) * 127 + 128 );
    renderer_gradient(x + 10, y + 16, w- 20, 3,r, g, b, 255,b, g, r, 255, true)
    --renderer_gradient(x + 10, y + 18, w- 20, 2,r, g, b, 125,b, g, r, 125, true)
    renderer_rectangle( x + 10, y + 20, w - 20, h - 25,20, 20,20,245);
    renderer_rect( x + 10, y + 20, w - 20, h - 30 , 40,40,40,245);

end

local function round(num, numDecimalPlaces)
    local mult = 10^(numDecimalPlaces or 0)
    if num >= 0 then return math.floor(num * mult + 0.5) / mult
    else return math.ceil(num * mult - 0.5) / mult end
end


local function accumulate_fps()
    local rt, ft = globals_realtime(), globals_absoluteframetime()
  
    if ft > 0 then
      table_insert(frametimes, 1, ft)
    end
  
    local count = #frametimes
    if count == 0 then
      return 0
    end
  
    local accum = 0
    local i = 0
    while accum < 0.5 do
      i = i + 1
      accum = accum + frametimes[i]
      if i >= count then
        break
      end
    end
  
    accum = accum / i
  
    while i < count do
      i = i + 1
      table_remove(frametimes)
    end
  
    local fps = 1 / accum
    local time_since_update = rt - last_update_time
    if math_abs(fps - fps_prev) > 4 or time_since_update > 1 then
      fps_prev = fps
      last_update_time = rt
    else
      fps = fps_prev
    end
  
    return math_floor(fps + 0.5)
end

function on_paint( )
    local fps = accumulate_fps()
    local screen_width, screen_height = client_screen_size()
    local x = offset_x >= 0 and offset_x or screen_width + offset_x
    local y = offset_y >= 0 and offset_y or screen_height + offset_y
    local w, h = 270,50
    if ui_get(watermark) then
    draw_container( x-270, y, w, h)
    local x_text = x - w + 15
    local x_logo = x - w+w/2-23
    local y_logo = y+7
    renderer_text(x_logo,y_logo,255,255,255,255,"-",0,"G A M E S E N S E")
    -- fps
    renderer_text(x_text,y+23,255,255,255,255," ",0,"FPS: " .. fps)
    -- ping
    local ping = math_min(999, client_latency() * 1000)
    ping = round(ping, 0)
    local ping_r, ping_g, ping_b = white_col

    local max_ping = 200
    if not ui_get(antiut_reference) then
      max_ping = 100
    end

    if ping > max_ping then
      ping_r, ping_g, ping_b = 255, 0, 0
    end
    renderer_text(x_text+55,y+23,255,255,255,255," ",0,"PING: " .. ping)
    --speed
    local local_player = entity_get_local_player()
      local vel_x, vel_y = entity_get_prop(local_player, "m_vecVelocity")
      if vel_x ~= nil then
        local velocity = math_sqrt(vel_x*vel_x + vel_y*vel_y)
        velocity = math_min(9999, velocity) + 0.2
        velocity = round(velocity, 0)
        renderer_text(x_text+115,y+23,255,255,255,255," ",0,"SPEED: " .. velocity)
      end
    --tickrate
    local tickrate = 1/globals_tickinterval()
    renderer_text(x_text+185,y+23,255,255,255,255," ",0,"RATE: " .. tickrate)
end
end

-- callbacks
client.set_event_callback("paint", on_paint )
-- end of the code
