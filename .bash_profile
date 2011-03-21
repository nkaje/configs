###############################


###############################

export PATH=$PATH:~/bin


alias wk='cd /local/mnt/workspace'
export EDITOR=vi
alias exportfastboot='export PATH=$PATH:/local/mnt/workspace/androidmainlatest/out/host/linux-x86/bin/'
alias adrno='croot; cd vendor/qcom/proprietary/gles/adreno200'
alias sbrc='source ~/.bashrc'
alias ogltest='croot; cd frameworks/base/opengl/tests/'

alias gterr='git tag | grep error'
alias gs='git status'
alias gt='git tag'

alias gpush='git push ssh://${USER}@review-android.quicinc.com:29418/graphics/adreno200 HEAD:refs/for/master'


alias setkernel='export KERNELDIR=/usr/src/linux-headers-2.6.32-26-generic; echo $KERNELDIR'
alias fb='fastboot'

alias im='sudo /sbin/insmod'
alias rmod='sudo /sbin/rmmod'

alias dmsg='sudo cat /proc/kmsg'
alias sg='sudo git'
alias gtg='git tag | grep err'
alias gt='git tag'

alias combos='choosecombo 1 1 msm8660_surf eng'
alias fbd='fastboot devices'
source ~/git-completion.bash
