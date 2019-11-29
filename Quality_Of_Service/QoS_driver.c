void changeAllToBestEffort(){
    volatile int* ddr_qos_ctrl = 0xFD090000;
    volatile int* ddr_qos_en_throttle = 0xFD090004;
    volatile int* hrd_tres = 0xFD090008;
    volatile int* lrd_tres = 0xFD09000C;
    volatile int* wr_tres = 0xFD090010;
    *ddr_qos_ctrl = 0x45;
    *ddr_qos_en_throttle = 0x00400000;
    *hrd_tres = 0;
    *lrd_tres = 0;
    *wr_tres = 0;
}
//the QoS priorities are values in the range of 0-15 (larger value means higher priority)
void setHP0ReadPriority(int newPriority){
    volatile int* read_priorityHP0 = 0xFD380008;
    *read_priorityHP0 = newPriority;
}
void setHP0WritePriority(int newPriority){
    volatile int* write_priorityHP0 = 0xFD38001C;
    *write_priorityHP0 = newPriority;
}
void setHP1ReadPriority(int newPriority){
    volatile int* read_priorityHP1 = 0xFD390008;
    *read_priorityHP1 = newPriority;
}
void setHP1WritePriority(int newPriority){
    volatile int* write_priorityHP1 = 0xFD39001C;
    *write_priorityHP1 = newPriority;
}
void setHP2ReadPriority(int newPriority){
    volatile int* read_priorityHP2 = 0xFD3A0008;
    *read_priorityHP2 = newPriority;
}
void setHP2WritePriority(int newPriority){
    volatile int* write_priorityHP2 = 0xFD3A001C;
    *write_priorityHP2 = newPriority;
}
void setHP3ReadPriority(int newPriority){
    volatile int* read_priorityHP3 = 0xFD3B0008;
    *read_priorityHP3 = newPriority;
}
void setHP3WritePriority(int newPriority){
    volatile int* write_priorityHP3 = 0xFD3B001C;
    *write_priorityHP3 = newPriority;
}