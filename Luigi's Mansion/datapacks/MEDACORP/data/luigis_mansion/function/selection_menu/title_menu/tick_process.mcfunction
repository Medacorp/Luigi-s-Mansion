execute unless data storage luigis_mansion:data macro.namespace run data modify storage luigis_mansion:data macro.namespace set value "luigis_mansion"
data modify storage luigis_mansion:data macro.short_id set string storage luigis_mansion:data macro.id 0 13
execute if data storage luigis_mansion:data macro{short_id:"show_settings"} run data modify storage luigis_mansion:data macro.settings_id set from storage luigis_mansion:data macro.id
execute if data storage luigis_mansion:data macro{short_id:"show_settings"} run data modify storage luigis_mansion:data macro.id set from storage luigis_mansion:data macro.short_id
data remove storage luigis_mansion:data macro.short_id