import json
import random
import os

# 1. Load the items from your dirt.json
dirt_path = 'data/minecraft/loot_table/blocks/dirt.json'
lang_output = 'assets/minecraft/lang/en_us.json'

# Ensure the output directory exists
os.makedirs(os.path.dirname(lang_output), exist_ok=True)

def generate_glitch_text():
    # Creates bytecode/hex style glitch text
    prefix = random.choice(["§k", "§4", "§0", "§f"])
    hex_code = "".join(random.choice("0123456789ABCDEF") for _ in range(4))
    return f"{prefix}0x{hex_code}§r_§k{random.randint(100,999)}§r"

try:
    with open(dirt_path, 'r') as f:
        data = json.load(f)
    
    # Navigate the JSON structure to find the item names
    item_list = []
    for pool in data.get("pools", []):
        for entry in pool.get("entries", []):
            item_name = entry.get("name", "").replace("minecraft:", "")
            if item_name:
                item_list.append(item_name)

    # 2. Build the lang dictionary
    glitched_lang = {}
    for item in item_list:
        glitched_lang[f"item.minecraft.{item}"] = generate_glitch_text()
        glitched_lang[f"block.minecraft.{item}"] = generate_glitch_text()
    
    # Add some extra spice for the UI
    glitched_lang["menu.singleplayer"] = "§4§l[§fSYSTEM_FAILURE§4§l]"
    glitched_lang["menu.multiplayer"] = "§k0000000000"

    # 3. Save the en_us.json
    with open(lang_output, 'w') as f:
        json.dump(glitched_lang, f, indent=2)

    print(f"SUCCESS: Pulled {len(item_list)} items from dirt.json and corrupted them!")

except Exception as e:
    print(f"ERROR: {e}")
