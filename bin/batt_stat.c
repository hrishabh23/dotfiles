#include<stdio.h>

int main(){
    FILE *fptr;
    int now, full;
    char status;

    // For current energy level of the battery
    fptr = fopen("/sys/class/power_supply/BAT0/energy_now", "r");
    if(!fptr){
        puts("ERR");
        return 1;
    }
    
    fscanf(fptr, "%d", &now);
    fclose(fptr);

    // For full-capacity energy level of the battery
    fptr = fopen("/sys/class/power_supply/BAT0/energy_full", "r");
    if(!fptr){
        puts("ERR");
        return 1;
    }
    
    fscanf(fptr, "%d", &full);
    fclose(fptr);

    // For state of the battery, one of {charging, discharging, not charging}
    fptr = fopen("/sys/class/power_supply/BAT0/status", "r");
    if(!fptr){
        puts("ERR");
        return 1;
    }
    
    fscanf(fptr, "%c", &status);
    fclose(fptr);
    
    switch(status){
        case 'D': status='-'; break;
        case 'C': status='+'; break;
        case 'N': status='='; break;
        default: status='?';
    }

    full/=100;
    int pcent = now/full;
    printf("%d%%%c\n", pcent, status);

    return 0;
}
