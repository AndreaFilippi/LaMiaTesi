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

class rsaTX_py_bf(gr.sync_block):
    """
    docstring for block rsaTX_py_bf
    """
    def __init__(self, e, n):
        self.e_public_key = e
	self.n_public_key = n
        gr.sync_block.__init__(self,
            name="rsaTX_py_bf",
            in_sig=[numpy.int8],
            out_sig=[numpy.int32])


    def work(self, input_items, output_items):
        in0 = input_items[0]
        out = output_items[0]
        for j in range(0,len(in0)): 
			init = int(0)
			init = long(in0[j])
			if long(in0[j]) < 0:
				init = ((init)%self.n_public_key) + 256	
			res = init
			for count in range(1,self.e_public_key):
				res = (res*init)%self.n_public_key
			print ("messaggio codificato (tx): " + str(res) + " da: " + str(in0[j]+256 if in0[j] <0 else in0[j]))
        		out[j] = int(res)
        return len(output_items[0])

