# barotrauma-server

Simple and glance docker implementation of Barotrauma Dedicated server

## How to use?
* Change configs at your `gamefiles` directory
* Add permissions to `gamefiles/Data/clientpermissions.xml`
* Add mods to `gamefiles/Daedalic Entertainment GmbH`

And just run with

```sh
docker-compose -f docker-compose.deploy.yml up -d
```

### Or in pure
Copy `serversettings.xml`, `Data` and `Daedalic Entertainment GmbH` to the `gamefiles`

Run the command

```
docker pull ghcr.io/disinterpreter/barotrauma-server:latest
docker-compose -f docker-compose.deploy.yml up -d
```

And have fun :)
