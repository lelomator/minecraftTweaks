execute as @e[type=item] at @s unless entity @s[tag=ready] if block ~ ~-1 ~ diamond_block run tag @s add cost
execute as @e[type=item] at @s unless entity @s[tag=ready] if block ~ ~-1 ~ diamond_block run effect give @p minecraft:blindness 2 1 true
execute as @e[type=item] at @s unless entity @s[tag=ready] if block ~ ~-1 ~ diamond_block run tellraw @a[distance=..5] "Wenn der Blindness Effekt vorrüber ist, ist dein Item fertig!"
execute as @e[type=item] at @s unless entity @s[tag=ready] if block ~ ~-1 ~ diamond_block run data merge entity @s {Item:{components:{"minecraft:lore":['{"italic":false,"text":"Repair Cost removed!"}'],"minecraft:rarity":"uncommon","minecraft:repair_cost":0}}}
execute as @e[type=item] at @s unless entity @s[tag=ready] if block ~ ~-1 ~ diamond_block run tag @s add ready


#data remove entity @s Item.tag.RepairCost