tag @s remove flashlight
tag @s remove flashlight_selected
tag @s[tag=!poltergust_selected,nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}}] add flashlight_selected
tag @s[tag=flashlight_selected,scores={UseItem=1..,StrobulbCharge=0},tag=!grabbed] add flashlight_off
tag @s[tag=flashlight_selected,scores={UseItem=1..,StrobulbCharge=1..},tag=!grabbed] remove flashlight_off
scoreboard players set @s[tag=flashlight_selected,scores={UseItem=1..}] UseItem 0
execute unless entity @s[scores={StrobulbCharge=0..20},tag=dark_room] run scoreboard players set @s StrobulbCharge 0
scoreboard players set @s[tag=!flashlight_off,scores={StrobulbCharge=..9}] StrobulbCharge 0
scoreboard players add @s[tag=flashlight_off,scores={StrobulbCharge=..9}] StrobulbCharge 1
scoreboard players add @s[tag=!flashlight_off,scores={StrobulbCharge=10..}] StrobulbCharge 1
tag @s[tag=!grabbed,tag=!gameboy_horror_selected,tag=!poltergust_selected,tag=!flashlight_off,tag=dark_room] add flashlight
tag @s[tag=!flashlight_off,scores={StrobulbCharge=10..},tag=dark_room] add flashlight
execute if entity @s[tag=!flashlight_off,scores={StrobulbCharge=10..},tag=flashlight] anchored eyes run particle minecraft:flash ^ ^ ^1.5 0 0 0 0 2 force
execute if entity @s[scores={StrobulbCharge=1..}] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[tag=!flashlight_off,scores={StrobulbCharge=10..},tag=flashlight] run function luigis_mansion:items/flashlight/shine_direction
execute unless entity @s[scores={StrobulbCharge=3..}] run function luigis_mansion_3ds_remake:items/flashlight/weak_shine_direction
tag @s remove had_flashlight_on
tag @s[tag=flashlight] add had_flashlight_on