--local variables for API functions. Generated using https://github.com/sapphyrus/gamesense-lua/blob/master/generate_api.lua
local client_userid_to_entindex, client_set_event_callback, client_screen_size, client_trace_bullet, client_unset_event_callback, client_color_log, client_scale_damage, client_get_cvar, client_key_state, client_create_interface, client_random_int, client_latency, client_set_clan_tag, client_find_signature, client_log, client_timestamp, client_trace_line, client_random_float, client_draw_debug_text, client_visible, client_exec, client_delay_call, client_set_cvar, client_error_log, client_draw_hitboxes, client_eye_position, client_camera_angles, client_system_time, client_reload_active_scripts, client_update_player_list = client.userid_to_entindex, client.set_event_callback, client.screen_size, client.trace_bullet, client.unset_event_callback, client.color_log, client.scale_damage, client.get_cvar, client.key_state, client.create_interface, client.random_int, client.latency, client.set_clan_tag, client.find_signature, client.log, client.timestamp, client.trace_line, client.random_float, client.draw_debug_text, client.visible, client.exec, client.delay_call, client.set_cvar, client.error_log, client.draw_hitboxes, client.eye_position, client.camera_angles, client.system_time, client.reload_active_scripts, client.update_player_list
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

local menu = {
  indicators = ui_new_checkbox("Visuals", "Effects", "Indicators"),
  drag_key = ui_new_hotkey("Visuals", "Effects", "Indicators", true),
      -- Menu data
      x_axis = ui.new_slider("VISUALS", "Effects", "\n indicators_posx", 0, 8192, 350, false),
      y_axis = ui.new_slider("VISUALS", "Effects", "\n indicators_posy", 0, 8192, 5, false),
  
      size = { 215, 35 },
      is_dragging = false,
      ind_x = 0, ind_y = 0,
}

-- MENU REFERENCE
local vec_data, flip = { }, true
local elems = { "Lag compensation","Choke", "Ping spike" }
local ping, ping_hk = ui.reference("MISC", "Miscellaneous", "Ping spike")

local is_active = ui.new_multiselect("VISUALS", "Effects", "Indicators", elems)
local picker = ui.new_color_picker("VISUALS", "Effects", "Indicator picker", 160, 245, 65)

local choked_cmd = 0

local white_col = 255, 255, 255, 255

local renderer_text = function(x,y,format,text)
    return renderer.text(x,y,255,255,255,255,format,0,text)
end
local draw_indicator = function(text, x, y, w, process, r, g, b)
    local text_ind = string_upper(text)
    local _, h = renderer_measure_text(nil, text_ind)
    renderer_text(x-70, y-2, nil, text_ind)
    renderer_rectangle( x, y, w, h/2, 5, 0, 0, 255)
    renderer_rectangle( x, y, process, h/2, r, g, b, 255)
end

renderer_container = function( x, y, w, h)
  
  local c = {10, 60, 40, 40, 40, 60, 20};

  local renderer_outline = function(x, y, w, h, r, g, b, a)
    renderer.line(x, y, x+w, y, r, g, b, a)
    renderer.line(x, y, x, y+h, r, g, b, a)
    renderer.line(x, y+h, x+w, y+h, r, g, b, a)
    renderer.line(x+w, y+h, x+w, y, r, g, b, a)
  end
  
  for i = 0,6,1 do
    renderer_outline( x+i, y+i, w-(i*2), h-(i*2),c[i+1], c[i+1], c[i+1], 200);
  end

 -- transparency background

 renderer_rectangle( x + 6, y + 6, w - 12, h - 12, 25, 25, 25, 245);

 -- creating rainbow variables

 local color = {
   math_floor( math_sin( globals_realtime() * 2) * 127 + 128 ),
   math_floor( math_sin( globals_realtime() * 2 + 2 ) * 127 + 128 ),
   math_floor( math_sin( globals_realtime() * 2 + 4 ) * 127 + 128 )
 }

 renderer_gradient(x + 10, y + 16, w- 20, 2,color[1], color[2], color[3], 255,color[3], color[2], color[1], 255, true)
 renderer_rectangle( x + 10, y + 20, w - 20, h - 30,20, 20,20,245);
 renderer_outline( x + 10, y + 20, w - 20, h - 30 , 40,40,40,245);
end

client.set_event_callback("setup_command", function(c)
    choked_cmd = c.chokedcommands
end)

-- VECTOR / ETC.. FUNCTIONS
function Length2DSqr(vec) return (vec[1]*vec[1] + vec[2]*vec[2]) end
function vecMvec(vec, vec1) return { vec[1]-vec1[1], vec[2]-vec1[2] } end
function ro(num, n) return math.floor(num * 10^(n or 0) + 0.5) / 10^(n or 0) end

function contains(tab, val)
    for index, value in ipairs(ui.get(tab)) do
        if value == val then return true end
    end

    return false
end

function get_player_velocity(Entity)
    local vx = entity.get_prop(Entity, "m_vecVelocity[0]")
    local vy = entity.get_prop(Entity, "m_vecVelocity[1]")

    return math.floor(math.min(10000, math.sqrt(vx*vx + vy*vy) + 0.5))
end

function is_pingspiking()
    return (ui.get(ping) and ui.get(ping_hk))
end

client.set_event_callback("run_command", function(cmd)
    local g_Local = entity.get_local_player()
    if g_Local ~= nil and cmd.chokedcommands == 0 then

        local x, y, z = entity.get_prop(g_Local, "m_vecOrigin")
        vec_data[flip and 0 or 1] = { x, y }

        flip = not flip
        
    end
end)

round = function(num, numDecimalPlaces)

    local mult = 10^(numDecimalPlaces or 0)
    if num >= 0 then return math.floor(num * mult + 0.5) / mult
    else return math.ceil(num * mult - 0.5) / mult end
  
  end

function is_pingspiking()
    return (ui.get(ping) and ui.get(ping_hk))
end

function ping_state(Entity)
    local g_CCSPlayerResource = entity.get_all("CCSPlayerResource")[1]
    local client_latency = entity.get_prop(g_CCSPlayerResource, string.format("%03d", Entity))

    local max_unlag = client.get_cvar("sv_maxunlag") * 1000
    local ping = client_latency <= max_unlag and client_latency or max_unlag

    if not is_pingspiking() then
        ping = 0
    end

    latency = round(ping, 0.005)
    max_unlag = max_unlag / 1000
    decimal = 21 * max_unlag

    return (latency / decimal), client_latency
end

client.set_event_callback("paint", function()

    local axis = {ui_get(menu.x_axis), ui_get(menu.y_axis)}
    local size = { menu.size[1], menu.size[2] }

    if ui_get(menu.indicators) then     
        if contains(is_active, elems[1]) or contains(is_active, elems[2]) or contains(is_active, elems[3]) then
            for i=1,2 do
                if contains(is_active, elems[i]) then
                    size[2] = size[2] + 15
                end
            end
            if contains(is_active, elems[3]) and is_pingspiking() then
                size[2] = size[2] + 15
            end
            renderer_container( axis[1], axis[2], size[1], size[2])
            local text = string_upper("i n d i c a t o r s")
            local width, height = renderer_measure_text("-", text)
            renderer_text(axis[1] + menu.size[1]/2 - width/2,axis[2] + height/.5-14, "-", text )
        end
        
        local g_Local = entity.get_local_player()
        if g_Local == nil or not entity.is_alive(g_Local) then
            return
        end

        local r, g, b = ui.get(picker)
        local x, y =  axis[1] + 85, axis[2] + 27
        
        -- LAG COMP
        local lagcomp = function()
            if contains(is_active, elems[1]) then
                if (vec_data[0] and vec_data[1]) then
                    local shoud_break = get_player_velocity(g_Local) > 280
                    local lag_dst = Length2DSqr(vecMvec(vec_data[0], vec_data[1]))
        
                    lag_dst = lag_dst - 64 * 64 -- m_flTeleportDistanceSqr (4096)
                    lag_dst = lag_dst < 0 and 0 or lag_dst / 30
                    lag_dst = lag_dst > 62 and 62 or lag_dst

                    draw_indicator("lagcomp", x, y, 115, lag_dst, r, g, b)
                    y = y + 15
                end
            end
        end
        lagcomp()
        
        -- PING SPIKE
        local ping = function()
            if contains(is_active, elems[3]) and is_pingspiking() then
                local latency, cl = ping_state(g_Local, pingspike)
                draw_indicator("ping", x, y, 115, latency*2.4, r, g, b)
                y = y + 15
            end
        end
        ping()

        local choke = function()
            if contains(is_active, elems[2]) then
                draw_indicator("choke", x, y, 115, choked_cmd/0.12, r, g, b)
            end
        end
        choke()
    end

end)

client.set_event_callback("paint", function()
  ui_set(menu.drag_key, "On hotkey")

  if not ui_get(menu.indicators) then
      return
  end

  local mouse_in_rect = function(x1, y1, x2, y2)
      local mouse_position = { ui_mouse_position() }
      return (mouse_position[1] >= x1 and mouse_position[1] <= x2 and mouse_position[2] >= y1 and mouse_position[2] <= y2)
  end

  local mouse_position = { ui_mouse_position() }
  local key_state = ui.is_menu_open() and ui_get(menu.drag_key)

  if menu.is_dragging and not key_state then
      menu.is_dragging = false
      menu.ind_x = 0
      menu.ind_y = 0
  end

  if menu.is_dragging then
      local end_x, end_y  = 
          mouse_position[1] - menu.ind_x,
          mouse_position[2] - menu.ind_y 

      if end_x > 0 then ui_set(menu.x_axis, end_x) end
      if end_y > 0 then ui_set(menu.y_axis, end_y) end
  end

  local mpos = {
      ui_get(menu.x_axis),
      ui_get(menu.y_axis)
  }

  if key_state and mouse_in_rect(mpos[1], mpos[2], mpos[1] + menu.size[1], mpos[2] + menu.size[2]) then
      menu.is_dragging = true

      menu.ind_x = mouse_position[1] - ui_get(menu.x_axis)
      menu.ind_y = mouse_position[2] - ui_get(menu.y_axis)
  end
end)

-- callbacks
ui.set_visible(menu.x_axis, false)
ui.set_visible(menu.y_axis, false)
-- end of the code
