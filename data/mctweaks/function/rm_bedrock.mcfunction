execute if dimension minecraft:overworld run tellraw @s {"bold":true,"color":"#d63e3e","text":"Hey, this item can only be used in the Nether!"}
execute if dimension minecraft:the_end run tellraw @s {"bold":true,"color":"#d63e3e","text":"Hey, this item can only be used in the Nether!"}
execute at @s if dimension the_nether unless block ~ ~-1 ~ bedrock run tellraw @s {"bold":true,"color":"#d63e3e","text":"No Bedrock found!"}
execute at @s if dimension the_nether if block ~ ~-1 ~ bedrock run tellraw @s {"bold":true,"color":"green","text":"Bedrock removed!"}
execute if block ~ ~-1 ~ bedrock if dimension the_nether as @s run clear @s stone_pickaxe[enchantment_glint_override=true,food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000000}] 1
execute if dimension the_nether at @s run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:air replace minecraft:bedrock
schedule function mctweaks:reset 10t