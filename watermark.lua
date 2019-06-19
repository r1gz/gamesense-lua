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

local screen_size = { client_screen_size() }

local menu = {
  anti_untrusted = ui_reference("Misc", "Settings", "Anti-untrusted"),
  watermark = ui_new_checkbox("Visuals", "Effects", "Watermark"),
  drag_key = ui_new_hotkey("Visuals", "Effects", "Watermark", true),
      -- Menu data
      x_axis = ui.new_slider("VISUALS", "Effects", "\n spectator_posx", 0, 8192, 350, false),
      y_axis = ui.new_slider("VISUALS", "Effects", "\n spectator_posy", 0, 8192, 5, false),
  
      size = { 245, 150 },
      is_dragging = false,
      drag_x = 0, drag_y = 0,
}

local frametimes = {}
local fps_prev = 0
local value_prev = {}
local last_update_time = 0

local white_col = 255, 255, 255, 255

local text = function(x,y,format,text)
  return renderer_text(x,y,255,255,255,255,format,0,text)
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

round = function(num, numDecimalPlaces)

  local mult = 10^(numDecimalPlaces or 0)
  if num >= 0 then return math.floor(num * mult + 0.5) / mult
  else return math.ceil(num * mult - 0.5) / mult end

end


accumulate_fps = function()
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

client.set_event_callback("paint", function()
local fps = accumulate_fps()

local x = offset_x >= 0 and offset_x or screen_size[1] + offset_x
local y = offset_y >= 0 and offset_y or screen_size[2] + offset_y

local size ={ 270,50 }

if ui_get(menu.watermark) then

  renderer_container( x-270, y, size[1], size[2])

  local pos = {x - size[1] + 15, x - size[1]+size[1]/2-23, y+7 }

  text(pos[2],pos[3],"-",string_upper("g a m e s e n s e"))

-- fps

  text(pos[1],y+23," ","FPS: " .. fps)

-- ping

  local ping = math_min(999, client_latency() * 1000)
  ping = round(ping, 0)
  local ping_r, ping_g, ping_b = white_col
  local max_ping = 200

  if not ui_get(menu.anti_untrusted) then
    max_ping = 100
  end

  if ping > max_ping then
    ping_r, ping_g, ping_b = 255, 0, 0
  end

  text(pos[1]+55,y+23," ","PING: " .. ping)

--speed

  local local_player = entity_get_local_player()
  local vel_x, vel_y = entity_get_prop(local_player, "m_vecVelocity")

  if vel_x ~= nil then
    local velocity = math_sqrt(vel_x*vel_x + vel_y*vel_y)

    velocity = math_min(9999, velocity) + 0.2
    velocity = round(velocity, 0)

    text(pos[1]+115,y+23," ","SPEED: " .. velocity)
  end

--tickrate

  local tickrate = 1/globals_tickinterval()

  text(pos[1]+185,y+23," ","RATE: " .. tickrate)

  local spec_screensize = { ui_get(menu.x_axis), ui_get(menu.y_axis) }

--specators

local spectators = {}

  for player =1, globals.maxplayers() do
    if entity.get_classname(player) == "CCSPlayer" then
      local observer_target = entity.get_prop(player, "m_hObserverTarget")
      if observer_target ~= nil then
        if spectators[observer_target] == nil then
          spectators[observer_target] = {}
        end
        table.insert(spectators[observer_target], player)
      end
    end
  end
  
  local local_player = entity.get_local_player()
  local my_spectators = {}
  local widthspec = 30
  local total_spectators = 0
  local a = 0

  for player=1, globals.maxplayers() do
    if not entity.is_dormant(player) and entity_get_prop(player, "m_hObserverTarget") == local_player then
      table.insert(my_spectators, entity.get_player_name(player))
    end
  end

  for i=1, #my_spectators do
    widthspec = i * 16 + 40
    total_spectators = i
  end
  if total_spectators > 0 then
  renderer_container(spec_screensize[1], spec_screensize[2], 200,  widthspec)
  text(spec_screensize[1] + 70 , spec_screensize[2] +7 ,"-",string_upper("s p e c t a t o r s") .. "( " .. total_spectators .. " )")

  for i=1, #my_spectators do
    text(spec_screensize[1] + 100, spec_screensize[2] + 15 + i * 16,"c",my_spectators[i])
  end
end
if ui.is_menu_open() then
  renderer_container(spec_screensize[1], spec_screensize[2], 200,  50)
  text(spec_screensize[1] + 70 , spec_screensize[2] +7 ,"-",string_upper("s p e c t a t o r s"))
end
end
end)

client.set_event_callback("paint", function()
  ui_set(menu.drag_key, "On hotkey")

  if not ui_get(menu.watermark) then
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
      menu.drag_x = 0
      menu.drag_y = 0
      return
  end

  if menu.is_dragging then
      local end_x, end_y = 
          mouse_position[1] - menu.drag_x,
          mouse_position[2] - menu.drag_y

      if end_x > 0 then ui_set(menu.x_axis, end_x) end
      if end_y > 0 then ui_set(menu.y_axis, end_y) end
  end

  local mpos = {
      ui_get(menu.x_axis),
      ui_get(menu.y_axis)
  }

  if key_state and mouse_in_rect(mpos[1], mpos[2], mpos[1] + menu.size[1], mpos[2] + menu.size[2]) then
      menu.is_dragging = true

      menu.drag_x = mouse_position[1] - ui_get(menu.x_axis)
      menu.drag_y = mouse_position[2] - ui_get(menu.y_axis)
  end
end)

-- callbacks
ui.set_visible(menu.x_axis, false)
ui.set_visible(menu.y_axis, false)
-- end of the code
