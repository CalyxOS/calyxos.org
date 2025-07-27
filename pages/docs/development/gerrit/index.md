---
title: Gerrit Code Review
nav_title: Gerrit
toc: true
redirect_from:
  - /contribute/gerrit/
  - /development/gerrit/
---

We have a Gerrit Code Review Instance now at <https://review.calyxos.org/>

Gerrit makes a lot easier to deal with hundreds of repositories in one place, and also for dealing with changes involving multiple repos.

<br>

### Setup
You will need to register on our Gerrit server and configure some settings to be able to upload changes.

#### Account
1. Visit <https://review.calyxos.org/> - and click Sign in. That will take you to GitHub, where you can approve the request to sign in.
2. Go to <https://review.calyxos.org/settings/#Profile> - and set a Display Name, and note down your username (it will be the same as your GitHub username)
3. Scroll down to <https://review.calyxos.org/settings/#EmailAddresses> - and add the email address you usually use with git. You will need to verify it by clicking on a link sent to the particular email.
4. Scroll down to <https://review.calyxos.org/settings/#SSHKeys> - and enter your SSH public key in the text box. This is what you will use to push code changes to Gerrit.

#### Development Machine
On the system from which you'll be upload changes, you should:
* Add your Gerrit/GitHub username to gitconfig:
  * `git config --add --global review.review.calyxos.org.username myuser # Replace the myuser with your actual username`
  * Note: The double review in 'review.review.' is intentional.
* Install [git-review](https://docs.openstack.org/infra/git-review/):
  * `pip install git-review`

### Workflow

* The repositories are still to be cloned via GitLab just like before - use `git clone https://gitlab.com/CalyxOS/$projectname`
* Gerrit replaces the "Merge Request / Pull Request" workflow.
* Open Changes can be viewed on the main gerrit homepage - <https://review.calyxos.org/>. For more details see [review](#review).

There are two options to upload changes:
1. If you're just working on a specific app or this website ([calyxos.org](https://gitlab.com/CalyxOS/calyxos.org)) or just one git repository you can use the `git-review` to quickly upload changes. See [git-review](#git-review), OR
2. If you're syncing and building CalyxOS, you can use the `repo` tool to upload changes. See [repo](#repo)

#### git-review
* Start a new branch to make your change, `git checkout -b newbranch origin/main`
* Make your changes, and commit them.
* You can now run `git review` to upload them to gerrit.

#### repo
* `repo` is used to sync CalyxOS, this steps are for all the OS repositories.
* Start a new branch to make your change, `repo start newbranch path/to/directory`
* Make your changes, and commit them.
* You can now use the `repo upload` tool to upload them to gerrit.
* You can use the `repopick` tool, available after `source envsetup.sh` - to quickly download changes from gerrit.

#### Review
* You can ask for review using the "Add Review" button on the left.
* You can leave comments on individual files and even the commit message, and hit Reply to Submit
* Reply also has options to set a score.
* Code-Review is used to review the code. +1/-1 are like thumbs up / down. +2 is needed to merge a change, and -2 prevents a change from being merged.
    * Verified is used to indicate if the code builds. We'll have CI for this later, but for now you can mark stuff you compiled as +1, and -1 if it's WiP / doesn't compile yet.
    * Setting Verified+1 and Code-Review+1 on your own changes that you want reviewed / merged is good practice.
* Once a change has at least one Verified +1 and Code-Review +2, it can be submitted using the "Submit" button which then appears.
* A change can also be abandoned if it is no longer needed.

### Tips

#### Topics
* Topics are another way to group changes together, and super useful with something like `repopick -t $topic` to be able to pick a set of changes easily.

#### Change-Id
* Gerrit tracks changes using Change-Ids, which will automatically be added to your commit messages with a hook.
* Change-Ids are unique per-project per-branch, so you can share the Change-Id across projects (for one patch affecting multiple repos), or across branches (porting a previous feature) to keep things easier to track
* Change-Ids are also how it knows whether to update an existing change, or create a new change

### Useful Links
* <https://review.calyxos.org/Documentation/intro-gerrit-walkthrough-github.html>