# allow `homestead up` to run `vagrant up` within the Homestead directory
# from anywhere; you can pass any flag or command though
function homestead() {
    ( cd ~/Projects/Homestead && vagrant $* )
}
