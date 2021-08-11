# Instructions to use utility scripts

NB. `.` is root of `PoliWebex` rep

1. Put links in `./links/links.md`
2. Use `./bin/cluster-dl-links.sh LINKS_FILE` at root of rep to download all links in links file
3. Use `./bin/ls-failed-link-dls.sh > links/failed-links.md` to list failed links and store them.
4. Run `./bin/clusted-dl-links.sh links/failed-links.md` until there are no more failed links left (repeat 3. to find out).
