scoreboard players operation @s LastRoom = @s Room
$execute unless score #$(name) Ticking matches 1 if score #debug_messages Selected matches 2.. run tellraw @a {type:"translatable",translate:"luigis_mansion:message.debug.format",with:[{type:"translatable",translate:"luigis_mansion:message.debug",color:"gold"},{type:"translatable",translate:"luigis_mansion:message.debug.boo_load_room",with:[{type:"selector",selector:"@s"},{type:"text",text:"$(name)"}]}]}
$execute unless score #$(name) Ticking matches 1 run function $(namespace):room/$(mansion)/$(name)/load_boos
$execute unless score #$(name) Ticking matches 1 run function #$(namespace):room/$(mansion)/$(name)/load
$data modify storage luigis_mansion:data temp set value $(warp_options)
data modify storage luigis_mansion:data warp_options set value []
execute if data storage luigis_mansion:data temp[-1] run function luigis_mansion:entities/boo/countdown_warp/check_condition with storage luigis_mansion:data temp[-1]
$scoreboard players set #temp Time $(old_slots)
$execute as @e[scores={Room=$(room)},tag=can_hide_boo] run scoreboard players add #temp Time 1
$execute as @e[scores={Room=$(room)},tag=hidden_boo] run scoreboard players remove #temp Time 1
execute if score #temp Time matches 1.. run tag @s add can_hide
$execute if data storage luigis_mansion:data current_state.current_data.rooms.$(name){cleared:1b} run tag @s[tag=can_hide] add transform_to_hidden_boo
data modify storage luigis_mansion:data temp set value {value:0,paths:[]}
$data modify storage luigis_mansion:data temp.paths set value $(warp_options)
execute store result storage luigis_mansion:data temp.value int 1 run data get storage luigis_mansion:data warp_options
execute if data storage luigis_mansion:data temp{value:0} run scoreboard players set #temp Time 0
execute if data storage luigis_mansion:data temp{value:1} run scoreboard players set #temp Time 1
execute unless data storage luigis_mansion:data temp{value:0} unless data storage luigis_mansion:data temp{value:1} run function luigis_mansion:entities/boo/countdown_warp/select_path with storage luigis_mansion:data temp
execute store result storage luigis_mansion:data temp.value int 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
execute unless data storage luigis_mansion:data temp{value:-1} if entity @s[tag=!can_hide] run function luigis_mansion:entities/boo/countdown_warp/use_path with storage luigis_mansion:data temp
$execute if data storage luigis_mansion:data temp{value:-1} if entity @s[tag=!can_hide] run scoreboard players set @s LastRoom $(fallback_room)
execute if data storage luigis_mansion:data temp{value:-1} if entity @s[tag=!can_hide] if score #debug_messages Selected matches 1.. run tellraw @a {type:"translatable",translate:"luigis_mansion:message.debug.format",with:[{type:"translatable",translate:"luigis_mansion:message.debug",color:"gold"},{type:"translatable",translate:"luigis_mansion:message.debug.boo_no_paths",with:[{type:"selector",selector:"@s"},{type:"nbt",source:"storage",storage:"luigis_mansion:data",nbt:"temp.paths"},{type:"score",score:{name:"@s",objective:"LastRoom"}}]}]}
data remove storage luigis_mansion:data temp
data remove storage luigis_mansion:data warp_options
