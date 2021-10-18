give @s minecraft:diamond_pickaxe{HideFlags:63,Damage:5,Unbreakable:1b,CustomModelData:29,display:{Name:'{"italic":false,"color":"white","translate":"luigis_mansion:item.contest_reward_map"}'},luigis_mansion:{id:"luigis_mansion:contest_reward_map"}}
teleport @s 858 90 -38 0 0
attribute @s minecraft:generic.max_health base set 100
effect give @s minecraft:instant_health 1 19 true
scoreboard players set @s ForcedDamage 0
scoreboard players set @s Health 100
scoreboard players set @s MaxHealth 100
function luigis_mansion:other/music/set/silence
scoreboard players set @s ForcedDamage 0
scoreboard players set @s Damage 0
scoreboard players set @s TotalDamage 0
scoreboard players set @s LastTotalDamage 0
scoreboard players set @s Sound 0
scoreboard players set @s Walk 0
scoreboard players set @s WalkOnWater 0
scoreboard players set @s WalkUnderWater 0
scoreboard players set @s Run 0
scoreboard players set @s Sneak 0
scoreboard players set @s Sneaking 0
scoreboard players set @s SneakTime 0
scoreboard players set @s Room 0
gamemode adventure @s
tag @s add joined
tag @s add fix_health
function luigis_mansion:other/save_luigi_color
function luigis_mansion:other/log_on