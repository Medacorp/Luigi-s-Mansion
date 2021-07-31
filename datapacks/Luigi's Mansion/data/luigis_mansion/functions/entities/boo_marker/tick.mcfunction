execute if entity @a[tag=same_room,gamemode=!spectator,limit=1] run tag @s add spawn_boo
scoreboard players add @s Time 1
tag @s[tag=dead] remove dead
execute if entity @s[tag=spawn_boo] run function #luigis_mansion:entities/hidden_boo/spawn
execute if entity @s[scores={Time=600},tag=!dead] run function #luigis_mansion:entities/boo_marker/warp
tag @s[scores={Time=600}] add dead