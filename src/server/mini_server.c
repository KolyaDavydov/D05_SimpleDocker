#include <fcgi_stdio.h>
#include <stdlib.h>

// https://lectureswww.readthedocs.io/5.web.server/fcgi.html

int main(void) {
    while(FCGI_Accept() >= 0) {
        printf("Content-type: text/html\r\nStatus: 200 OK\r\n\r\nHello World!");
    }
    return 0;
}
