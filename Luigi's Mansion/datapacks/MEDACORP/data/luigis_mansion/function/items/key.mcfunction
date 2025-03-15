$function $(namespace):items/key/$(id) with entity @s data
playsound luigis_mansion:item.key.obtain player @a[tag=same_room] ~ ~ ~ 1
execute as @a[tag=same_room] unless entity @s[tag=!looking_at_map,tag=!spectator,nbt={Inventory:[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}] run scoreboard players reset @s OpenMapFocus
execute as @a[tag=same_room,scores={OpenMapFocus=1..}] run function luigis_mansion:entities/player/run_command_as_model {command:"scoreboard players set @s OpenMapTime 20"}