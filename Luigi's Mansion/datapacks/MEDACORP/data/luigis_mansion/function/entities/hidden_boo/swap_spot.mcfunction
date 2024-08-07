execute as @e[tag=furniture,tag=same_room,tag=can_hide_boo] run function luigis_mansion:entities/hidden_boo/get_options
#todelete - old furniture
$function $(namespace):entities/hidden_boo/swap_spot/$(id)
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"hidden_boo"}}},distance=..0.1,tag=caught_by_boo_radar,limit=1] run kill @s
#/todelete
execute at @e[tag=hide_option,limit=1,sort=random] run teleport @s ~ ~ ~
execute at @s if entity @e[distance=..0.1,tag=hide_option,limit=1] run tag @s add caught_by_boo_radar
execute at @s if entity @e[tag=hide_option,tag=furniture,distance=..0.1,limit=1] run teleport @s ~ ~1.4 ~
execute at @s[tag=caught_by_boo_radar,tag=can_play_sound] run playsound luigis_mansion:entity.boo.hide hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=caught_by_boo_radar] SpawnTime 600
#todelete - old furniture
kill @e[type=minecraft:marker,tag=choice]
#/todelete
tag @e[tag=hide_option] remove hide_option
scoreboard players reset #temp PositionX
scoreboard players reset #temp PositionY
scoreboard players reset #temp PositionZ