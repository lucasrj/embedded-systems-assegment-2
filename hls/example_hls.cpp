#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include <iostream>

typedef ap_axis<32,0,0,0> mydata_t;


void example(hls::stream< mydata_t > &A,
	     hls::stream< mydata_t > &B)
{
	#pragma HLS INTERFACE axis port=A
	#pragma HLS INTERFACE axis port=B
	#pragma HLS INTERFACE s_axilite port=return bundle=AXI_CPU

	mydata_t tmp;

	do
	{
		A.read(tmp);
		tmp.data = 255 - tmp.data.to_int();
		B.write(tmp);
	}while(!tmp.last);


}
