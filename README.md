# Directus Pterodactyl Egg

This repository contains a Pterodactyl egg for running Directus, a real-time API and app dashboard for managing SQL databases. With this egg, you can easily deploy Directus inside a Pterodactyl server. You can choose between SQLite and MySQL databases via environment variables.

## Table of Contents
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Updating](#updating)
- [Contributing](#contributing)
- [License](#license)

## Features
- Deploy Directus inside a Pterodactyl server
- Support for SQLite and MySQL databases
- Easy configuration via environment variables

## Requirements
- A running instance of [Pterodactyl Panel](https://pterodactyl.io)
- Pterodactyl Daemon (Wings) installed on your server
- Docker installed on the server where Pterodactyl Daemon is running

## Installation
1. Download the egg JSON file from this repository.
2. Log in to your Pterodactyl Panel as an administrator.
3. Navigate to the "Nests" section and create a new nest if you don't have one.
4. Create a new egg within the nest, using the JSON file you downloaded.
5. Configure the startup script and environment variables as required.
6. Save the egg and create a new server using this egg.

## Usage
Once the server is created and started, Directus will be available on the port specified in your Pterodactyl configuration. You can access the Directus admin panel by navigating to your server's IP address and port in a web browser.

## Updating
To update Directus, you need to update the Directus version in the `package.json` file and restart the server. The `start.sh` script will handle the update process automatically.

1. Open the `package.json` file and change the Directus version to the desired version.
2. Save the `package.json` file.
3. Restart the server.

The `start.sh` script will update Directus to the specified version automatically.

## Contributing
We welcome contributions to this project! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
