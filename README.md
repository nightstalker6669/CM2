# CM2 Application

## Overview
The CM2 application is a Lua script that facilitates interaction with the Minecolonies mod via the CC:tweaked mod and the colony integrator from the Advanced Peripherals mod in Minecraft. It provides a comprehensive method for gathering and supplying information about citizens in a Minecolonies colony.

## Features
- Information retrieval about citizens using `getCitizens()` function.
- In-memory storage of citizen information.
- Real-time data provision to other Lua scripts.
- Detailed action logging and a toggleable debug mode.

## User Stories
- Users can retrieve information about citizens in the colony.
- The script avoids using persistent data storage, ensuring that data is held in memory only.
- Real-time citizen information can be supplied to other Lua scripts on demand.
- All script actions are logged for review.
- Users can toggle the debug mode for additional logging details useful in troubleshooting.

## Technologies
- Lua programming language.
- Minecraft mods: CC:Tweaked, Advanced Peripherals, and Minecolonies.

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
```

## Usage
Implement the CM2 script in your Minecraft modded environment to facilitate the collection and use of citizen information from your Minecolonies colony. Reference the `example_usage.lua` for a basic example of how to interact with the CM2 API.

## Contributing
Your contributions are welcome! If you'd like to improve the CM2 application or suggest features, please follow standard Github procedures by forking the repository, making changes, and submitting a pull request.

## License
The CM2 application is open source and freely available for modification and redistribution, in accordance with the MIT License.

## Contact
For issues, suggestions, or contributions, feel free to open an issue or pull request on the project's Github repository.

## Acknowledgements
Special thanks to the creators and maintainers of CC:Tweaked, Advanced Peripherals, and Minecolonies mods, which made this project possible.