execute unless entity @a[tag=same_room,limit=1] run tag @s add clear_room
scoreboard players operation #temp Room = @s Room
execute if entity @s[tag=clear_room] as @a run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
$execute at @s[scores={Health=71..,Shrunk=0},tag=!gooigi] run playsound $(high) player @a[tag=same_room,tag=!this_player] ~ ~ ~ 1
$execute at @s[scores={Health=71..,Shrunk=1..},tag=!gooigi] run playsound $(high) player @a[tag=same_room,tag=!this_player] ~ ~ ~ 1 2
$execute at @s[scores={Health=41..70,Shrunk=0},tag=!gooigi] run playsound $(medium) player @a[tag=same_room,tag=!this_player] ~ ~ ~ 1
$execute at @s[scores={Health=41..70,Shrunk=1..},tag=!gooigi] run playsound $(medium) player @a[tag=same_room,tag=!this_player] ~ ~ ~ 1 2
$execute at @s[scores={Health=..40,Shrunk=0},tag=!gooigi] run playsound $(low) player @a[tag=same_room,tag=!this_player] ~ ~ ~ 1
$execute at @s[scores={Health=..40,Shrunk=1..},tag=!gooigi] run playsound $(low) player @a[tag=same_room,tag=!this_player] ~ ~ ~ 1 2
$execute at @s[scores={Health=71..,Shrunk=0},tag=!gooigi] run playsound $(high_self) player @a[tag=this_player,limit=1] ~ ~ ~ 1000
$execute at @s[scores={Health=71..,Shrunk=1..},tag=!gooigi] run playsound $(high_self) player @a[tag=this_player,limit=1] ~ ~ ~ 1000 2
$execute at @s[scores={Health=41..70,Shrunk=0},tag=!gooigi] run playsound $(medium_self) player @a[tag=this_player,limit=1] ~ ~ ~ 1000
$execute at @s[scores={Health=41..70,Shrunk=1..},tag=!gooigi] run playsound $(medium_self) player @a[tag=this_player,limit=1] ~ ~ ~ 1000 2
$execute at @s[scores={Health=..40,Shrunk=0},tag=!gooigi] run playsound $(low_self) player @a[tag=this_player,limit=1] ~ ~ ~ 1000
$execute at @s[scores={Health=..40,Shrunk=1..},tag=!gooigi] run playsound $(low_self) player @a[tag=this_player,limit=1] ~ ~ ~ 1000 2
$scoreboard players add @s[tag=!gooigi] Sound $(duration)
execute if entity @s[tag=clear_room] run tag @a[tag=same_room] remove same_room
execute if entity @s[tag=clear_room] run tag @a[tag=exact_same_room] remove exact_same_room
tag @s remove clear_room