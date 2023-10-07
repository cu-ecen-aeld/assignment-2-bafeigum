#include <stdio.h>
#include <syslog.h>

int main(int argc, char *argv[] ){
    FILE *fp;

    if (argc != 3) {
       syslog(LOG_MAKEPRI(LOG_USER,LOG_ERR), "You must provide 2 arguments.");
       return 1;
    }

    syslog(LOG_MAKEPRI(LOG_USER,LOG_DEBUG), "Writing %s to %s.", argv[2], argv[1]);
    fp = fopen(argv[1], "w");
    fprintf(fp, "%s",argv[2]);
    fclose(fp);
}