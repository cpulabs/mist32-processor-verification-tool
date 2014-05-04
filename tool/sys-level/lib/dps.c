
dps_utim64 *dps_utim64_init(int id){
	uint32 iosr = iosr_load();

	if(id == 0){
		return (dps_utim64 *)(iosr);
	}else if(id == 1){
		return (dps_utim64 *)(iosr + 0x40);
	}else{
		return NULL;
	}
}


void dps_utim64_enable(dps_utim64 *utim64){
	utim64->mcfg |= 1;
}

void dps_utim64_disable(dps_utim64 *utim64){
	utim64->mcfg &= 0;
}

