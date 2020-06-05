######################################
# Author: Jerling Li
# Email : linjieli001@qq.com
# Description: install nvim pack
######################################

all:
	@sh scripts/install_deps.sh
	@nvim -c PackUpdate
