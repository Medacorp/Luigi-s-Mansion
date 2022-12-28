execute if entity @s[scores={IdleTime=..-1},tag=idle] run function luigis_mansion:entities/player/animation/set/none
scoreboard players add @s[scores={PoltergustTime=..10}] PoltergustTime 1
scoreboard players set @s[tag=instant_poltergust_grab] PoltergustTime 11
summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PosY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ
execute at @e[tag=home,limit=1] run tp @s ~ 0 ~
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~
kill @e[tag=home,limit=1]
execute if entity @s[scores={PoltergustTime=1},tag=!gooigi] run playsound luigis_mansion:entity.player.grab_poltergust player @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={PoltergustTime=..10}] add was_grabbing_poltergust
tag @s[scores={PoltergustTime=11}] remove was_grabbing_poltergust
tag @s[scores={PoltergustTime=11}] add poltergust_grabbed