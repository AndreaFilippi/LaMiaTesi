#!/usr/bin/env python
# -*- coding: utf-8 -*-
# 
# Copyright 2018 <+YOU OR YOUR COMPANY+>.
# 
# This is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
# 
# This software is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this software; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.
# 

import numpy
from gnuradio import gr

class rsaRx_py_fb(gr.sync_block):
    """
    docstring for block rsaRx_py_fb
    """
    def __init__(self, d, n):
	self.d = d
	self.n = n
        gr.sync_block.__init__(self,
            name="rsaRx_py_fb",
            in_sig=[numpy.int32],
            out_sig=[numpy.int8])


    def work(self, input_items, output_items):
        in0 = input_items[0]
        out = output_items[0]
	
	for i in range(0,len(in0)):
		resi = long(in0[i])%self.n
		res = resi
		for count in range(1,self.d):
			res = (res*(in0[i]%self.n))%self.n
		print ("messaggio decodificato (rx): " + str(res) + " da " + str(resi))
        	out[i] = int(res)
        return len(output_items[0])

