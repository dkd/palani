
# line 1 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
module Gherkin
  module RbLexer
    class En_au #:nodoc:
      
# line 123 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"

 
      def initialize(listener)
        @listener = listener
        
# line 14 "lib/gherkin/rb_lexer/en_au.rb"
class << self
	attr_accessor :_lexer_actions
	private :_lexer_actions, :_lexer_actions=
end
self._lexer_actions = [
	0, 1, 0, 1, 1, 1, 2, 1, 
	3, 1, 4, 1, 5, 1, 6, 1, 
	7, 1, 8, 1, 9, 1, 10, 1, 
	11, 1, 14, 1, 15, 1, 16, 1, 
	17, 1, 18, 1, 19, 1, 20, 1, 
	21, 2, 2, 16, 2, 11, 0, 2, 
	12, 13, 2, 15, 0, 2, 15, 1, 
	2, 15, 14, 2, 15, 17, 2, 16, 
	4, 2, 16, 5, 2, 16, 6, 2, 
	16, 7, 2, 16, 8, 2, 16, 14, 
	2, 18, 19, 2, 20, 0, 2, 20, 
	1, 2, 20, 14, 2, 20, 17, 3, 
	3, 12, 13, 3, 9, 12, 13, 3, 
	10, 12, 13, 3, 11, 12, 13, 3, 
	12, 13, 16, 3, 15, 12, 13, 4, 
	2, 12, 13, 16, 4, 15, 0, 12, 
	13
]

class << self
	attr_accessor :_lexer_key_offsets
	private :_lexer_key_offsets, :_lexer_key_offsets=
end
self._lexer_key_offsets = [
	0, 0, 17, 18, 19, 35, 36, 37, 
	41, 46, 51, 56, 61, 65, 69, 71, 
	72, 73, 74, 75, 76, 77, 78, 79, 
	80, 81, 82, 83, 84, 85, 86, 87, 
	88, 90, 95, 102, 107, 109, 110, 111, 
	112, 113, 114, 115, 116, 117, 118, 119, 
	120, 134, 136, 138, 140, 142, 144, 146, 
	148, 150, 152, 154, 156, 158, 160, 162, 
	164, 180, 183, 184, 185, 186, 187, 188, 
	189, 190, 191, 192, 199, 201, 203, 205, 
	207, 209, 211, 212, 213, 214, 215, 216, 
	217, 218, 228, 230, 232, 234, 236, 238, 
	240, 242, 244, 246, 248, 250, 252, 254, 
	256, 259, 261, 263, 265, 267, 269, 271, 
	273, 275, 277, 279, 281, 283, 285, 288, 
	290, 292, 294, 296, 298, 300, 302, 304, 
	306, 308, 310, 311, 312, 313, 314, 315, 
	316, 330, 332, 334, 336, 338, 340, 342, 
	344, 346, 348, 350, 352, 354, 356, 358, 
	360, 363, 365, 367, 369, 371, 373, 375, 
	377, 379, 381, 383, 385, 387, 389, 392, 
	394, 396, 398, 400, 402, 404, 406, 408, 
	410, 412, 414, 416, 418, 420, 423, 425, 
	427, 429, 431, 433, 435, 437, 439, 441, 
	443, 445, 446, 447, 448, 449, 450, 452, 
	453, 454, 455, 456, 457, 458, 459, 460, 
	461, 462, 463, 467, 473, 476, 478, 484, 
	500, 502, 504, 506, 508, 510, 512, 515, 
	517, 519, 521, 523, 525, 527, 529, 531, 
	533, 535, 537, 539, 541, 543, 546, 548, 
	550, 552, 554, 556, 558, 560, 562, 564, 
	566, 568, 569, 570, 571, 572, 573, 574, 
	575, 588, 590, 592, 594, 596, 598, 600, 
	602, 604, 606, 608, 610, 612, 614, 616, 
	618, 621, 623, 625, 627, 629, 631, 633, 
	635, 637, 639, 641, 643, 645, 647, 649, 
	651, 654, 656, 658, 660, 662, 664, 666, 
	668, 670, 672, 674, 676
]

class << self
	attr_accessor :_lexer_trans_keys
	private :_lexer_trans_keys, :_lexer_trans_keys=
end
self._lexer_trans_keys = [
	-17, 10, 32, 34, 35, 37, 42, 64, 
	66, 67, 77, 78, 87, 89, 124, 9, 
	13, -69, -65, 10, 32, 34, 35, 37, 
	42, 64, 66, 67, 77, 78, 87, 89, 
	124, 9, 13, 34, 34, 10, 32, 9, 
	13, 10, 32, 34, 9, 13, 10, 32, 
	34, 9, 13, 10, 32, 34, 9, 13, 
	10, 32, 34, 9, 13, 10, 32, 9, 
	13, 10, 32, 9, 13, 10, 13, 10, 
	95, 70, 69, 65, 84, 85, 82, 69, 
	95, 69, 78, 68, 95, 37, 32, 10, 
	10, 13, 13, 32, 64, 9, 10, 9, 
	10, 13, 32, 64, 11, 12, 10, 32, 
	64, 9, 13, 97, 108, 99, 107, 103, 
	114, 111, 117, 110, 100, 58, 10, 10, 
	10, 32, 35, 37, 42, 64, 66, 67, 
	77, 78, 87, 89, 9, 13, 10, 95, 
	10, 70, 10, 69, 10, 65, 10, 84, 
	10, 85, 10, 82, 10, 69, 10, 95, 
	10, 69, 10, 78, 10, 68, 10, 95, 
	10, 37, 10, 32, 10, 32, 34, 35, 
	37, 42, 64, 66, 67, 77, 78, 87, 
	89, 124, 9, 13, 101, 111, 114, 112, 
	116, 98, 98, 101, 114, 58, 10, 10, 
	10, 32, 35, 67, 124, 9, 13, 10, 
	114, 10, 105, 10, 107, 10, 101, 10, 
	121, 10, 58, 105, 107, 101, 121, 58, 
	10, 10, 10, 32, 35, 37, 64, 66, 
	67, 77, 9, 13, 10, 95, 10, 70, 
	10, 69, 10, 65, 10, 84, 10, 85, 
	10, 82, 10, 69, 10, 95, 10, 69, 
	10, 78, 10, 68, 10, 95, 10, 37, 
	10, 97, 108, 10, 99, 10, 107, 10, 
	103, 10, 114, 10, 111, 10, 117, 10, 
	110, 10, 100, 10, 58, 10, 111, 10, 
	107, 10, 101, 10, 115, 10, 111, 114, 
	10, 98, 10, 98, 10, 101, 10, 114, 
	10, 105, 10, 107, 10, 101, 10, 121, 
	10, 97, 10, 116, 10, 101, 97, 116, 
	101, 58, 10, 10, 10, 32, 35, 37, 
	42, 64, 66, 67, 77, 78, 87, 89, 
	9, 13, 10, 95, 10, 70, 10, 69, 
	10, 65, 10, 84, 10, 85, 10, 82, 
	10, 69, 10, 95, 10, 69, 10, 78, 
	10, 68, 10, 95, 10, 37, 10, 32, 
	10, 97, 108, 10, 99, 10, 107, 10, 
	103, 10, 114, 10, 111, 10, 117, 10, 
	110, 10, 100, 10, 58, 10, 111, 10, 
	107, 10, 101, 10, 115, 10, 101, 114, 
	10, 112, 10, 116, 10, 105, 10, 107, 
	10, 101, 10, 121, 10, 97, 10, 116, 
	10, 101, 10, 104, 10, 101, 10, 110, 
	10, 97, 10, 32, 10, 103, 107, 10, 
	111, 10, 116, 10, 116, 10, 97, 10, 
	110, 10, 111, 10, 119, 10, 32, 10, 
	104, 10, 111, 10, 119, 104, 101, 110, 
	97, 32, 103, 107, 111, 116, 116, 97, 
	110, 111, 119, 32, 104, 111, 119, 32, 
	124, 9, 13, 10, 32, 92, 124, 9, 
	13, 10, 92, 124, 10, 92, 10, 32, 
	92, 124, 9, 13, 10, 32, 34, 35, 
	37, 42, 64, 66, 67, 77, 78, 87, 
	89, 124, 9, 13, 10, 108, 10, 111, 
	10, 107, 10, 101, 10, 115, 10, 58, 
	10, 101, 114, 10, 112, 10, 116, 10, 
	105, 10, 107, 10, 101, 10, 121, 10, 
	97, 10, 116, 10, 101, 10, 104, 10, 
	101, 10, 110, 10, 97, 10, 32, 10, 
	103, 107, 10, 111, 10, 116, 10, 116, 
	10, 97, 10, 110, 10, 111, 10, 119, 
	10, 32, 10, 104, 10, 111, 10, 119, 
	111, 107, 101, 115, 58, 10, 10, 10, 
	32, 35, 37, 42, 64, 67, 77, 78, 
	87, 89, 9, 13, 10, 95, 10, 70, 
	10, 69, 10, 65, 10, 84, 10, 85, 
	10, 82, 10, 69, 10, 95, 10, 69, 
	10, 78, 10, 68, 10, 95, 10, 37, 
	10, 32, 10, 101, 114, 10, 112, 10, 
	116, 10, 105, 10, 107, 10, 101, 10, 
	121, 10, 58, 10, 97, 10, 116, 10, 
	101, 10, 104, 10, 101, 10, 110, 10, 
	97, 10, 32, 10, 103, 107, 10, 111, 
	10, 116, 10, 116, 10, 97, 10, 110, 
	10, 111, 10, 119, 10, 32, 10, 104, 
	10, 111, 10, 119, 0
]

class << self
	attr_accessor :_lexer_single_lengths
	private :_lexer_single_lengths, :_lexer_single_lengths=
end
self._lexer_single_lengths = [
	0, 15, 1, 1, 14, 1, 1, 2, 
	3, 3, 3, 3, 2, 2, 2, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	2, 3, 5, 3, 2, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	12, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	14, 3, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 5, 2, 2, 2, 2, 
	2, 2, 1, 1, 1, 1, 1, 1, 
	1, 8, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	3, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 3, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 1, 1, 1, 1, 1, 1, 
	12, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	3, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 3, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 3, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 1, 1, 1, 1, 1, 2, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 2, 4, 3, 2, 4, 14, 
	2, 2, 2, 2, 2, 2, 3, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 3, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 1, 1, 1, 1, 1, 1, 1, 
	11, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	3, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	3, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 0
]

class << self
	attr_accessor :_lexer_range_lengths
	private :_lexer_range_lengths, :_lexer_range_lengths=
end
self._lexer_range_lengths = [
	0, 1, 0, 0, 1, 0, 0, 1, 
	1, 1, 1, 1, 1, 1, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 1, 1, 1, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	1, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	1, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 1, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 1, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	1, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 1, 0, 0, 1, 1, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	1, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0
]

class << self
	attr_accessor :_lexer_index_offsets
	private :_lexer_index_offsets, :_lexer_index_offsets=
end
self._lexer_index_offsets = [
	0, 0, 17, 19, 21, 37, 39, 41, 
	45, 50, 55, 60, 65, 69, 73, 76, 
	78, 80, 82, 84, 86, 88, 90, 92, 
	94, 96, 98, 100, 102, 104, 106, 108, 
	110, 113, 118, 125, 130, 133, 135, 137, 
	139, 141, 143, 145, 147, 149, 151, 153, 
	155, 169, 172, 175, 178, 181, 184, 187, 
	190, 193, 196, 199, 202, 205, 208, 211, 
	214, 230, 234, 236, 238, 240, 242, 244, 
	246, 248, 250, 252, 259, 262, 265, 268, 
	271, 274, 277, 279, 281, 283, 285, 287, 
	289, 291, 301, 304, 307, 310, 313, 316, 
	319, 322, 325, 328, 331, 334, 337, 340, 
	343, 347, 350, 353, 356, 359, 362, 365, 
	368, 371, 374, 377, 380, 383, 386, 390, 
	393, 396, 399, 402, 405, 408, 411, 414, 
	417, 420, 423, 425, 427, 429, 431, 433, 
	435, 449, 452, 455, 458, 461, 464, 467, 
	470, 473, 476, 479, 482, 485, 488, 491, 
	494, 498, 501, 504, 507, 510, 513, 516, 
	519, 522, 525, 528, 531, 534, 537, 541, 
	544, 547, 550, 553, 556, 559, 562, 565, 
	568, 571, 574, 577, 580, 583, 587, 590, 
	593, 596, 599, 602, 605, 608, 611, 614, 
	617, 620, 622, 624, 626, 628, 630, 633, 
	635, 637, 639, 641, 643, 645, 647, 649, 
	651, 653, 655, 659, 665, 669, 672, 678, 
	694, 697, 700, 703, 706, 709, 712, 716, 
	719, 722, 725, 728, 731, 734, 737, 740, 
	743, 746, 749, 752, 755, 758, 762, 765, 
	768, 771, 774, 777, 780, 783, 786, 789, 
	792, 795, 797, 799, 801, 803, 805, 807, 
	809, 822, 825, 828, 831, 834, 837, 840, 
	843, 846, 849, 852, 855, 858, 861, 864, 
	867, 871, 874, 877, 880, 883, 886, 889, 
	892, 895, 898, 901, 904, 907, 910, 913, 
	916, 920, 923, 926, 929, 932, 935, 938, 
	941, 944, 947, 950, 953
]

class << self
	attr_accessor :_lexer_trans_targs
	private :_lexer_trans_targs, :_lexer_trans_targs=
end
self._lexer_trans_targs = [
	2, 4, 4, 5, 14, 16, 30, 33, 
	36, 65, 130, 30, 193, 196, 210, 4, 
	0, 3, 0, 4, 0, 4, 4, 5, 
	14, 16, 30, 33, 36, 65, 130, 30, 
	193, 196, 210, 4, 0, 6, 0, 7, 
	0, 8, 7, 7, 0, 9, 9, 10, 
	9, 9, 9, 9, 10, 9, 9, 9, 
	9, 11, 9, 9, 9, 9, 12, 9, 
	9, 4, 13, 13, 0, 4, 13, 13, 
	0, 4, 15, 14, 4, 0, 17, 0, 
	18, 0, 19, 0, 20, 0, 21, 0, 
	22, 0, 23, 0, 24, 0, 25, 0, 
	26, 0, 27, 0, 28, 0, 29, 0, 
	300, 0, 31, 0, 0, 32, 4, 15, 
	32, 0, 0, 0, 0, 34, 35, 4, 
	35, 35, 33, 34, 34, 4, 35, 33, 
	35, 0, 37, 249, 0, 38, 0, 39, 
	0, 40, 0, 41, 0, 42, 0, 43, 
	0, 44, 0, 45, 0, 46, 0, 48, 
	47, 48, 47, 48, 48, 4, 49, 63, 
	4, 216, 222, 229, 63, 232, 235, 48, 
	47, 48, 50, 47, 48, 51, 47, 48, 
	52, 47, 48, 53, 47, 48, 54, 47, 
	48, 55, 47, 48, 56, 47, 48, 57, 
	47, 48, 58, 47, 48, 59, 47, 48, 
	60, 47, 48, 61, 47, 48, 62, 47, 
	48, 4, 47, 48, 64, 47, 4, 4, 
	5, 14, 16, 30, 33, 36, 65, 130, 
	30, 193, 196, 210, 4, 0, 66, 68, 
	82, 0, 67, 0, 30, 0, 69, 0, 
	70, 0, 71, 0, 72, 0, 73, 0, 
	75, 74, 75, 74, 75, 75, 4, 76, 
	4, 75, 74, 75, 77, 74, 75, 78, 
	74, 75, 79, 74, 75, 80, 74, 75, 
	81, 74, 75, 64, 74, 83, 0, 84, 
	0, 85, 0, 86, 0, 87, 0, 89, 
	88, 89, 88, 89, 89, 4, 90, 4, 
	104, 118, 127, 89, 88, 89, 91, 88, 
	89, 92, 88, 89, 93, 88, 89, 94, 
	88, 89, 95, 88, 89, 96, 88, 89, 
	97, 88, 89, 98, 88, 89, 99, 88, 
	89, 100, 88, 89, 101, 88, 89, 102, 
	88, 89, 103, 88, 89, 4, 88, 89, 
	105, 114, 88, 89, 106, 88, 89, 107, 
	88, 89, 108, 88, 89, 109, 88, 89, 
	110, 88, 89, 111, 88, 89, 112, 88, 
	89, 113, 88, 89, 64, 88, 89, 115, 
	88, 89, 116, 88, 89, 117, 88, 89, 
	113, 88, 89, 119, 123, 88, 89, 120, 
	88, 89, 121, 88, 89, 122, 88, 89, 
	113, 88, 89, 124, 88, 89, 125, 88, 
	89, 126, 88, 89, 113, 88, 89, 128, 
	88, 89, 129, 88, 89, 113, 88, 131, 
	0, 132, 0, 133, 0, 134, 0, 136, 
	135, 136, 135, 136, 136, 4, 137, 151, 
	4, 152, 166, 173, 151, 176, 179, 136, 
	135, 136, 138, 135, 136, 139, 135, 136, 
	140, 135, 136, 141, 135, 136, 142, 135, 
	136, 143, 135, 136, 144, 135, 136, 145, 
	135, 136, 146, 135, 136, 147, 135, 136, 
	148, 135, 136, 149, 135, 136, 150, 135, 
	136, 4, 135, 136, 64, 135, 136, 153, 
	162, 135, 136, 154, 135, 136, 155, 135, 
	136, 156, 135, 136, 157, 135, 136, 158, 
	135, 136, 159, 135, 136, 160, 135, 136, 
	161, 135, 136, 64, 135, 136, 163, 135, 
	136, 164, 135, 136, 165, 135, 136, 161, 
	135, 136, 167, 169, 135, 136, 168, 135, 
	136, 151, 135, 136, 170, 135, 136, 171, 
	135, 136, 172, 135, 136, 161, 135, 136, 
	174, 135, 136, 175, 135, 136, 161, 135, 
	136, 177, 135, 136, 178, 135, 136, 151, 
	135, 136, 180, 135, 136, 181, 135, 136, 
	182, 186, 135, 136, 183, 135, 136, 184, 
	135, 136, 185, 135, 136, 151, 135, 136, 
	187, 135, 136, 188, 135, 136, 189, 135, 
	136, 190, 135, 136, 191, 135, 136, 192, 
	135, 136, 151, 135, 194, 0, 195, 0, 
	30, 0, 197, 0, 198, 0, 199, 203, 
	0, 200, 0, 201, 0, 202, 0, 30, 
	0, 204, 0, 205, 0, 206, 0, 207, 
	0, 208, 0, 209, 0, 30, 0, 210, 
	211, 210, 0, 215, 214, 213, 211, 214, 
	212, 0, 213, 211, 212, 0, 213, 212, 
	215, 214, 213, 211, 214, 212, 215, 215, 
	5, 14, 16, 30, 33, 36, 65, 130, 
	30, 193, 196, 210, 215, 0, 48, 217, 
	47, 48, 218, 47, 48, 219, 47, 48, 
	220, 47, 48, 221, 47, 48, 64, 47, 
	48, 223, 225, 47, 48, 224, 47, 48, 
	63, 47, 48, 226, 47, 48, 227, 47, 
	48, 228, 47, 48, 221, 47, 48, 230, 
	47, 48, 231, 47, 48, 221, 47, 48, 
	233, 47, 48, 234, 47, 48, 63, 47, 
	48, 236, 47, 48, 237, 47, 48, 238, 
	242, 47, 48, 239, 47, 48, 240, 47, 
	48, 241, 47, 48, 63, 47, 48, 243, 
	47, 48, 244, 47, 48, 245, 47, 48, 
	246, 47, 48, 247, 47, 48, 248, 47, 
	48, 63, 47, 250, 0, 251, 0, 252, 
	0, 253, 0, 254, 0, 256, 255, 256, 
	255, 256, 256, 4, 257, 271, 4, 272, 
	280, 271, 283, 286, 256, 255, 256, 258, 
	255, 256, 259, 255, 256, 260, 255, 256, 
	261, 255, 256, 262, 255, 256, 263, 255, 
	256, 264, 255, 256, 265, 255, 256, 266, 
	255, 256, 267, 255, 256, 268, 255, 256, 
	269, 255, 256, 270, 255, 256, 4, 255, 
	256, 64, 255, 256, 273, 275, 255, 256, 
	274, 255, 256, 271, 255, 256, 276, 255, 
	256, 277, 255, 256, 278, 255, 256, 279, 
	255, 256, 64, 255, 256, 281, 255, 256, 
	282, 255, 256, 279, 255, 256, 284, 255, 
	256, 285, 255, 256, 271, 255, 256, 287, 
	255, 256, 288, 255, 256, 289, 293, 255, 
	256, 290, 255, 256, 291, 255, 256, 292, 
	255, 256, 271, 255, 256, 294, 255, 256, 
	295, 255, 256, 296, 255, 256, 297, 255, 
	256, 298, 255, 256, 299, 255, 256, 271, 
	255, 0, 0
]

class << self
	attr_accessor :_lexer_trans_actions
	private :_lexer_trans_actions, :_lexer_trans_actions=
end
self._lexer_trans_actions = [
	0, 47, 0, 3, 1, 0, 25, 1, 
	25, 25, 25, 25, 25, 25, 31, 0, 
	39, 0, 39, 0, 39, 47, 0, 3, 
	1, 0, 25, 1, 25, 25, 25, 25, 
	25, 25, 31, 0, 39, 0, 39, 0, 
	39, 47, 0, 0, 39, 119, 41, 41, 
	41, 5, 111, 29, 29, 29, 0, 111, 
	29, 29, 29, 0, 111, 29, 0, 29, 
	0, 95, 7, 7, 39, 47, 0, 0, 
	39, 103, 21, 0, 47, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 39, 50, 99, 19, 
	0, 39, 39, 39, 39, 0, 23, 107, 
	23, 23, 44, 23, 0, 47, 0, 1, 
	0, 39, 0, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 124, 
	50, 47, 0, 47, 0, 65, 29, 77, 
	65, 77, 77, 77, 77, 77, 77, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 11, 0, 47, 11, 0, 115, 27, 
	53, 50, 27, 56, 50, 56, 56, 56, 
	56, 56, 56, 59, 27, 39, 0, 0, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	124, 50, 47, 0, 47, 0, 74, 77, 
	74, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 17, 0, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 124, 
	50, 47, 0, 47, 0, 62, 29, 62, 
	77, 77, 77, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 9, 0, 47, 
	0, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 9, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 0, 
	39, 0, 39, 0, 39, 0, 39, 124, 
	50, 47, 0, 47, 0, 68, 29, 77, 
	68, 77, 77, 77, 77, 77, 77, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 13, 0, 47, 13, 0, 47, 0, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 13, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	0, 0, 39, 47, 33, 33, 80, 33, 
	33, 39, 0, 35, 0, 39, 0, 0, 
	47, 0, 0, 35, 0, 0, 47, 0, 
	86, 83, 37, 89, 83, 89, 89, 89, 
	89, 89, 89, 92, 0, 39, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 11, 0, 
	47, 0, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 124, 50, 47, 
	0, 47, 0, 71, 29, 77, 71, 77, 
	77, 77, 77, 77, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 15, 0, 
	47, 15, 0, 47, 0, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 15, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 0, 0
]

class << self
	attr_accessor :_lexer_eof_actions
	private :_lexer_eof_actions, :_lexer_eof_actions=
end
self._lexer_eof_actions = [
	0, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39
]

class << self
	attr_accessor :lexer_start
end
self.lexer_start = 1;
class << self
	attr_accessor :lexer_first_final
end
self.lexer_first_final = 300;
class << self
	attr_accessor :lexer_error
end
self.lexer_error = 0;

class << self
	attr_accessor :lexer_en_main
end
self.lexer_en_main = 1;


# line 128 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
      end
 
      def scan(data)
        data = (data + "\n%_FEATURE_END_%").unpack("c*") # Explicit EOF simplifies things considerably
        eof = pe = data.length
 
        @line_number = 1
        @last_newline = 0
 
        
# line 640 "lib/gherkin/rb_lexer/en_au.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = lexer_start
end

# line 138 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
        
# line 649 "lib/gherkin/rb_lexer/en_au.rb"
begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = _lexer_key_offsets[cs]
	_trans = _lexer_index_offsets[cs]
	_klen = _lexer_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p] < _lexer_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p] > _lexer_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _lexer_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p] < _lexer_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p] > _lexer_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	cs = _lexer_trans_targs[_trans]
	if _lexer_trans_actions[_trans] != 0
		_acts = _lexer_trans_actions[_trans]
		_nacts = _lexer_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _lexer_actions[_acts - 1]
when 0 then
# line 7 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          @content_start = p
          @current_line = @line_number
        		end
# line 7 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
when 1 then
# line 12 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          @current_line = @line_number
          @start_col = p - @last_newline
        		end
# line 12 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
when 2 then
# line 17 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          @content_start = p
        		end
# line 17 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
when 3 then
# line 21 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          con = unindent(@start_col, utf8_pack(data[@content_start...@next_keyword_start-1]).sub(/(\r?\n)?([\t ])*\Z/, '').gsub(/\\"\\"\\"/, '"""'))
          @listener.py_string(con, @current_line) 
        		end
# line 21 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
when 4 then
# line 26 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          store_keyword_content(:feature, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start          
          @next_keyword_start = nil
        		end
# line 26 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
when 5 then
# line 32 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          store_keyword_content(:background, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
# line 32 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
when 6 then
# line 38 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          store_keyword_content(:scenario, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
# line 38 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
when 7 then
# line 44 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          store_keyword_content(:scenario_outline, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
# line 44 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
when 8 then
# line 50 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          store_keyword_content(:examples, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
# line 50 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
when 9 then
# line 56 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.step(@keyword, con, @current_line)
        		end
# line 56 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
when 10 then
# line 61 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.comment(con, @line_number)
          @keyword_start = nil
        		end
# line 61 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
when 11 then
# line 67 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.tag(con, @current_line)
          @keyword_start = nil
        		end
# line 67 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
when 12 then
# line 73 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          @line_number += 1
        		end
# line 73 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
when 13 then
# line 77 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          @last_newline = p + 1
        		end
# line 77 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
when 14 then
# line 81 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          @keyword_start ||= p
        		end
# line 81 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
when 15 then
# line 85 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          @keyword = utf8_pack(data[@keyword_start...p]).sub(/:$/,'')
          @keyword_start = nil
        		end
# line 85 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
when 16 then
# line 90 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          @next_keyword_start = p
        		end
# line 90 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
when 17 then
# line 94 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          p = p - 1
          current_row = []
          @current_line = @line_number
        		end
# line 94 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
when 18 then
# line 100 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          @content_start = p
        		end
# line 100 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
when 19 then
# line 104 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          current_row << con.gsub(/\\\|/, "|").gsub(/\\\\/, "\\")
        		end
# line 104 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
when 20 then
# line 109 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          @listener.row(current_row, @current_line)
        		end
# line 109 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
when 21 then
# line 113 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/aslakhellesoy/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 113 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
# line 910 "lib/gherkin/rb_lexer/en_au.rb"
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	__acts = _lexer_eof_actions[cs]
	__nacts =  _lexer_actions[__acts]
	__acts += 1
	while __nacts > 0
		__nacts -= 1
		__acts += 1
		case _lexer_actions[__acts - 1]
when 21 then
# line 113 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/aslakhellesoy/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 113 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
# line 950 "lib/gherkin/rb_lexer/en_au.rb"
		end # eof action switch
	end
	if _trigger_goto
		next
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end

# line 139 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/en_au.rb.rl"
      end

      CRLF_RE = /\r\n/
      LF_RE = /[^\r]\n/
      CRLF = "\r\n"
      LF = "\n"

      def multiline_strip(text)
        crlf_count = text.scan(CRLF_RE).size
        lf_count = text.scan(LF_RE).size
        eol = crlf_count > lf_count ? CRLF : LF
        text.split(/\r?\n/).map{|s| s.strip}.join(eol).strip
      end

      def unindent(startcol, text)
        text.gsub(/^[\t ]{0,#{startcol}}/, "")
      end

      def store_keyword_content(event, data, p, eof)
        end_point = (!@next_keyword_start or (p == eof)) ? p : @next_keyword_start
        content = yield utf8_pack(data[@content_start...end_point])
        content_lines = content.split("\n")
        name = content_lines.shift || ""
        name.strip!
        description = content_lines.join("\n")
        @listener.__send__(event, @keyword, name, description, @current_line)
      end
      
      def current_line_content(data, p)
        rest = data[@last_newline..-1]
        utf8_pack(rest[0..rest.index(10)||-1]).strip
      end

      def utf8_pack(array)
        (RUBY_VERSION =~ /^1\.9/) ? array.pack("c*").force_encoding("UTF-8") : array.pack("c*")
      end
    end
  end
end
