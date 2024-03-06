tag @s[tag=!full_reset] remove burning
data modify entity @s[tag=!full_reset] ArmorItems[3].tag.luigis_mansion.scan_message set value {sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.shivers.scan.1"}'}
teleport @s[tag=full_reset] 682 11 0
tag @s remove full_reset