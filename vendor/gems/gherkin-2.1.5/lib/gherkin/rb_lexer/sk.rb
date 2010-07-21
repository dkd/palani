
# line 1 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
module Gherkin
  module RbLexer
    class Sk #:nodoc:
      
# line 123 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"

 
      def initialize(listener)
        @listener = listener
        
# line 14 "lib/gherkin/rb_lexer/sk.rb"
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
	41, 46, 51, 56, 61, 66, 70, 74, 
	76, 77, 78, 79, 80, 81, 82, 83, 
	84, 85, 86, 87, 88, 89, 90, 91, 
	92, 93, 95, 100, 107, 112, 114, 115, 
	116, 117, 118, 119, 120, 121, 122, 123, 
	124, 125, 126, 127, 128, 129, 130, 131, 
	132, 133, 134, 135, 136, 149, 151, 153, 
	155, 157, 159, 161, 163, 165, 167, 169, 
	171, 173, 175, 177, 179, 195, 197, 200, 
	201, 202, 203, 204, 205, 206, 207, 208, 
	209, 210, 211, 221, 223, 225, 227, 229, 
	231, 233, 235, 237, 239, 241, 243, 245, 
	247, 249, 251, 253, 255, 257, 259, 261, 
	263, 265, 267, 269, 271, 273, 275, 277, 
	279, 281, 284, 287, 289, 291, 293, 295, 
	297, 299, 301, 303, 305, 307, 309, 311, 
	313, 315, 317, 319, 321, 323, 325, 327, 
	329, 331, 333, 335, 337, 338, 339, 340, 
	341, 342, 343, 344, 345, 346, 347, 348, 
	362, 364, 366, 368, 370, 372, 374, 376, 
	378, 380, 382, 384, 386, 388, 390, 392, 
	395, 397, 399, 401, 403, 405, 407, 409, 
	411, 413, 415, 417, 419, 421, 423, 425, 
	427, 429, 431, 433, 435, 437, 440, 442, 
	444, 446, 448, 450, 452, 454, 456, 458, 
	460, 462, 464, 466, 468, 470, 472, 474, 
	476, 478, 480, 481, 482, 483, 484, 485, 
	486, 487, 488, 489, 490, 497, 499, 501, 
	503, 505, 507, 509, 511, 513, 515, 517, 
	519, 520, 521, 522, 523, 524, 525, 526, 
	527, 528, 542, 544, 546, 548, 550, 552, 
	554, 556, 558, 560, 562, 564, 566, 568, 
	570, 572, 575, 577, 579, 581, 583, 585, 
	587, 589, 591, 593, 595, 597, 599, 601, 
	603, 605, 607, 609, 611, 613, 615, 617, 
	621, 623, 625, 627, 629, 631, 633, 635, 
	637, 639, 641, 643, 645, 647, 649, 651, 
	653, 655, 657, 659, 661, 663, 665, 667, 
	669, 670, 671, 675, 681, 684, 686, 692, 
	708, 711, 713, 715, 717, 719, 721, 724, 
	726, 728, 730, 732, 734, 736, 738, 740, 
	742, 744, 746, 748, 750, 752, 754, 756, 
	758, 760, 762, 764, 766
]

class << self
	attr_accessor :_lexer_trans_keys
	private :_lexer_trans_keys, :_lexer_trans_keys=
end
self._lexer_trans_keys = [
	-17, 10, 32, 34, 35, 37, 42, 64, 
	65, 75, 78, 80, 83, 84, 124, 9, 
	13, -69, -65, 10, 32, 34, 35, 37, 
	42, 64, 65, 75, 78, 80, 83, 84, 
	124, 9, 13, 34, 34, 10, 32, 9, 
	13, 10, 32, 34, 9, 13, 10, 32, 
	34, 9, 13, 10, 32, 34, 9, 13, 
	10, 32, 34, 9, 13, 10, 32, 34, 
	9, 13, 10, 32, 9, 13, 10, 32, 
	9, 13, 10, 13, 10, 95, 70, 69, 
	65, 84, 85, 82, 69, 95, 69, 78, 
	68, 95, 37, 32, 10, 10, 13, 13, 
	32, 64, 9, 10, 9, 10, 13, 32, 
	64, 11, 12, 10, 32, 64, 9, 13, 
	32, 108, 101, 101, -60, -113, -61, -95, 
	-60, -115, 114, 116, 32, 83, 99, 101, 
	110, -61, -95, 114, 117, 58, 10, 10, 
	10, 32, 35, 37, 42, 64, 65, 75, 
	80, 83, 84, 9, 13, 10, 95, 10, 
	70, 10, 69, 10, 65, 10, 84, 10, 
	85, 10, 82, 10, 69, 10, 95, 10, 
	69, 10, 78, 10, 68, 10, 95, 10, 
	37, 10, 32, 10, 32, 34, 35, 37, 
	42, 64, 65, 75, 78, 80, 83, 84, 
	124, 9, 13, 111, 114, -59, 107, 122, 
	-66, 105, 97, 100, 97, 118, 107, 97, 
	58, 10, 10, 10, 32, 35, 37, 64, 
	78, 80, 83, 9, 13, 10, 95, 10, 
	70, 10, 69, 10, 65, 10, 84, 10, 
	85, 10, 82, 10, 69, 10, 95, 10, 
	69, 10, 78, 10, 68, 10, 95, 10, 
	37, -61, 10, -95, 10, -60, 10, -115, 
	10, 10, 114, 10, 116, 10, 32, 10, 
	83, 10, 99, 10, 101, 10, 110, -61, 
	10, -95, 10, 10, 114, 10, 117, 10, 
	58, 10, 111, 114, -59, 10, 122, -66, 
	10, 10, 105, 10, 97, 10, 100, 10, 
	97, 10, 118, 10, 107, 10, 97, 10, 
	97, 10, 100, 10, 105, 10, 101, -61, 
	10, -83, 10, 10, 107, 10, 108, 10, 
	97, 10, 100, 10, 121, 10, 99, 10, 
	101, 10, 110, -61, 10, -95, 10, 10, 
	114, 105, 97, -60, -66, 97, 100, 105, 
	101, 58, 10, 10, 10, 32, 35, 37, 
	42, 64, 65, 75, 78, 80, 83, 84, 
	9, 13, 10, 95, 10, 70, 10, 69, 
	10, 65, 10, 84, 10, 85, 10, 82, 
	10, 69, 10, 95, 10, 69, 10, 78, 
	10, 68, 10, 95, 10, 37, 10, 32, 
	10, 32, 108, 10, 101, 10, 101, -60, 
	10, -113, 10, -61, 10, -95, 10, -60, 
	10, -115, 10, 10, 114, 10, 116, 10, 
	32, 10, 83, 10, 99, 10, 101, 10, 
	110, -61, 10, -95, 10, 10, 114, 10, 
	117, 10, 58, 10, 111, -59, 10, 107, 
	-66, 10, 10, 105, 10, 97, 10, 100, 
	10, 97, 10, 118, 10, 107, 10, 97, 
	10, 105, 10, 97, -60, 10, -66, 10, 
	10, 99, 10, 101, 10, 110, -61, 10, 
	-95, 10, 10, 114, 10, 97, 10, 107, 
	-61, -83, 107, 108, 97, 100, 121, 58, 
	10, 10, 10, 32, 35, 80, 124, 9, 
	13, 10, 111, -59, 10, -66, 10, 10, 
	105, 10, 97, 10, 100, 10, 97, 10, 
	118, 10, 107, 10, 97, 10, 58, 99, 
	101, 110, -61, -95, 114, 58, 10, 10, 
	10, 32, 35, 37, 42, 64, 65, 75, 
	78, 80, 83, 84, 9, 13, 10, 95, 
	10, 70, 10, 69, 10, 65, 10, 84, 
	10, 85, 10, 82, 10, 69, 10, 95, 
	10, 69, 10, 78, 10, 68, 10, 95, 
	10, 37, 10, 32, 10, 32, 108, 10, 
	101, 10, 101, -60, 10, -113, 10, -61, 
	10, -95, 10, -60, 10, -115, 10, 10, 
	114, 10, 116, 10, 32, 10, 83, 10, 
	99, 10, 101, 10, 110, -61, 10, -95, 
	10, 10, 114, 10, 117, 10, 58, 10, 
	111, -59, 10, 107, 122, -66, 10, 10, 
	105, 10, 97, 10, 100, 10, 97, 10, 
	118, 10, 107, 10, 97, 10, 105, 10, 
	97, -60, 10, -66, 10, 10, 97, 10, 
	100, 10, 105, 10, 101, 10, 99, 10, 
	101, 10, 110, -61, 10, -95, 10, 10, 
	114, 10, 97, 10, 107, 97, 107, 32, 
	124, 9, 13, 10, 32, 92, 124, 9, 
	13, 10, 92, 124, 10, 92, 10, 32, 
	92, 124, 9, 13, 10, 32, 34, 35, 
	37, 42, 64, 65, 75, 78, 80, 83, 
	84, 124, 9, 13, 10, 32, 108, 10, 
	101, 10, 101, -60, 10, -113, 10, 10, 
	111, -59, 10, 107, -66, 10, 10, 105, 
	10, 97, 10, 100, 10, 97, 10, 118, 
	10, 107, 10, 97, 10, 58, 10, 105, 
	10, 97, -60, 10, -66, 10, 10, 99, 
	10, 101, 10, 110, -61, 10, -95, 10, 
	10, 114, 10, 97, 10, 107, 0
]

class << self
	attr_accessor :_lexer_single_lengths
	private :_lexer_single_lengths, :_lexer_single_lengths=
end
self._lexer_single_lengths = [
	0, 15, 1, 1, 14, 1, 1, 2, 
	3, 3, 3, 3, 3, 2, 2, 2, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 2, 3, 5, 3, 2, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 11, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 14, 2, 3, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 8, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 3, 3, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 12, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 3, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 3, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 5, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 12, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 3, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 4, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	1, 1, 2, 4, 3, 2, 4, 14, 
	3, 2, 2, 2, 2, 2, 3, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 0
]

class << self
	attr_accessor :_lexer_range_lengths
	private :_lexer_range_lengths, :_lexer_range_lengths=
end
self._lexer_range_lengths = [
	0, 1, 0, 0, 1, 0, 0, 1, 
	1, 1, 1, 1, 1, 1, 1, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 1, 1, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 1, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 1, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 1, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 1, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 1, 0, 0, 0, 0, 0, 0, 
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
	0, 0, 0, 0, 0
]

class << self
	attr_accessor :_lexer_index_offsets
	private :_lexer_index_offsets, :_lexer_index_offsets=
end
self._lexer_index_offsets = [
	0, 0, 17, 19, 21, 37, 39, 41, 
	45, 50, 55, 60, 65, 70, 74, 78, 
	81, 83, 85, 87, 89, 91, 93, 95, 
	97, 99, 101, 103, 105, 107, 109, 111, 
	113, 115, 118, 123, 130, 135, 138, 140, 
	142, 144, 146, 148, 150, 152, 154, 156, 
	158, 160, 162, 164, 166, 168, 170, 172, 
	174, 176, 178, 180, 182, 195, 198, 201, 
	204, 207, 210, 213, 216, 219, 222, 225, 
	228, 231, 234, 237, 240, 256, 259, 263, 
	265, 267, 269, 271, 273, 275, 277, 279, 
	281, 283, 285, 295, 298, 301, 304, 307, 
	310, 313, 316, 319, 322, 325, 328, 331, 
	334, 337, 340, 343, 346, 349, 352, 355, 
	358, 361, 364, 367, 370, 373, 376, 379, 
	382, 385, 389, 393, 396, 399, 402, 405, 
	408, 411, 414, 417, 420, 423, 426, 429, 
	432, 435, 438, 441, 444, 447, 450, 453, 
	456, 459, 462, 465, 468, 470, 472, 474, 
	476, 478, 480, 482, 484, 486, 488, 490, 
	504, 507, 510, 513, 516, 519, 522, 525, 
	528, 531, 534, 537, 540, 543, 546, 549, 
	553, 556, 559, 562, 565, 568, 571, 574, 
	577, 580, 583, 586, 589, 592, 595, 598, 
	601, 604, 607, 610, 613, 616, 620, 623, 
	626, 629, 632, 635, 638, 641, 644, 647, 
	650, 653, 656, 659, 662, 665, 668, 671, 
	674, 677, 680, 682, 684, 686, 688, 690, 
	692, 694, 696, 698, 700, 707, 710, 713, 
	716, 719, 722, 725, 728, 731, 734, 737, 
	740, 742, 744, 746, 748, 750, 752, 754, 
	756, 758, 772, 775, 778, 781, 784, 787, 
	790, 793, 796, 799, 802, 805, 808, 811, 
	814, 817, 821, 824, 827, 830, 833, 836, 
	839, 842, 845, 848, 851, 854, 857, 860, 
	863, 866, 869, 872, 875, 878, 881, 884, 
	889, 892, 895, 898, 901, 904, 907, 910, 
	913, 916, 919, 922, 925, 928, 931, 934, 
	937, 940, 943, 946, 949, 952, 955, 958, 
	961, 963, 965, 969, 975, 979, 982, 988, 
	1004, 1008, 1011, 1014, 1017, 1020, 1023, 1027, 
	1030, 1033, 1036, 1039, 1042, 1045, 1048, 1051, 
	1054, 1057, 1060, 1063, 1066, 1069, 1072, 1075, 
	1078, 1081, 1084, 1087, 1090
]

class << self
	attr_accessor :_lexer_trans_targs
	private :_lexer_trans_targs, :_lexer_trans_targs=
end
self._lexer_trans_targs = [
	2, 4, 4, 5, 15, 17, 31, 34, 
	37, 39, 42, 77, 240, 312, 314, 4, 
	0, 3, 0, 4, 0, 4, 4, 5, 
	15, 17, 31, 34, 37, 39, 42, 77, 
	240, 312, 314, 4, 0, 6, 0, 7, 
	0, 8, 7, 7, 0, 9, 9, 10, 
	9, 9, 9, 9, 10, 9, 9, 9, 
	9, 11, 9, 9, 9, 9, 12, 9, 
	9, 4, 13, 14, 13, 0, 4, 13, 
	13, 0, 4, 13, 13, 0, 4, 16, 
	15, 4, 0, 18, 0, 19, 0, 20, 
	0, 21, 0, 22, 0, 23, 0, 24, 
	0, 25, 0, 26, 0, 27, 0, 28, 
	0, 29, 0, 30, 0, 348, 0, 32, 
	0, 0, 33, 4, 16, 33, 0, 0, 
	0, 0, 35, 36, 4, 36, 36, 34, 
	35, 35, 4, 36, 34, 36, 0, 32, 
	38, 0, 31, 0, 40, 0, 41, 0, 
	31, 0, 43, 0, 44, 0, 45, 0, 
	46, 0, 47, 0, 48, 0, 49, 0, 
	50, 0, 51, 0, 52, 0, 53, 0, 
	54, 0, 55, 0, 56, 0, 57, 0, 
	58, 0, 60, 59, 60, 59, 60, 60, 
	4, 61, 75, 4, 320, 322, 325, 340, 
	346, 60, 59, 60, 62, 59, 60, 63, 
	59, 60, 64, 59, 60, 65, 59, 60, 
	66, 59, 60, 67, 59, 60, 68, 59, 
	60, 69, 59, 60, 70, 59, 60, 71, 
	59, 60, 72, 59, 60, 73, 59, 60, 
	74, 59, 60, 4, 59, 60, 76, 59, 
	4, 4, 5, 15, 17, 31, 34, 37, 
	39, 42, 77, 240, 312, 314, 4, 0, 
	78, 218, 0, 79, 148, 152, 0, 80, 
	0, 81, 0, 82, 0, 83, 0, 84, 
	0, 85, 0, 86, 0, 87, 0, 88, 
	0, 90, 89, 90, 89, 90, 90, 4, 
	91, 4, 105, 121, 142, 90, 89, 90, 
	92, 89, 90, 93, 89, 90, 94, 89, 
	90, 95, 89, 90, 96, 89, 90, 97, 
	89, 90, 98, 89, 90, 99, 89, 90, 
	100, 89, 90, 101, 89, 90, 102, 89, 
	90, 103, 89, 90, 104, 89, 90, 4, 
	89, 106, 90, 89, 107, 90, 89, 108, 
	90, 89, 109, 90, 89, 90, 110, 89, 
	90, 111, 89, 90, 112, 89, 90, 113, 
	89, 90, 114, 89, 90, 115, 89, 90, 
	116, 89, 117, 90, 89, 118, 90, 89, 
	90, 119, 89, 90, 120, 89, 90, 76, 
	89, 90, 122, 135, 89, 123, 90, 131, 
	89, 124, 90, 89, 90, 125, 89, 90, 
	126, 89, 90, 127, 89, 90, 128, 89, 
	90, 129, 89, 90, 130, 89, 90, 120, 
	89, 90, 132, 89, 90, 133, 89, 90, 
	134, 89, 90, 120, 89, 136, 90, 89, 
	137, 90, 89, 90, 138, 89, 90, 139, 
	89, 90, 140, 89, 90, 141, 89, 90, 
	120, 89, 90, 143, 89, 90, 144, 89, 
	90, 145, 89, 146, 90, 89, 147, 90, 
	89, 90, 120, 89, 149, 0, 150, 0, 
	151, 0, 31, 0, 153, 0, 154, 0, 
	155, 0, 156, 0, 157, 0, 159, 158, 
	159, 158, 159, 159, 4, 160, 174, 4, 
	175, 177, 180, 196, 210, 216, 159, 158, 
	159, 161, 158, 159, 162, 158, 159, 163, 
	158, 159, 164, 158, 159, 165, 158, 159, 
	166, 158, 159, 167, 158, 159, 168, 158, 
	159, 169, 158, 159, 170, 158, 159, 171, 
	158, 159, 172, 158, 159, 173, 158, 159, 
	4, 158, 159, 76, 158, 159, 76, 176, 
	158, 159, 174, 158, 159, 178, 158, 179, 
	159, 158, 174, 159, 158, 181, 159, 158, 
	182, 159, 158, 183, 159, 158, 184, 159, 
	158, 159, 185, 158, 159, 186, 158, 159, 
	187, 158, 159, 188, 158, 159, 189, 158, 
	159, 190, 158, 159, 191, 158, 192, 159, 
	158, 193, 159, 158, 159, 194, 158, 159, 
	195, 158, 159, 76, 158, 159, 197, 158, 
	198, 159, 206, 158, 199, 159, 158, 159, 
	200, 158, 159, 201, 158, 159, 202, 158, 
	159, 203, 158, 159, 204, 158, 159, 205, 
	158, 159, 195, 158, 159, 207, 158, 159, 
	208, 158, 209, 159, 158, 174, 159, 158, 
	159, 211, 158, 159, 212, 158, 159, 213, 
	158, 214, 159, 158, 215, 159, 158, 159, 
	195, 158, 159, 217, 158, 159, 174, 158, 
	219, 0, 220, 0, 221, 0, 222, 0, 
	223, 0, 224, 0, 225, 0, 226, 0, 
	228, 227, 228, 227, 228, 228, 4, 229, 
	4, 228, 227, 228, 230, 227, 231, 228, 
	227, 232, 228, 227, 228, 233, 227, 228, 
	234, 227, 228, 235, 227, 228, 236, 227, 
	228, 237, 227, 228, 238, 227, 228, 239, 
	227, 228, 76, 227, 241, 0, 242, 0, 
	243, 0, 244, 0, 245, 0, 246, 0, 
	247, 0, 249, 248, 249, 248, 249, 249, 
	4, 250, 264, 4, 265, 267, 270, 286, 
	304, 310, 249, 248, 249, 251, 248, 249, 
	252, 248, 249, 253, 248, 249, 254, 248, 
	249, 255, 248, 249, 256, 248, 249, 257, 
	248, 249, 258, 248, 249, 259, 248, 249, 
	260, 248, 249, 261, 248, 249, 262, 248, 
	249, 263, 248, 249, 4, 248, 249, 76, 
	248, 249, 76, 266, 248, 249, 264, 248, 
	249, 268, 248, 269, 249, 248, 264, 249, 
	248, 271, 249, 248, 272, 249, 248, 273, 
	249, 248, 274, 249, 248, 249, 275, 248, 
	249, 276, 248, 249, 277, 248, 249, 278, 
	248, 249, 279, 248, 249, 280, 248, 249, 
	281, 248, 282, 249, 248, 283, 249, 248, 
	249, 284, 248, 249, 285, 248, 249, 76, 
	248, 249, 287, 248, 288, 249, 296, 300, 
	248, 289, 249, 248, 249, 290, 248, 249, 
	291, 248, 249, 292, 248, 249, 293, 248, 
	249, 294, 248, 249, 295, 248, 249, 285, 
	248, 249, 297, 248, 249, 298, 248, 299, 
	249, 248, 264, 249, 248, 249, 301, 248, 
	249, 302, 248, 249, 303, 248, 249, 285, 
	248, 249, 305, 248, 249, 306, 248, 249, 
	307, 248, 308, 249, 248, 309, 249, 248, 
	249, 285, 248, 249, 311, 248, 249, 264, 
	248, 313, 0, 31, 0, 314, 315, 314, 
	0, 319, 318, 317, 315, 318, 316, 0, 
	317, 315, 316, 0, 317, 316, 319, 318, 
	317, 315, 318, 316, 319, 319, 5, 15, 
	17, 31, 34, 37, 39, 42, 77, 240, 
	312, 314, 319, 0, 60, 76, 321, 59, 
	60, 75, 59, 60, 323, 59, 324, 60, 
	59, 75, 60, 59, 60, 326, 59, 327, 
	60, 336, 59, 328, 60, 59, 60, 329, 
	59, 60, 330, 59, 60, 331, 59, 60, 
	332, 59, 60, 333, 59, 60, 334, 59, 
	60, 335, 59, 60, 76, 59, 60, 337, 
	59, 60, 338, 59, 339, 60, 59, 75, 
	60, 59, 60, 341, 59, 60, 342, 59, 
	60, 343, 59, 344, 60, 59, 345, 60, 
	59, 60, 335, 59, 60, 347, 59, 60, 
	75, 59, 0, 0
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
	0, 95, 7, 0, 7, 39, 47, 0, 
	0, 39, 95, 7, 7, 39, 103, 21, 
	0, 47, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 39, 50, 99, 19, 0, 39, 39, 
	39, 39, 0, 23, 107, 23, 23, 44, 
	23, 0, 47, 0, 1, 0, 39, 0, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 124, 50, 47, 0, 47, 0, 
	71, 29, 77, 71, 77, 77, 77, 77, 
	77, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 15, 0, 47, 15, 0, 
	115, 27, 53, 50, 27, 56, 50, 56, 
	56, 56, 56, 56, 56, 59, 27, 39, 
	0, 0, 39, 0, 0, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 124, 50, 47, 0, 47, 0, 62, 
	29, 62, 77, 77, 77, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 9, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 0, 47, 0, 0, 47, 0, 
	47, 0, 0, 47, 0, 0, 47, 9, 
	0, 47, 0, 0, 0, 0, 47, 0, 
	0, 0, 47, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 0, 47, 0, 
	0, 47, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 0, 47, 0, 0, 47, 
	0, 47, 0, 0, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 124, 50, 
	47, 0, 47, 0, 65, 29, 77, 65, 
	77, 77, 77, 77, 77, 77, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	11, 0, 47, 11, 0, 47, 11, 0, 
	0, 47, 0, 0, 47, 0, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 0, 47, 
	0, 0, 47, 0, 47, 0, 0, 47, 
	0, 0, 47, 11, 0, 47, 0, 0, 
	0, 47, 0, 0, 0, 47, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 0, 47, 0, 0, 47, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 0, 47, 0, 0, 47, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	124, 50, 47, 0, 47, 0, 74, 77, 
	74, 0, 0, 47, 0, 0, 0, 47, 
	0, 0, 47, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 17, 0, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 124, 50, 47, 0, 47, 0, 
	68, 29, 77, 68, 77, 77, 77, 77, 
	77, 77, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 13, 0, 47, 13, 
	0, 47, 13, 0, 0, 47, 0, 0, 
	47, 0, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 0, 47, 0, 0, 47, 0, 
	47, 0, 0, 47, 0, 0, 47, 13, 
	0, 47, 0, 0, 0, 47, 0, 0, 
	0, 0, 47, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 0, 
	47, 0, 0, 47, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 0, 47, 0, 0, 47, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 0, 39, 0, 39, 0, 0, 0, 
	39, 47, 33, 33, 80, 33, 33, 39, 
	0, 35, 0, 39, 0, 0, 47, 0, 
	0, 35, 0, 0, 47, 0, 86, 83, 
	37, 89, 83, 89, 89, 89, 89, 89, 
	89, 92, 0, 39, 47, 15, 0, 0, 
	47, 0, 0, 47, 0, 0, 0, 47, 
	0, 0, 47, 0, 47, 0, 0, 0, 
	47, 0, 0, 0, 47, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 15, 0, 47, 0, 
	0, 47, 0, 0, 0, 47, 0, 0, 
	47, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 0, 47, 0, 0, 47, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 0, 0
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
self.lexer_first_final = 348;
class << self
	attr_accessor :lexer_error
end
self.lexer_error = 0;

class << self
	attr_accessor :lexer_en_main
end
self.lexer_en_main = 1;


# line 128 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
      end
 
      def scan(data)
        data = (data + "\n%_FEATURE_END_%").unpack("c*") # Explicit EOF simplifies things considerably
        eof = pe = data.length
 
        @line_number = 1
        @last_newline = 0
 
        
# line 715 "lib/gherkin/rb_lexer/sk.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = lexer_start
end

# line 138 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
        
# line 724 "lib/gherkin/rb_lexer/sk.rb"
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
# line 7 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          @content_start = p
          @current_line = @line_number
        		end
# line 7 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
when 1 then
# line 12 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          @current_line = @line_number
          @start_col = p - @last_newline
        		end
# line 12 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
when 2 then
# line 17 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          @content_start = p
        		end
# line 17 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
when 3 then
# line 21 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          con = unindent(@start_col, utf8_pack(data[@content_start...@next_keyword_start-1]).sub(/(\r?\n)?([\t ])*\Z/, '').gsub(/\\"\\"\\"/, '"""'))
          @listener.py_string(con, @current_line) 
        		end
# line 21 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
when 4 then
# line 26 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          store_keyword_content(:feature, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start          
          @next_keyword_start = nil
        		end
# line 26 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
when 5 then
# line 32 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          store_keyword_content(:background, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
# line 32 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
when 6 then
# line 38 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          store_keyword_content(:scenario, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
# line 38 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
when 7 then
# line 44 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          store_keyword_content(:scenario_outline, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
# line 44 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
when 8 then
# line 50 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          store_keyword_content(:examples, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
# line 50 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
when 9 then
# line 56 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.step(@keyword, con, @current_line)
        		end
# line 56 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
when 10 then
# line 61 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.comment(con, @line_number)
          @keyword_start = nil
        		end
# line 61 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
when 11 then
# line 67 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.tag(con, @current_line)
          @keyword_start = nil
        		end
# line 67 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
when 12 then
# line 73 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          @line_number += 1
        		end
# line 73 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
when 13 then
# line 77 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          @last_newline = p + 1
        		end
# line 77 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
when 14 then
# line 81 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          @keyword_start ||= p
        		end
# line 81 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
when 15 then
# line 85 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          @keyword = utf8_pack(data[@keyword_start...p]).sub(/:$/,'')
          @keyword_start = nil
        		end
# line 85 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
when 16 then
# line 90 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          @next_keyword_start = p
        		end
# line 90 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
when 17 then
# line 94 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          p = p - 1
          current_row = []
          @current_line = @line_number
        		end
# line 94 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
when 18 then
# line 100 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          @content_start = p
        		end
# line 100 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
when 19 then
# line 104 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          current_row << con.gsub(/\\\|/, "|").gsub(/\\\\/, "\\")
        		end
# line 104 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
when 20 then
# line 109 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          @listener.row(current_row, @current_line)
        		end
# line 109 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
when 21 then
# line 113 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/aslakhellesoy/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 113 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
# line 985 "lib/gherkin/rb_lexer/sk.rb"
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
# line 113 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/aslakhellesoy/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 113 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
# line 1025 "lib/gherkin/rb_lexer/sk.rb"
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

# line 139 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sk.rb.rl"
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
