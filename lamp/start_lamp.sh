# stdout server info
cat << INFO

    ************************************************
    *                                              *
    *    Docker * Simple LAMP Image                *
    * https://github.com/b-malone/Dockerfiles/lamp *
    *                                              *
    ************************************************

    NGINX SERVER SETTINGS
    ---------------
    · Log Level [LOG_LEVEL]: $LOG_LEVEL
    · PHP date timezone [DATE_TIMEZONE]: $DATE_TIMEZONE

INFO


# Run Nginx
sudo systemctl start nginx
