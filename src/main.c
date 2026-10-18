#include <stdio.h>

int main(void) {
    FILE *f = fopen("/proc/uptime", "r");
    if (!f) {
        perror("Failed to read /proc/uptime");
        return 1;
    }

    double seconds;
    if (fscanf(f, "%lf", &seconds) == 1) {
        printf("System Uptime: %.1f minutes\n", seconds / 60.0);
    }

    fclose(f);
    return 0;
}