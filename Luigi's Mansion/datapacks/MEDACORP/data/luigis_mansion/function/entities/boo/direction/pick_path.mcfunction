data modify storage luigis_mansion:data temp set value {value:0,paths:[]}
data modify storage luigis_mansion:data temp.paths set from entity @s data.warp_options
execute store result storage luigis_mansion:data temp.value int 1 run data get entity @s data.warp_options
execute if data storage luigis_mansion:data temp{value:0} run scoreboard players set #temp Time 0
execute if data storage luigis_mansion:data temp{value:1} run scoreboard players set #temp Time 1
execute unless data storage luigis_mansion:data temp{value:0} unless data storage luigis_mansion:data temp{value:1} run function luigis_mansion:entities/boo/direction/select_path with storage luigis_mansion:data temp
execute store result storage luigis_mansion:data temp.value int 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
tellraw @a ["Picked path: ",{nbt:"temp.value",storage:"luigis_mansion:data"}]
execute unless data storage luigis_mansion:data temp{value:-1} run function luigis_mansion:entities/boo/direction/use_path with storage luigis_mansion:data temp
tellraw @a ["Using path: ",{nbt:"data.boo_target",entity:"@s"}]
execute if data storage luigis_mansion:data temp{value:-1} run function luigis_mansion:entities/boo/hide
execute if data storage luigis_mansion:data temp{value:-1} if score #debug_messages Selected matches 1.. run tellraw @a {type:"translatable",translate:"luigis_mansion:message.debug.format",with:[{type:"translatable",translate:"luigis_mansion:message.debug",color:"gold"},{type:"translatable",translate:"luigis_mansion:message.debug.boo_no_paths.hide",with:[{type:"selector",selector:"@s"},{type:"nbt",source:"storage",storage:"luigis_mansion:data",nbt:"temp.paths"}]}]}
data remove storage luigis_mansion:data temp
scoreboard players set @s BooTimer 0