scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_beta_mansion:entity.basher.laugh hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute if score #3ds_remake Loaded matches 1.. run scoreboard players set @s Move 5
execute at @s run function luigis_mansion:animations/ghost/normal/laugh
tag @s[scores={ActionTime=40}] add vanish
tag @s[scores={ActionTime=40}] remove attack
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0
execute if score #3ds_remake Loaded matches 1.. at @s facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if score #3ds_remake Loaded matches 1.. at @s positioned ^ ^ ^0.7 unless entity @a[distance=..0.7,scores={Invulnerable=0},tag=!spectator] run function luigis_mansion:entities/ghost/move
execute unless score #3ds_remake Loaded matches 1.. positioned ^ ^ ^0.7 unless entity @a[distance=..0.7,scores={Invulnerable=0},tag=!spectator] run tag @s add stop_attack

execute unless score #3ds_remake Loaded matches 1.. run scoreboard players set @s[tag=stop_attack] ActionTime 0
execute unless score #3ds_remake Loaded matches 1.. run scoreboard players set @s[tag=stop_attack] AnimationProg 0
execute unless score #3ds_remake Loaded matches 1.. run tag @s[tag=stop_attack] remove attack
execute unless score #3ds_remake Loaded matches 1.. run tag @s[tag=stop_attack] remove stop_attack