#!/bin/bash

# Script 8-cwd_state
echo -e "#!/bin/bash\nls -la > ls_cwd_content" > 8-cwd_state
chmod +x 8-cwd_state

# Script 9-duplicate_last_line
echo -e "#!/bin/bash\ntail -n 1 iacta >> iacta" > 9-duplicate_last_line
chmod +x 9-duplicate_last_line

# Script 10-no_more_js
echo -e "#!/bin/bash\nfind . -type f -name \"*.js\" -exec rm {} +" > 10-no_more_js
chmod +x 10-no_more_js

echo "Scripts created: 8-cwd_state, 9-duplicate_last_line, 10-no_more_js"

