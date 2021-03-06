# Git & GitHub Process

1. Clone the project: `git clone <ssh or HTTPS url to the repo`, found under the green `code` button at the top right of the project main page.
2. Claim an issue on the [project board](https://github.com/RosanneUssery/food-rescue-robot-v2/projects/1) by clicking on an issue and adding yourself under `assignees` and move the card into the `in progress` column on the project board.
3. Create a branch with the name of the issue: `git checkout -b <name of branch goes here>` (for example, `git clone -b R-Add-Volunteer-Query`)
4. Make your changes (including unit tests!) on your branch. You can commit/push as many times as you would like to your branch to keep track of your changes and updates.
5. To commit, first check what files have been changed with `git status`
6. Enter `git add <path to filename` OR `git add .` to add the files you want to commit. If you use the latter, BE VERY CAREFUL as it will add all changed files to your commit. Be sure you want to do that by examining the list provided by `git status` in the step prior. For example, if you see a change to the `schema.rb` file and you didn't intend to make changes to the database schema, don't commit those changes (and it is recommended to revert them).
7. Type `git commit -m "<commit notes go here>"`. Make sure your commit notes reflect the changes you have made so you have a record of what you've done in case you need to revert or go to a previous version of your changes.
8. To push your changes to GitHub, enter `git push origin <name of your branch>` (e.g. `git push origin R-Add-Volunteer-Query`). This should give you a url to look at your PR request, or you can go to GitHub's Pull Requests tab to see your pull request and changes.
9. If the PR is new, fill out the PR request template in the appropriate section with the information listed in the commented out markdowns. Add labels as appropriate on the right side and connect your issue to the PR request if it is not already attached.
10. Move the project board issue into the `review` column.
11. Once your PR request is live, one or two of your fellow developers will leave a PR review, either accepting your changes or requesting revisions to align it with the path of the project.
12. If changes are requested, make those changes and commit/push them as above. If you have received an approval with no comments for improvement, go ahead and squash and merge your branch to `main` using the GitHub interface.
13. Move the project board issue into the `done` column once the PR is merged.
