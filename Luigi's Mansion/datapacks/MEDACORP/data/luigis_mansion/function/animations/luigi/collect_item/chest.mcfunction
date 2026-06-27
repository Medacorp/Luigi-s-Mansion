execute unless score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/collect_item/normal/chest
execute unless score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/collect_item/normal_shrunk/chest
execute unless score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/collect_item/normal_flipped/chest
execute unless score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/collect_item/normal_flipped_shrunk/chest
execute if score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/collect_item/mirrored/chest
execute if score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/collect_item/mirrored_shrunk/chest
execute if score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/collect_item/mirrored_flipped/chest
execute if score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/collect_item/mirrored_flipped_shrunk/chest