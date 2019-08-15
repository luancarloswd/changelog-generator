#!/usr/bin/env bash
previous_tag=0
urlBaseProject=$(git remote get-url origin)
urlProject=$(echo ${urlBaseProject/.git/''})
nameProject=$(basename `git rev-parse --show-toplevel`)

printf "# Changelog Project - [${nameProject}]($urlProject)\n\n\n"

for current_tag in $(git tag --sort=-refname)
do

if [ "$previous_tag" != 0 ];then
    tag_date=$(git log -1 --pretty=format:'%ad' --date=short ${previous_tag})
    printf "## [${previous_tag}](${urlProject}/tree/${previous_tag}) (${tag_date})\n\n\n"
    git log ${current_tag}...${previous_tag} --date=short --pretty=format:'* [%s]('$urlProject'/commit/%H) - %an - %cd' --reverse | grep -v Merge | tail -n 5 
    printf "\n\n"
fi
previous_tag=${current_tag}
done