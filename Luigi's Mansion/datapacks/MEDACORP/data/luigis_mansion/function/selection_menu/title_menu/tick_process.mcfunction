execute unless data storage luigis_mansion:data macro.namespace run data modify storage luigis_mansion:data macro.namespace set value "luigis_mansion"
data modify storage luigis_mansion:data macro.short_id set string storage luigis_mansion:data macro.id 0 13
execute if data storage luigis_mansion:data macro{short_id:"show_settings"} run data modify storage luigis_mansion:data macro.settings_id set from storage luigis_mansion:data macro.id
execute if data storage luigis_mansion:data macro{short_id:"show_settings"} run data modify storage luigis_mansion:data macro.settings_namespace set from storage luigis_mansion:data macro.namespace
execute if data storage luigis_mansion:data macro{short_id:"show_settings"} run data modify storage luigis_mansion:data macro.id set value "show_settings"
data remove storage luigis_mansion:data macro.short_id
data modify storage luigis_mansion:data macro.short_action set string storage luigis_mansion:data macro.action 0 13
execute if data storage luigis_mansion:data macro{short_action:"show_settings"} run data modify storage luigis_mansion:data macro.settings_action set from storage luigis_mansion:data macro.action
execute if data storage luigis_mansion:data macro{short_action:"show_settings"} run data modify storage luigis_mansion:data macro.settings_namespace set from storage luigis_mansion:data macro.namespace
execute if data storage luigis_mansion:data macro{short_action:"show_settings"} run data modify storage luigis_mansion:data macro.action set value "show_settings_action"
data remove storage luigis_mansion:data macro.short_action
execute if data storage luigis_mansion:data macro.settings_namespace run data modify storage luigis_mansion:data macro.namespace set value "luigis_mansion"