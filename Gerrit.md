We have a Gerrit Code Review Instance now at https://review.calyxos.org/

Gerrit makes a lot easier to deal with hundreds of repositories in one place, and also for dealing with changes involving multiple repos.

### Getting: Started ###
1) Visit https://review.calyxos.org/ - and click Sign in. That will take you to GitHub, where you can approve the request to sign in. (GitLab oauth plugin was broken at time of deploy)
2) Go to https://review.calyxos.org/settings/#Profile - and set a Display Name, and note down your username (will be the same as your GitHub username)
3) Scroll down to https://review.calyxos.org/settings/#EmailAddresses - and add an email address or two. You will need to verify them by clicking on a link sent to the particular email.
4) Scroll down to https://review.calyxos.org/settings/#SSHKeys - and add an SSH key. This is what you will use to push code changes to Gerrit.
5) Add your Gerrit/GitHub username to gitconfig - `git config --add --global review.review.calyxos.org.username $USERNAME` - the double review in review.review. is intentional

### Workflow: ###

This is divided into two parts, one for those working on the AOSP / CalyxOS code, and another for any other supporting repositories

#### CalyxOS: ####
* If you had the source code synced before October, you should download the files `old-new` and `repo.sh` from https://git.io/JUb6h to your checkout (where you ran repo init / sync) - and then run repo.sh
* For new checkouts, it will work out of the box
* You can use the 'repo upload' tool to upload changes.
* You can use the 'repopick' tool, available after 'source envsetup.sh' - to quickly download changes from gerrit.

#### Calyx: ####
* We use a tool called 'git-review' for these repos, available from https://docs.openstack.org/infra/git-review/
* This is configured by a '.gitreview' file in the root of the repo, which has already been added to all the relevant repos
* Make your changes, and then simply run 'git review' to upload them to gerrit.

### Common: ###
* Open Changes can be viewed on the main gerrit homepage - https://review.calyxos.org/

TODO:
* Change-Ids
* Code-Review +1/-1 +2/-2
* Verified +1/-1
* Submit
* Abandon
* Topics