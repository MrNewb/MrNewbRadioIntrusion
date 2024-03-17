# MrNewbRadioIntrusion Resource

MrNewbRadioIntrusion is a resource designed to enhance the radio communication experience within your FiveM server. It offers seamless integration with various frameworks and inventory systems, providing an immersive and dynamic radio communication environment for your players.

## Compatibility

This resource is compatible with the following frameworks and inventory systems:

- **Frameworks**:
  - QB Framework
  - ESX Framework

- **Inventory Systems**:
  - qb-inventory
  - ox_inventory

- **Voice Chat Plugins**:
  - pma-voice
  - Salty Chat

## Installation

To install MrNewbRadioIntrusion, follow these steps:

1. Download the resource from the [GitHub repository](https://github.com/MrNewb/MrNewbRadioIntrusion/releases).
2. Extract the downloaded ZIP file.
3. Place the extracted folder into the `resources` directory of your FiveM server.
4. Add `ensure MrNewbRadioIntrusion` to your server configuration file (`server.cfg`).

## Item Configuration for ox_inventory
```lua

	["zipper9"] = {
		label = "Zipper 9",
		weight = 200,
		stack = false,
		close = true,
	},

```
## Item Configuration for qb-core
```lua

	['zipper9'] 			= {['name'] = 'zipper9', 			    ['label'] = 'Zipper 9', 		    		 ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'zipper9.png',								['unique'] = true, 	['useable'] = true, 		['shouldClose'] = true,	   ['combinable'] = nil,                     ['description'] = 'Zipper 9'},

```