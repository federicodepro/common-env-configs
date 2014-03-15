#Environment Variables
export DESA_DIR='~/Documents/ML-CBK/Desarrollo'

# Aliases
alias goto_admin="cd $DESA_DIR/fraud-chargebackjobs/webserver/"
alias goto_api="cd $DESA_DIR/chargebacks-api/webserver/"
alias goto_frontend="cd $DESA_DIR/chargebacks-frontend/webserver/"
alias batman="ssh fdepro@10.100.41.3"
alias switch_to_grails_137="brew switch grails 1.3.7"
alias switch_to_grails_224="brew switch grails 2.2.4"
alias run_mocks_auth="cd $DESA_DIR/auth-oauth_frontend_mocks && node index.js"
alias run_mp_components_mocks="cd $DESA_DIR/mpsitetool-components/mock && node ."
alias gs_proxy="ssh -D 9091 -C -N -v root@192.81.219.11"
alias goto_salesforce="cd $DESA_DIR/salesforce/crm-sfCode"
