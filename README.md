## Broker

A docker based template for web development.

The template creates a single container which runs all required services.

### Prerequisites

1. Linux (AMD64)
2. Docker
3. [Task](https://taskfile.dev)

### Installation

1. Download the repository
2. Edit [Taskfile.yml](./Taskfile.yml)
3. Edit [Dockerfile](./image/Dockerfile)
4. Run `task rebuild`
5. Open the configured IP address in your browser.

Note that the IP address may be whatever you like but make sure it belongs the subnet you configured in the Task file.
It can be helpful to map the IP address to a hostname using /etc/hosts file.
```
172.30.0.1 example.local
```
New containers can be attached to the same network or to a distinct one for better isolation.

### Usage

```
task start connect
```
