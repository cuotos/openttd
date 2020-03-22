# Quick Dirty Openttd Docker

Openttd will save all its config in `/root/.openttd` mount this for peristence.

Run it once then you can go and edit the config file.

Pass the env arg `LASTSAVE` in order to lookup the latest file in the last save dir and load that on start

`docker run --rm -ti -p 3979:3979/udp -p 3979:3979/tcp -v $(pwd)/openttd:/openttd cuotos/openttd`

