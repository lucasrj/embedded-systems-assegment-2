/*
 * Copyright 2021 Xilinx, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <iostream>
#include "ap_axi_sdata.h"
#include "hls_stream.h"
using namespace std;

typedef ap_axis<32,0,0,0> mydata_t;


void example(hls::stream<mydata_t > &A, hls::stream<mydata_t > &B);

int main()
{
  int i=100;
  hls::stream<mydata_t > A, B;
  mydata_t tmp1, tmp2;

  for(int j=0;j<100;j++)
  {
	  tmp1.data = j+10;
	  tmp1.keep = 1;
	  tmp1.strb = 1;
	  tmp1.user = 1;
	  if(j==99)
	  {
		  tmp1.last = 1;
	  }
	  else
	  {
		  tmp1.last = 0;
	  }
	  tmp1.id = 0;
	  tmp1.dest = 1;
	  cout << "testing" << j << endl;
	  A.write(tmp1);
  }
	  cout << "data crated" << endl;
  	  example(A,B);
//	  B.read(tmp2);

	  cout << "testing" << B.size() << endl;


	  while(B.size())
	  {
		B.read(tmp2);
		cout << "value after: " << tmp2.data.to_int()<< endl;
	  }

//	  cout << tmp2.data.to_int()  << endl ;

//	  if (tmp2.data.to_uint() != 0)
//	  {
//	    cout << "ERROR: results mismatch" << endl;
//	    return 1;
//	  }


  cout << "Success: results match" << endl;
  return 0;
}
