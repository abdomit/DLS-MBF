# This line was intended to solve an issue using backspace with vim
# but it creates much more problems
#[[ $- == *i* ]] && stty erase '^?'

source /opt/host/.mbf-env
export EPICS_BASE
export EPICS_HOST_ARCH
export EPICS_CA_MAX_ARRAY_BYTES
export EPICS_CA_AUTO_ADDR_LIST
export EPICS_CA_ADDR_LIST
export EPICS_CA_NAME_SERVERS

# Load MiniConda env in interactive session
if [ -f "/operation/common/miniconda/etc/profile.d/conda.sh" ]; then
    source "/operation/common/miniconda/etc/profile.d/conda.sh"
    export PATH="$PATH:/operation/common/miniconda/bin"
    CONDA_CHANGEPS1=True
    conda activate $CONDA_ENV
fi

