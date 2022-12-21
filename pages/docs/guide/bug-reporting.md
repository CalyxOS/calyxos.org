# Using the CalyxOS Issue Tracker
CalyxOS keeps track of issues and feature requests using [GitLab issues](https://gitlab.com/CalyxOS/calyxos/-/issues). From here, you can search for existing issues, subscribe to notifications for changes, thumbs-up to indicate that you are also affected/interested, or leave comments if you have additional information. (Note that most interactions require a GitLab account, but general browsing and some searching/filtering is available without one.)

If you can't find an issue that represents your problem, please create a new one!

## Creating a new issue
NOTE: Any issue you create is public by default. If you would like to submit an issue confidentially, use the checkbox that starts with "This issue is confidential" before submitting.

1. At the [CalyxOS issue tracker](https://gitlab.com/CalyxOS/calyxos/-/issues), click the **New issue** button.
2. (Optional) Select a Description that best represents what you are reporting, e.g. a Bug or Feature Request.
3. Fill out the issue template to the best of your ability. Unless you mark the issue as confidential, make sure not to include any confidential information, such as bug report files or potentially sensitive log lines, as these should be reported separately and privately, as described later.
4. When you are finished, click **Create issue**.

## Capturing and submitting a bug report
In some cases, a CalyxOS developer may ask you to provide additional debugging information. Please note that bug reports contain sensitive information, so it is important that you do *not* attach them to your public GitLab issue!

Here's how to capture and share a bug report file:
1. Open the **Settings** app and visit **System** -> **Other options**.
2. Tap **Bug report**. Keep "Interactive report" selected, and tap **Report**.
3. Wait for a notification that the system has completed capturing the bug report.
4. Open the **Settings** app and visit **System** -> **Other options** again.
5. Tap **View bug reports** to open the Files app to a list of Bug report files, temporarily allowing access to these files.
6. Create a ***confidential issue*** at [CalyxOS's GitLab](https://gitlab.com/CalyxOS/calyxos/-/issues), referencing your existing public issue number, and upload the most recent bugreport zip file using the attachment icon (📎).
    - If using your Android device to upload the file, you can access the bug reports via the three-line menu and scrolling to / tapping the Bug reports section. You will need to attach the most recent bugreport zip file, which will be multiple megabytes (MB) in size.
    - If using your PC, you will need to share or copy the most recent bugreport zip file out of the Bug reports section.
7. Ensure that you have checked the box that begins with "This issue is confidential", and then click **Create issue**.

## Who can see confidential issues?
Only [CalyxOS team members](https://gitlab.com/groups/CalyxOS/-/group_members) can view confidential issues.