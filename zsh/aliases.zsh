#Environment Variables
export DESA_DIR='~/Desarrollo'
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
export PATH=$PATH:~/bin
export EDITOR='subl -w'

# Aliases
alias desa="cd $DESA_DIR"
alias admin="cd $DESA_DIR/fraud-chargebackjobs/webserver"
alias admin_front="cd $DESA_DIR/fraud-chargebacks_admin_frontend/webserver"
alias identity="cd $DESA_DIR/auth-identity_validation_api/webserver"
alias identity_front="cd $DESA_DIR/fury_identity-validation-frontend"
alias admin_es="cd $DESA_DIR/fraud-chargebackjobs/es/"
alias chargebacks_api="cd $DESA_DIR/chargebacks-api/webserver"
alias chargebacks_frontend="cd $DESA_DIR/chargebacks-frontend/webserver"
alias uniqueness_score="cd $DESA_DIR/fraud-account_uniqueness_score/webserver"
alias batman="ssh -i ~/.ssh/fdepro.pem fdepro@10.100.41.3"
alias switch_to_grails_137="brew switch grails 1.3.7"
alias switch_to_grails_224="brew switch grails 2.2.4"
alias switch_to_grails_221="brew switch grails 2.2.1"
alias run_mocks_auth="cd $DESA_DIR/auth-oauth_frontend_mocks && node index.js"
alias run_mp_components_mocks="cd $DESA_DIR/mpsitetool-components/mock && node ."
alias goto_salesforce="cd $DESA_DIR/crm-sfCode"
alias fuck_the_police="ssh grooveshark@107.170.53.34 -D 5556 -N -f"
alias grails="execute_grails_version grails"

function execute_grails_version() {
   GRAILS_CMD=$1
   shift
   if [ -f application.properties ]; then
       GRAILS_VERSION=`grep app.grails.version application.properties | sed -E 's/.*=(.*)/\1/'`
       echo "[GRAILS ALIAS] application.properties found, using \$GRAILS_VERSION of $GRAILS_VERSION"
       sdk use grails $GRAILS_VERSION
   else
       echo "[GRAILS ALIAS] application.properties NOT FOUND!"
   fi

   $GRAILS_HOME/bin/$GRAILS_CMD $*
}

desa2deploy(){
git checkout deploy
git diff --name-only $@ | awk '{system("git checkout desa -- " $1)}'
}
