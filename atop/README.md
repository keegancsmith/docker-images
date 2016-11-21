# atop

Simple container for atop. Modified to run every 30s. Run in host pid
namespace. EG

```
$ docker run --rm --name atop --pid host keegancsmith/atop
```

Then to view what it has collected

```
$ docker exec -it atop atop -r
```

TODO: Document how to run on k8s as a daemonset.
