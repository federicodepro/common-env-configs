#Environment Variables
export DESA_DIR='~/Documents/ML-CBK/Desarrollo'
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
export PATH=$PATH:~/bin
export EDITOR='subl -w'

# Aliases
alias goto_desa="cd $DESA_DIR"
alias goto_admin="cd $DESA_DIR/fraud-chargebackjobs/webserver/"
alias goto_es="cd $DESA_DIR/fraud-chargebackjobs/es/"
alias goto_api="cd $DESA_DIR/chargebacks-api/webserver/"
alias goto_frontend="cd $DESA_DIR/chargebacks-frontend/webserver/"
alias batman="ssh fdepro@10.100.41.3"
alias switch_to_grails_137="brew switch grails 1.3.7"
alias switch_to_grails_224="brew switch grails 2.2.4"
alias switch_to_grails_221="brew switch grails 2.2.1"
alias run_mocks_auth="cd $DESA_DIR/auth-oauth_frontend_mocks && node index.js"
alias run_mp_components_mocks="cd $DESA_DIR/mpsitetool-components/mock && node ."
alias gs_proxy="ssh -D 9091 -C -N -v root@192.81.219.11"
alias goto_salesforce="cd $DESA_DIR/crm-sfCode"
alias fuck_the_police="ssh grooveshark@107.170.53.34 -D 5556 -N -f"

desa2deploy(){
git checkout deploy
git diff --name-only $@ | awk '{system("git checkout desa -- " $1)}'
}
