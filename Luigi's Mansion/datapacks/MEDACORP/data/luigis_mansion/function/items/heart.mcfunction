execute store result score #temp Health run data get entity @s ArmorItems[3].components."minecraft:custom_data".variant
execute as @e[tag=collector,scores={Sound=0,Health=41..99,Shrunk=0},limit=1] unless score @s Health = @s MaxHealth run function luigis_mansion:entities/luigi/run_command_at_owner {command:"playsound luigis_mansion:entity.player.healed.high_health player @s ~ ~ ~ 1"}
execute as @e[tag=collector,scores={Sound=0,Health=41..99,Shrunk=1..},limit=1] unless score @s Health = @s MaxHealth run function luigis_mansion:entities/luigi/run_command_at_owner {command:"playsound luigis_mansion:entity.player.healed.high_health player @s ~ ~ ~ 1 2"}
execute as @e[tag=collector,scores={Sound=0,Health=..40,Shrunk=0},limit=1] unless score @s Health = @s MaxHealth run function luigis_mansion:entities/luigi/run_command_at_owner {command:"playsound luigis_mansion:entity.player.healed.low_health player @s ~ ~ ~ 1"}
execute as @e[tag=collector,scores={Sound=0,Health=..40,Shrunk=1..},limit=1] unless score @s Health = @s MaxHealth run function luigis_mansion:entities/luigi/run_command_at_owner {command:"playsound luigis_mansion:entity.player.healed.low_health player @s ~ ~ ~ 1 2"}
execute as @e[tag=collector,limit=1] unless score @s Health = @s MaxHealth run function luigis_mansion:entities/luigi/make_sound/conditional {high:"luigis_mansion:entity.player.healed.high_health",medium:"luigis_mansion:entity.player.healed.high_health",low:"luigis_mansion:entity.player.healed.low_health",duration:15}
scoreboard players operation @e[tag=collector,limit=1] Health += #temp Health
execute as @e[tag=collector,limit=1] if score @s Health > @s MaxHealth run scoreboard players operation @s Health = @s MaxHealth
execute as @e[tag=collector,limit=1] run function luigis_mansion:entities/luigi/health/sync
scoreboard players reset #temp Health
playsound luigis_mansion:item.heart.obtain player @a[tag=same_room] ~ ~ ~ 1