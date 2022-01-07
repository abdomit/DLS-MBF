# This line was intended to solve an issue using backspace with vim
# but it creates much more problems
#[[ $- == *i* ]] && stty erase '^?'

source /opt/host/.mbf-env

# Make sure state backup folder exists
if [ -d /opt/host/mbf ]; then
        [[ ! /opt/host/autosave/TMBF ]] && mkdir -p /opt/host/autosave/TMBF
        [[ ! /opt/host/autosave/TFIT ]] && mkdir -p /opt/host/autosave/TFIT
fi

padding='                                        '
PADDED_HOSTNAME=$(printf "%s %s" "$HOSTNAME" "${padding:${#HOSTNAME}}")

if [ -n "$WELCOME_MESSAGE" ]; then
	return
fi

export WELCOME_MESSAGE="done"

echo ""
echo ""
echo "  ╔══════════════════════════════════════════════════════════════════════════╗"
echo "  ║                                                                          ║"
echo "  ║                     WELCOME on $PADDED_HOSTNAME ║"
echo "  ║                   ┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉                             ║"
echo "  ║                                                                          ║"
echo "  ║  This is a multi-bunch feedback (MBF) crate.                             ║"
echo "  ║                                                                          ║"
echo "  ║  This server should ONLY host multi-bunch feedback servers.              ║"
echo "  ║  Be aware that it runs some EPICS devices.                               ║"
echo "  ║                                                                          ║"
echo "  ║  For more information please consult:                                    ║"
echo "  ║  https://confluence.esrf.fr/pages/viewpage.action?pageId=5768745         ║"
echo "  ║                                                                          ║"
echo "  ║                                                                          ║"
echo "  ╚══════════════════════════════════════════════════════════════════════════╝"
echo ""
echo ""

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/operation/common/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/operation/common/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/operation/common/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/operation/common/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

conda activate py37-mbf
