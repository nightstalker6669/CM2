# CM2 Application

## Overview
The CM2 application is a Lua script designed for the Minecraft mod CC:tweaked, enhancing the minecolonies experience. It interfaces with the colony integrator provided by the advanced peripherals mod to gather and supply data about a Minecolonies colony. Main functionalities include real-time citizen data retrieval and in-memory data management.

## Features
- Real-time retrieval of citizen information from a Minecolonies colony.
- In-memory storage system for quick access and manipulation of citizen data.
- A logging mechanism that records all actions made by the script.
- Toggleable debug mode for advanced logging and troubleshooting.

## User Stories
- Users can access information about citizens in a Minecraft colony through the `getCitizens()` function.
- Citizen data is stored temporarily in memory, removed from persistence concerns.
- Real-time citizen information is available for other Lua scripts.
- Developers have access to a log of all script actions.
- Debug mode can be easily activated for in-depth script analysis.

## Technologies Used
- Lua Programming Language
- CC:Tweaked (ComputerCraft modification)
- Advanced Peripherals Mod
- Minecolonies Mod

## File Structure
```
/startup.lua
/citizens.lua
/memory_store.lua
/api.lua
/example_usage.lua
/logger.lua
/debug_toggle.lua
/commands/debug_command.lua
/citizens/citizens.lua
/citizens/get_formatted_citizen_data.lua
/colony_data.lua
```

## Installation
1. Install Minecraft with the aforementioned mods.
2. Copy the provided Lua scripts into your ComputerCraft computer's directory.
3. On the in-game computer, execute `/startup.lua` to activate the CM2 application.

## Usage
For examples of the CM2 application usage, please refer to the `/example_usage.lua` script. This demonstrates how to interact with the CM2 API to perform tasks, such as retrieving citizen data in the Minecraft colony.

## How to Contribute
Contributions are welcome! To contribute:
1. Fork the project repository.
2. Create a new branch for your feature.
3. Commit and push your changes to your branch.
4. Submit a pull request with your changes.

## License
CM2 is open source and available under the MIT License - see the LICENSE file for details.

## Contact
For issues, feature requests, or contributions, please use the GitHub repository's issue tracker or pull request feature.

## Acknowledgements
A special thanks to the creators and communities of CC:Tweaked, Advanced Peripherals, and Minecolonies for making this integration possible.
