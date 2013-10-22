
def gen_expect_add(src0, src1):
	return (src0+src1) & 0xFFFFFFFF;

def gen_expect_sub(src0, src1):
	return (src0-src1) & 0xFFFFFFFF;

def gen_expect_mull(src0, src1):
	return (src0*src1) & 0xFFFFFFFF;




def gen_expect_mulh(src0, src1):
	return ((src0*src1) >> 32) & 0xFFFFFFFF;

def gen_expect_div(src0, src1):
	tmp0 = src0;
	tmp1 = src1;

	if(src0 >> 31):
		src0 = -((~src0)+1);
	if(src1 >> 31):
		src1 = -((~src1)+1);
	result = 0xffffffff & (src0/src1);
	return result;


def gen_expect_udiv(src0, src1):
	return (src0/src1) & 0xFFFFFFFF;


def gen_expect_mod(src0, src1):
	if(src0 >> 31):
		src0 = -((~src0)+1);
	if(src1 >> 31):
		src1 = -((~src1)+1);
	result = 0xffffffff & (src0%src1);

	return result;

def gen_expect_umod(src0, src1):
	return (src0%src1) & 0xFFFFFFFF;

def gen_expect_neg(src1):
	return ((~src1) + 1) & 0xFFFFFFFF;

def gen_expect_max(src0, src1):
	if(src0 > src1):
		return src0;
	else:
		return src1;

def gen_expect_min(src0, src1):
	if(src0 > src1):
		return src1;
	else:
		return src0;

def gen_expect_and(src0, src1):
	return src0 & src1;

def gen_expect_or(src0, src1):
	return src0 | src1;

def gen_expect_xor(src0, src1):
	return src0 ^ src1;

def gen_expect_hi16(src1):
	return (src1 >> 16) & 0xffffffff;

def gen_expect_lo16(src1):
	return src1 & 0x0000ffff;
	
def gen_expect_hihi8(src1):
	return (src1 >> 24) & 0x000000ff;

def gen_expect_hilo8(src1):
	return (src1 >> 16) & 0x000000ff;

def gen_expect_lohi8(src1):
	return (src1 >> 8) & 0x000000ff;

def gen_expect_lolo8(src1):
	return src1 & 0x000000ff;






def gen_expect_clear():
	return 0;

def gen_expect_set():
	return 0xffffffff;

"""
def gen_expect_clear_bit(src0):
	return src0 ^ 
"""

def gen_expect_rev_byte(src0):
	tmp = src0 & 0xffffffff;
	return ((tmp & 0xff) << 24) | ((tmp >> 8 & 0xff) << 16) | ((tmp >> 16 & 0xff) << 8) | (tmp >> 24 & 0xff);

def gen_expect_rev_bit(src0):
	result = 0;
	for cnt in range(32):
		result = (result << 1) | (src0 >> (31-cnt) & 0x1);
	return result;


