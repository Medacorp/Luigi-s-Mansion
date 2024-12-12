$execute at @s[scores={Health=71..,Shrunk=0},tag=!gooigi] run playsound $(high) player @a[tag=same_room] ~ ~ ~ 1
$execute at @s[scores={Health=71..,Shrunk=1..},tag=!gooigi] run playsound $(high) player @a[tag=same_room] ~ ~ ~ 1 2
$execute at @s[scores={Health=41..70,Shrunk=0},tag=!gooigi] run playsound $(medium) player @a[tag=same_room] ~ ~ ~ 1
$execute at @s[scores={Health=41..70,Shrunk=1..},tag=!gooigi] run playsound $(medium) player @a[tag=same_room] ~ ~ ~ 1 2
$execute at @s[scores={Health=..40,Shrunk=0},tag=!gooigi] run playsound $(low) player @a[tag=same_room] ~ ~ ~ 1
$execute at @s[scores={Health=..40,Shrunk=1..},tag=!gooigi] run playsound $(low) player @a[tag=same_room] ~ ~ ~ 1 2
$scoreboard players add @s[tag=!gooigi] Sound $(duration)