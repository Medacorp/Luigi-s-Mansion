scoreboard players set @s TargetTask 0
scoreboard players set @s SpawnTime 0
scoreboard players add @s ActionTime 1
$execute if entity @s[scores={ActionTime=1}] run playsound $(namespace):entity.$(id).spawn hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1}] as @e[tag=same_room,tag=game_boy_horror_location,distance=..5] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if entity @s[scores={ActionTime=1}] as @a[tag=!spectator,distance=..5] run function luigis_mansion:entities/player/animation/set/scare/normal
execute if entity @s[scores={ActionTime=1}] run function luigis_mansion:blocks/dust_no_sound
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"appear/normal"}
data remove entity @s[scores={ActionTime=30}] data.animation
tag @s[scores={ActionTime=30}] remove appear
scoreboard players set @s[scores={ActionTime=30}] ActionTime 0
