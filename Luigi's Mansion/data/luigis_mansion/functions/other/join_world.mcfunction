give @s minecraft:carrot_on_a_stick{HideFlags:63,Unbreakable:1b,Damage:1,CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion:item.flashlight"}'},luigis_mansion:{id:"luigis_mansion:flashlight"}}
give @s minecraft:filled_map{HideFlags:63,map:0,CustomModelData:0,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion:item.contest_reward_map"}'},luigis_mansion:{id:"luigis_mansion:contest_reward_map"}}
teleport @s 889 90 -134 -180 0
attribute @s minecraft:generic.max_health base set 100
effect give @s minecraft:instant_health 1 19 true
scoreboard players set @s ForcedDamage 0
scoreboard players set @s Health 100
scoreboard players set @s MaxHealth 100
scoreboard players set @s MusicType 0
scoreboard players set @s ForcedDamage -101
scoreboard players set @s Damage 1
scoreboard players set @s TotalDamage 0
scoreboard players set @s LastTotalDamage 0
scoreboard players set @s Sound 0
gamemode adventure @s
tag @s add joined
function luigis_mansion:other/log_on