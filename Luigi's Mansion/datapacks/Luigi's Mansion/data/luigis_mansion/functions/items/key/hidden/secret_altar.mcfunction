data modify storage luigis_mansion:data current_state.current_data.obtained_keys merge value {secret_altar:1b}
scoreboard players set @a[tag=same_room,tag=!looking_at_map,nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}]}] OpenMapFocus 28
playsound luigis_mansion:item.key.obtain player @a[tag=same_room] ~ ~ ~ 1
playsound luigis_mansion:item.key.get_area music @a[tag=same_room] ~ ~ ~ 1
execute as @a[tag=same_room,scores={Music=..70}] unless entity @s[scores={HealthMusic=1..}] run scoreboard players set @s Music 70
scoreboard players set @a[tag=same_room,tag=!looking_at_map,tag=!spectator,nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}]}] OpenMapTime 70
execute as @a[tag=same_room] unless entity @s[tag=!looking_at_map,tag=!spectator,nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}]}] run scoreboard players reset @s OpenMapFocus