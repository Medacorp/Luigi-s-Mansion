tag @s remove flashlight
tag @s remove flashlight_selected
tag @s[tag=!poltergust_selected,nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}}] add flashlight_selected
tag @s[tag=flashlight_selected,scores={UseItem=1..,StrobulbCharge=0},tag=!grabbed] add flashlight_off
tag @s[tag=flashlight_selected,scores={UseItem=1..,StrobulbCharge=1..},tag=!grabbed] remove flashlight_off
tag @s[tag=!flashlight_selected,scores={StrobulbCharge=1..}] remove flashlight_off
scoreboard players set @s[tag=flashlight_selected,scores={UseItem=1..}] UseItem 0
tag @s[tag=!grabbed,tag=!gameboy_horror_selected,tag=!poltergust_selected,tag=!flashlight_off,tag=dark_room] add flashlight
scoreboard players add @s[tag=flashlight_selected,tag=flashlight_off,scores={StrobulbCharge=..19},tag=dark_room] StrobulbCharge 1
execute if entity @s[scores={StrobulbCharge=1..}] run function luigis_mansion:entities/player/animation/set/no_idle
execute if entity @s[tag=flashlight_selected,tag=!flashlight_off,scores={StrobulbCharge=1..20},tag=flashlight] run function luigis_mansion_3ds_remake:items/flashlight/effects/small_flash
execute if entity @s[tag=flashlight_selected,tag=!flashlight_off,scores={StrobulbCharge=20},tag=flashlight] run function luigis_mansion_3ds_remake:items/flashlight/effects/large_flash
execute if entity @s[tag=!gameboy_horror_selected,tag=!poltergust_selected,tag=flashlight,scores={StrobulbCharge=21..}] run function luigis_mansion:items/flashlight/effects/create_light
execute if entity @s[scores={StrobulbCharge=0}] run function luigis_mansion_3ds_remake:items/flashlight/weak_shine_direction
execute if entity @s[scores={StrobulbCharge=1..20},tag=flashlight_off] run function luigis_mansion_3ds_remake:items/flashlight/effects/weak_light
scoreboard players set @s[tag=flashlight_selected,tag=!flashlight_off,scores={StrobulbCharge=1..20}] StrobulbCharge 21
scoreboard players add @s[tag=flashlight_selected,tag=!flashlight_off,scores={StrobulbCharge=21..}] StrobulbCharge 1
execute unless entity @s[scores={StrobulbCharge=1..40},tag=!grabbed] run scoreboard players set @s StrobulbCharge 0
tag @s[tag=grabbed] remove flashlight_off