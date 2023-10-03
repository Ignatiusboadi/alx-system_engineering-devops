#!/bin/bash

# Task 1: Count directories and sub-directories
echo -e '#!/bin/bash\nfind . -mindepth 1 -type d | wc -l' > 11-directories
chmod +x 11-directories

# Task 2: Display 10 newest files
echo -e '#!/bin/bash\nls -lt | awk '\''{print $9}'\'' | head -n 10' > 12-newest_files
chmod +x 12-newest_files

# Task 3: Print unique words
echo -e '#!/bin/bash\nsort | uniq -u' > 13-unique
chmod +x 13-unique

# Task 4: Display lines containing "root" from /etc/passwd
echo -e '#!/bin/bash\ngrep "root" /etc/passwd' > 14-findthatword
chmod +x 14-findthatword

# Task 5: Count lines containing "bin" in /etc/passwd
echo -e '#!/bin/bash\ngrep -c "bin" /etc/passwd' > 15-countthatword
chmod +x 15-countthatword

# Task 6: Display lines containing "root" and 3 lines after them from /etc/passwd
echo -e '#!/bin/bash\ngrep -A 3 "root" /etc/passwd' > 16-whatsnext
chmod +x 16-whatsnext

# Task 7: Display lines not containing "bin" from /etc/passwd
echo -e '#!/bin/bash\ngrep -v "bin" /etc/passwd' > 17-hidethisword
chmod +x 17-hidethisword

# Task 8: Display lines starting with a letter from /etc/ssh/sshd_config
echo -e '#!/bin/bash\ngrep "^[a-zA-Z]" /etc/ssh/sshd_config' > 18-letteronly
chmod +x 18-letteronly

# Task 9: Replace A and c with Z and e respectively
echo -e '#!/bin/bash\ntr "Ac" "Ze"' > 19-AZ
chmod +x 19-AZ

# Task 10: Remove letters c and C
echo -e '#!/bin/bash\ntr -d "cC"' > 20-hiago
chmod +x 20-hiago

# Task 11: Reverse input
echo -e '#!/bin/bash\nrev' > 21-reverse
chmod +x 21-reverse

# Task 12: Display users and home directories, sorted by users from /etc/passwd
echo -e '#!/bin/bash\nawk -F: '\''{print $1, $6}'\'' /etc/passwd | sort' > 22-users_and_homes
chmod +x 22-users_and_homes

# Task 13: Find empty files and directories and display names
echo -e '#!/bin/bash\nfind . -empty -exec basename {} \;' > 100-empty_casks
chmod +x 100-empty_casks

# Task 14: List .gif files, sorted by byte values, case-insensitive
echo -e '#!/bin/bash\nfind . -type f -name "*.gif" -exec basename {} .gif \; | sort -f' > 101-gifs
chmod +x 101-gifs

# Task 15: Decode acrostics
echo -e '#!/bin/bash\nawk '\''{print substr($0,1,1)}'\'' | tr -d "\\n"' > 102-acrostic
chmod +x 102-acrostic

# Task 16: Parse web server logs and display top 11 hosts by requests
echo -e '#!/bin/bash\nawk '\''{print $1}'\'' | sort | uniq -c | sort -nr | head -n 11' > 103-the_biggest_fan
chmod +x 103-the_biggest_fan

echo "Scripts created: 11-directories, 12-newest_files, 13-unique, 14-findthatword, 15-countthatword, 16-whatsnext, 17-hidethisword, 18-letteronly, 19-AZ, 20-hiago, 21-reverse, 22-users_and_homes, 100-empty_casks, 101-gifs, 102-acrostic, 103-the_biggest_fan"

