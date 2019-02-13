Current plan is based on https://gitlab.com/fdroid/fdroidclient/issues/1546

TODO: Write this down in detail, alongwith updates.

--------------------------------------------------------------------------------------------------------------------------------------------

In addition to the above, I propose having an offline repo containing all of the apps we're bundling.

That way, if for some reason internet access isn't available, we can still install a version of the apps current at the time of the build.

The flow:
* Setup a low priority F-Droid repo on the vendor partition, containing a single version of the apps we want to bundle.
* Offer to install them during setup (based on the above proposal), and they would also show up in the normal F-Droid app.
* If internet access is available and a newer version is available, that would be downloaded, otherwise our version would get installed.

TODOs:
- [ ] Figure out best way to setup the local repo, and then set it up.
- [ ] See if we're shipping any apps in the main F-Droid or Guardian Project repos, and if we have any modifications we absolutely need.
- [ ] Deal with conflicts with those (probably just different signing key should work.)

Links:
* https://gitlab.com/fdroid/fdroidclient/merge_requests/769