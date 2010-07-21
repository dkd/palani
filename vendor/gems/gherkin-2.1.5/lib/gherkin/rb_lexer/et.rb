
# line 1 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
module Gherkin
  module RbLexer
    class Et #:nodoc:
      
# line 123 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"

 
      def initialize(listener)
        @listener = listener
        
# line 14 "lib/gherkin/rb_lexer/et.rb"
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
	0, 0, 18, 19, 20, 37, 38, 39, 
	43, 48, 53, 58, 63, 67, 71, 73, 
	74, 75, 76, 77, 78, 79, 80, 81, 
	82, 83, 84, 85, 86, 87, 88, 89, 
	90, 92, 97, 104, 109, 110, 111, 112, 
	113, 114, 115, 116, 118, 119, 120, 121, 
	122, 123, 124, 125, 126, 127, 134, 136, 
	138, 140, 142, 144, 146, 163, 164, 165, 
	167, 168, 169, 170, 171, 172, 173, 174, 
	175, 187, 189, 191, 193, 195, 197, 199, 
	201, 203, 205, 207, 209, 211, 213, 215, 
	217, 219, 221, 223, 225, 227, 229, 231, 
	233, 235, 237, 239, 241, 243, 245, 247, 
	249, 251, 253, 255, 257, 259, 261, 263, 
	265, 267, 269, 271, 273, 275, 277, 278, 
	279, 280, 281, 282, 283, 284, 285, 286, 
	287, 288, 289, 290, 291, 292, 293, 294, 
	307, 309, 311, 313, 315, 317, 319, 321, 
	323, 325, 327, 329, 331, 333, 335, 337, 
	339, 341, 343, 345, 347, 349, 351, 353, 
	355, 357, 360, 362, 364, 366, 368, 370, 
	372, 375, 377, 379, 381, 383, 385, 387, 
	389, 391, 393, 395, 397, 398, 399, 400, 
	401, 402, 403, 404, 405, 406, 407, 408, 
	409, 410, 425, 427, 429, 431, 433, 435, 
	437, 439, 441, 443, 445, 447, 449, 451, 
	453, 455, 457, 459, 461, 463, 465, 467, 
	469, 471, 473, 475, 478, 480, 482, 484, 
	486, 488, 490, 492, 494, 496, 498, 500, 
	502, 504, 506, 508, 510, 512, 514, 516, 
	518, 521, 523, 525, 527, 529, 531, 532, 
	533, 534, 535, 536, 537, 538, 552, 554, 
	556, 558, 560, 562, 564, 566, 568, 570, 
	572, 574, 576, 578, 580, 582, 584, 586, 
	588, 590, 592, 594, 596, 598, 600, 602, 
	605, 607, 609, 611, 613, 615, 617, 619, 
	621, 623, 625, 627, 629, 631, 633, 635, 
	637, 639, 641, 643, 645, 648, 650, 654, 
	660, 663, 665, 671, 688
]

class << self
	attr_accessor :_lexer_trans_keys
	private :_lexer_trans_keys, :_lexer_trans_keys=
end
self._lexer_trans_keys = [
	-17, 10, 32, 34, 35, 37, 42, 64, 
	69, 74, 75, 79, 82, 83, 84, 124, 
	9, 13, -69, -65, 10, 32, 34, 35, 
	37, 42, 64, 69, 74, 75, 79, 82, 
	83, 84, 124, 9, 13, 34, 34, 10, 
	32, 9, 13, 10, 32, 34, 9, 13, 
	10, 32, 34, 9, 13, 10, 32, 34, 
	9, 13, 10, 32, 34, 9, 13, 10, 
	32, 9, 13, 10, 32, 9, 13, 10, 
	13, 10, 95, 70, 69, 65, 84, 85, 
	82, 69, 95, 69, 78, 68, 95, 37, 
	32, 10, 10, 13, 13, 32, 64, 9, 
	10, 9, 10, 13, 32, 64, 11, 12, 
	10, 32, 64, 9, 13, 101, 108, 100, 
	97, 100, 101, 115, 97, 117, 104, 116, 
	117, 109, 105, 100, 58, 10, 10, 10, 
	32, 35, 79, 124, 9, 13, 10, 109, 
	10, 97, 10, 100, 10, 117, 10, 115, 
	10, 58, 10, 32, 34, 35, 37, 42, 
	64, 69, 74, 75, 79, 82, 83, 84, 
	124, 9, 13, 117, 105, 32, 100, 109, 
	97, 100, 117, 115, 58, 10, 10, 10, 
	32, 35, 37, 64, 74, 79, 82, 83, 
	84, 9, 13, 10, 95, 10, 70, 10, 
	69, 10, 65, 10, 84, 10, 85, 10, 
	82, 10, 69, 10, 95, 10, 69, 10, 
	78, 10, 68, 10, 95, 10, 37, 10, 
	117, 10, 104, 10, 116, 10, 117, 10, 
	109, 10, 105, 10, 100, 10, 58, 10, 
	109, 10, 97, 10, 100, 10, 117, 10, 
	115, 10, 97, 10, 97, 10, 109, 10, 
	115, 10, 116, 10, 115, 10, 101, 10, 
	110, 10, 97, 10, 97, 10, 114, 10, 
	105, 10, 117, 10, 109, 10, 97, 10, 
	117, 10, 115, 10, 116, 97, 97, 109, 
	115, 116, 115, 101, 110, 97, 97, 114, 
	105, 117, 109, 58, 10, 10, 10, 32, 
	35, 37, 42, 64, 69, 74, 75, 79, 
	83, 9, 13, 10, 95, 10, 70, 10, 
	69, 10, 65, 10, 84, 10, 85, 10, 
	82, 10, 69, 10, 95, 10, 69, 10, 
	78, 10, 68, 10, 95, 10, 37, 10, 
	32, 10, 101, 10, 108, 10, 100, 10, 
	97, 10, 100, 10, 101, 10, 115, 10, 
	97, 10, 117, 10, 105, 10, 32, 100, 
	10, 109, 10, 97, 10, 100, 10, 117, 
	10, 115, 10, 58, 10, 105, 116, 10, 
	105, 10, 115, 10, 101, 10, 110, 10, 
	97, 10, 97, 10, 114, 10, 105, 10, 
	117, 10, 109, 105, 116, 105, 115, 101, 
	110, 97, 97, 114, 105, 117, 109, 58, 
	10, 10, 10, 32, 35, 37, 42, 64, 
	69, 74, 75, 79, 82, 83, 84, 9, 
	13, 10, 95, 10, 70, 10, 69, 10, 
	65, 10, 84, 10, 85, 10, 82, 10, 
	69, 10, 95, 10, 69, 10, 78, 10, 
	68, 10, 95, 10, 37, 10, 32, 10, 
	101, 10, 108, 10, 100, 10, 97, 10, 
	100, 10, 101, 10, 115, 10, 97, 10, 
	117, 10, 105, 10, 32, 100, 10, 109, 
	10, 97, 10, 100, 10, 117, 10, 115, 
	10, 58, 10, 97, 10, 97, 10, 109, 
	10, 115, 10, 116, 10, 115, 10, 101, 
	10, 110, 10, 97, 10, 97, 10, 114, 
	10, 105, 10, 117, 10, 109, 10, 105, 
	116, 10, 105, 10, 97, 10, 117, 10, 
	115, 10, 116, 97, 117, 115, 116, 58, 
	10, 10, 10, 32, 35, 37, 42, 64, 
	69, 74, 75, 79, 82, 83, 9, 13, 
	10, 95, 10, 70, 10, 69, 10, 65, 
	10, 84, 10, 85, 10, 82, 10, 69, 
	10, 95, 10, 69, 10, 78, 10, 68, 
	10, 95, 10, 37, 10, 32, 10, 101, 
	10, 108, 10, 100, 10, 97, 10, 100, 
	10, 101, 10, 115, 10, 97, 10, 117, 
	10, 105, 10, 32, 100, 10, 109, 10, 
	97, 10, 100, 10, 117, 10, 115, 10, 
	58, 10, 97, 10, 97, 10, 109, 10, 
	115, 10, 116, 10, 115, 10, 101, 10, 
	110, 10, 97, 10, 97, 10, 114, 10, 
	105, 10, 117, 10, 109, 10, 105, 116, 
	10, 105, 32, 124, 9, 13, 10, 32, 
	92, 124, 9, 13, 10, 92, 124, 10, 
	92, 10, 32, 92, 124, 9, 13, 10, 
	32, 34, 35, 37, 42, 64, 69, 74, 
	75, 79, 82, 83, 84, 124, 9, 13, 
	0
]

class << self
	attr_accessor :_lexer_single_lengths
	private :_lexer_single_lengths, :_lexer_single_lengths=
end
self._lexer_single_lengths = [
	0, 16, 1, 1, 15, 1, 1, 2, 
	3, 3, 3, 3, 2, 2, 2, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	2, 3, 5, 3, 1, 1, 1, 1, 
	1, 1, 1, 2, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 5, 2, 2, 
	2, 2, 2, 2, 15, 1, 1, 2, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	10, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 11, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 3, 2, 2, 2, 2, 2, 2, 
	3, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 13, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 3, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	3, 2, 2, 2, 2, 2, 1, 1, 
	1, 1, 1, 1, 1, 12, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 3, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 3, 2, 2, 4, 
	3, 2, 4, 15, 0
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
	0, 0, 0, 0, 0, 1, 0, 0, 
	0, 0, 0, 0, 1, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	1, 0, 0, 0, 0, 0, 0, 0, 
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
	0, 1, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 1, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 1, 1, 
	0, 0, 1, 1, 0
]

class << self
	attr_accessor :_lexer_index_offsets
	private :_lexer_index_offsets, :_lexer_index_offsets=
end
self._lexer_index_offsets = [
	0, 0, 18, 20, 22, 39, 41, 43, 
	47, 52, 57, 62, 67, 71, 75, 78, 
	80, 82, 84, 86, 88, 90, 92, 94, 
	96, 98, 100, 102, 104, 106, 108, 110, 
	112, 115, 120, 127, 132, 134, 136, 138, 
	140, 142, 144, 146, 149, 151, 153, 155, 
	157, 159, 161, 163, 165, 167, 174, 177, 
	180, 183, 186, 189, 192, 209, 211, 213, 
	216, 218, 220, 222, 224, 226, 228, 230, 
	232, 244, 247, 250, 253, 256, 259, 262, 
	265, 268, 271, 274, 277, 280, 283, 286, 
	289, 292, 295, 298, 301, 304, 307, 310, 
	313, 316, 319, 322, 325, 328, 331, 334, 
	337, 340, 343, 346, 349, 352, 355, 358, 
	361, 364, 367, 370, 373, 376, 379, 381, 
	383, 385, 387, 389, 391, 393, 395, 397, 
	399, 401, 403, 405, 407, 409, 411, 413, 
	426, 429, 432, 435, 438, 441, 444, 447, 
	450, 453, 456, 459, 462, 465, 468, 471, 
	474, 477, 480, 483, 486, 489, 492, 495, 
	498, 501, 505, 508, 511, 514, 517, 520, 
	523, 527, 530, 533, 536, 539, 542, 545, 
	548, 551, 554, 557, 560, 562, 564, 566, 
	568, 570, 572, 574, 576, 578, 580, 582, 
	584, 586, 601, 604, 607, 610, 613, 616, 
	619, 622, 625, 628, 631, 634, 637, 640, 
	643, 646, 649, 652, 655, 658, 661, 664, 
	667, 670, 673, 676, 680, 683, 686, 689, 
	692, 695, 698, 701, 704, 707, 710, 713, 
	716, 719, 722, 725, 728, 731, 734, 737, 
	740, 744, 747, 750, 753, 756, 759, 761, 
	763, 765, 767, 769, 771, 773, 787, 790, 
	793, 796, 799, 802, 805, 808, 811, 814, 
	817, 820, 823, 826, 829, 832, 835, 838, 
	841, 844, 847, 850, 853, 856, 859, 862, 
	866, 869, 872, 875, 878, 881, 884, 887, 
	890, 893, 896, 899, 902, 905, 908, 911, 
	914, 917, 920, 923, 926, 930, 933, 937, 
	943, 947, 950, 956, 973
]

class << self
	attr_accessor :_lexer_trans_targs
	private :_lexer_trans_targs, :_lexer_trans_targs=
end
self._lexer_trans_targs = [
	2, 4, 4, 5, 14, 16, 30, 33, 
	36, 43, 61, 64, 118, 179, 246, 302, 
	4, 0, 3, 0, 4, 0, 4, 4, 
	5, 14, 16, 30, 33, 36, 43, 61, 
	64, 118, 179, 246, 302, 4, 0, 6, 
	0, 7, 0, 8, 7, 7, 0, 9, 
	9, 10, 9, 9, 9, 9, 10, 9, 
	9, 9, 9, 11, 9, 9, 9, 9, 
	12, 9, 9, 4, 13, 13, 0, 4, 
	13, 13, 0, 4, 15, 14, 4, 0, 
	17, 0, 18, 0, 19, 0, 20, 0, 
	21, 0, 22, 0, 23, 0, 24, 0, 
	25, 0, 26, 0, 27, 0, 28, 0, 
	29, 0, 308, 0, 31, 0, 0, 32, 
	4, 15, 32, 0, 0, 0, 0, 34, 
	35, 4, 35, 35, 33, 34, 34, 4, 
	35, 33, 35, 0, 37, 0, 38, 0, 
	39, 0, 40, 0, 41, 0, 42, 0, 
	30, 0, 30, 44, 0, 45, 0, 46, 
	0, 47, 0, 48, 0, 49, 0, 50, 
	0, 51, 0, 53, 52, 53, 52, 53, 
	53, 4, 54, 4, 53, 52, 53, 55, 
	52, 53, 56, 52, 53, 57, 52, 53, 
	58, 52, 53, 59, 52, 53, 60, 52, 
	4, 4, 5, 14, 16, 30, 33, 36, 
	43, 61, 64, 118, 179, 246, 302, 4, 
	0, 62, 0, 63, 0, 31, 30, 0, 
	65, 0, 66, 0, 67, 0, 68, 0, 
	69, 0, 70, 0, 72, 71, 72, 71, 
	72, 72, 4, 73, 4, 87, 95, 100, 
	104, 114, 72, 71, 72, 74, 71, 72, 
	75, 71, 72, 76, 71, 72, 77, 71, 
	72, 78, 71, 72, 79, 71, 72, 80, 
	71, 72, 81, 71, 72, 82, 71, 72, 
	83, 71, 72, 84, 71, 72, 85, 71, 
	72, 86, 71, 72, 4, 71, 72, 88, 
	71, 72, 89, 71, 72, 90, 71, 72, 
	91, 71, 72, 92, 71, 72, 93, 71, 
	72, 94, 71, 72, 60, 71, 72, 96, 
	71, 72, 97, 71, 72, 98, 71, 72, 
	99, 71, 72, 94, 71, 72, 101, 71, 
	72, 102, 71, 72, 103, 71, 72, 104, 
	71, 72, 105, 71, 72, 106, 71, 72, 
	107, 71, 72, 108, 71, 72, 109, 71, 
	72, 110, 71, 72, 111, 71, 72, 112, 
	71, 72, 113, 71, 72, 94, 71, 72, 
	115, 71, 72, 116, 71, 72, 117, 71, 
	72, 94, 71, 119, 0, 120, 0, 121, 
	0, 122, 0, 123, 0, 124, 0, 125, 
	0, 126, 0, 127, 0, 128, 0, 129, 
	0, 130, 0, 131, 0, 132, 0, 133, 
	0, 135, 134, 135, 134, 135, 135, 4, 
	136, 150, 4, 151, 158, 159, 162, 168, 
	135, 134, 135, 137, 134, 135, 138, 134, 
	135, 139, 134, 135, 140, 134, 135, 141, 
	134, 135, 142, 134, 135, 143, 134, 135, 
	144, 134, 135, 145, 134, 135, 146, 134, 
	135, 147, 134, 135, 148, 134, 135, 149, 
	134, 135, 4, 134, 135, 60, 134, 135, 
	152, 134, 135, 153, 134, 135, 154, 134, 
	135, 155, 134, 135, 156, 134, 135, 157, 
	134, 135, 150, 134, 135, 150, 134, 135, 
	160, 134, 135, 161, 134, 135, 60, 150, 
	134, 135, 163, 134, 135, 164, 134, 135, 
	165, 134, 135, 166, 134, 135, 167, 134, 
	135, 60, 134, 135, 169, 170, 134, 135, 
	157, 134, 135, 171, 134, 135, 172, 134, 
	135, 173, 134, 135, 174, 134, 135, 175, 
	134, 135, 176, 134, 135, 177, 134, 135, 
	178, 134, 135, 167, 134, 180, 181, 0, 
	42, 0, 182, 0, 183, 0, 184, 0, 
	185, 0, 186, 0, 187, 0, 188, 0, 
	189, 0, 190, 0, 191, 0, 193, 192, 
	193, 192, 193, 193, 4, 194, 208, 4, 
	209, 216, 217, 220, 226, 240, 242, 193, 
	192, 193, 195, 192, 193, 196, 192, 193, 
	197, 192, 193, 198, 192, 193, 199, 192, 
	193, 200, 192, 193, 201, 192, 193, 202, 
	192, 193, 203, 192, 193, 204, 192, 193, 
	205, 192, 193, 206, 192, 193, 207, 192, 
	193, 4, 192, 193, 60, 192, 193, 210, 
	192, 193, 211, 192, 193, 212, 192, 193, 
	213, 192, 193, 214, 192, 193, 215, 192, 
	193, 208, 192, 193, 208, 192, 193, 218, 
	192, 193, 219, 192, 193, 60, 208, 192, 
	193, 221, 192, 193, 222, 192, 193, 223, 
	192, 193, 224, 192, 193, 225, 192, 193, 
	60, 192, 193, 227, 192, 193, 228, 192, 
	193, 229, 192, 193, 230, 192, 193, 231, 
	192, 193, 232, 192, 193, 233, 192, 193, 
	234, 192, 193, 235, 192, 193, 236, 192, 
	193, 237, 192, 193, 238, 192, 193, 239, 
	192, 193, 225, 192, 193, 241, 231, 192, 
	193, 215, 192, 193, 243, 192, 193, 244, 
	192, 193, 245, 192, 193, 225, 192, 247, 
	0, 248, 0, 249, 0, 250, 0, 251, 
	0, 253, 252, 253, 252, 253, 253, 4, 
	254, 268, 4, 269, 276, 277, 280, 286, 
	300, 253, 252, 253, 255, 252, 253, 256, 
	252, 253, 257, 252, 253, 258, 252, 253, 
	259, 252, 253, 260, 252, 253, 261, 252, 
	253, 262, 252, 253, 263, 252, 253, 264, 
	252, 253, 265, 252, 253, 266, 252, 253, 
	267, 252, 253, 4, 252, 253, 60, 252, 
	253, 270, 252, 253, 271, 252, 253, 272, 
	252, 253, 273, 252, 253, 274, 252, 253, 
	275, 252, 253, 268, 252, 253, 268, 252, 
	253, 278, 252, 253, 279, 252, 253, 60, 
	268, 252, 253, 281, 252, 253, 282, 252, 
	253, 283, 252, 253, 284, 252, 253, 285, 
	252, 253, 60, 252, 253, 287, 252, 253, 
	288, 252, 253, 289, 252, 253, 290, 252, 
	253, 291, 252, 253, 292, 252, 253, 293, 
	252, 253, 294, 252, 253, 295, 252, 253, 
	296, 252, 253, 297, 252, 253, 298, 252, 
	253, 299, 252, 253, 285, 252, 253, 301, 
	291, 252, 253, 275, 252, 302, 303, 302, 
	0, 307, 306, 305, 303, 306, 304, 0, 
	305, 303, 304, 0, 305, 304, 307, 306, 
	305, 303, 306, 304, 307, 307, 5, 14, 
	16, 30, 33, 36, 43, 61, 64, 118, 
	179, 246, 302, 307, 0, 0, 0
]

class << self
	attr_accessor :_lexer_trans_actions
	private :_lexer_trans_actions, :_lexer_trans_actions=
end
self._lexer_trans_actions = [
	0, 47, 0, 3, 1, 0, 25, 1, 
	25, 25, 25, 25, 25, 25, 25, 31, 
	0, 39, 0, 39, 0, 39, 47, 0, 
	3, 1, 0, 25, 1, 25, 25, 25, 
	25, 25, 25, 25, 31, 0, 39, 0, 
	39, 0, 39, 47, 0, 0, 39, 119, 
	41, 41, 41, 5, 111, 29, 29, 29, 
	0, 111, 29, 29, 29, 0, 111, 29, 
	0, 29, 0, 95, 7, 7, 39, 47, 
	0, 0, 39, 103, 21, 0, 47, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 39, 50, 
	99, 19, 0, 39, 39, 39, 39, 0, 
	23, 107, 23, 23, 44, 23, 0, 47, 
	0, 1, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 124, 50, 47, 0, 47, 
	0, 74, 77, 74, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 17, 0, 
	115, 27, 53, 50, 27, 56, 50, 56, 
	56, 56, 56, 56, 56, 56, 59, 27, 
	39, 0, 39, 0, 39, 0, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 124, 50, 47, 0, 
	47, 0, 62, 29, 62, 77, 77, 77, 
	77, 77, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 9, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 9, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 124, 50, 47, 0, 47, 0, 71, 
	29, 77, 71, 77, 77, 77, 77, 77, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 15, 0, 47, 15, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 15, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 15, 0, 47, 0, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 0, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 124, 50, 
	47, 0, 47, 0, 68, 29, 77, 68, 
	77, 77, 77, 77, 77, 77, 77, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 13, 0, 47, 13, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 13, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	13, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 124, 50, 47, 0, 47, 0, 65, 
	29, 77, 65, 77, 77, 77, 77, 77, 
	77, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 11, 0, 47, 11, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 11, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 11, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 0, 47, 0, 0, 0, 0, 0, 
	39, 47, 33, 33, 80, 33, 33, 39, 
	0, 35, 0, 39, 0, 0, 47, 0, 
	0, 35, 0, 0, 47, 0, 86, 83, 
	37, 89, 83, 89, 89, 89, 89, 89, 
	89, 89, 92, 0, 39, 0, 0
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
	39, 39, 39, 39, 39
]

class << self
	attr_accessor :lexer_start
end
self.lexer_start = 1;
class << self
	attr_accessor :lexer_first_final
end
self.lexer_first_final = 308;
class << self
	attr_accessor :lexer_error
end
self.lexer_error = 0;

class << self
	attr_accessor :lexer_en_main
end
self.lexer_en_main = 1;


# line 128 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
      end
 
      def scan(data)
        data = (data + "\n%_FEATURE_END_%").unpack("c*") # Explicit EOF simplifies things considerably
        eof = pe = data.length
 
        @line_number = 1
        @last_newline = 0
 
        
# line 651 "lib/gherkin/rb_lexer/et.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = lexer_start
end

# line 138 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
        
# line 660 "lib/gherkin/rb_lexer/et.rb"
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
# line 7 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          @content_start = p
          @current_line = @line_number
        		end
# line 7 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
when 1 then
# line 12 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          @current_line = @line_number
          @start_col = p - @last_newline
        		end
# line 12 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
when 2 then
# line 17 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          @content_start = p
        		end
# line 17 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
when 3 then
# line 21 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          con = unindent(@start_col, utf8_pack(data[@content_start...@next_keyword_start-1]).sub(/(\r?\n)?([\t ])*\Z/, '').gsub(/\\"\\"\\"/, '"""'))
          @listener.py_string(con, @current_line) 
        		end
# line 21 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
when 4 then
# line 26 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          store_keyword_content(:feature, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start          
          @next_keyword_start = nil
        		end
# line 26 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
when 5 then
# line 32 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          store_keyword_content(:background, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
# line 32 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
when 6 then
# line 38 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          store_keyword_content(:scenario, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
# line 38 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
when 7 then
# line 44 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          store_keyword_content(:scenario_outline, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
# line 44 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
when 8 then
# line 50 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          store_keyword_content(:examples, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
# line 50 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
when 9 then
# line 56 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.step(@keyword, con, @current_line)
        		end
# line 56 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
when 10 then
# line 61 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.comment(con, @line_number)
          @keyword_start = nil
        		end
# line 61 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
when 11 then
# line 67 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.tag(con, @current_line)
          @keyword_start = nil
        		end
# line 67 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
when 12 then
# line 73 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          @line_number += 1
        		end
# line 73 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
when 13 then
# line 77 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          @last_newline = p + 1
        		end
# line 77 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
when 14 then
# line 81 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          @keyword_start ||= p
        		end
# line 81 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
when 15 then
# line 85 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          @keyword = utf8_pack(data[@keyword_start...p]).sub(/:$/,'')
          @keyword_start = nil
        		end
# line 85 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
when 16 then
# line 90 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          @next_keyword_start = p
        		end
# line 90 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
when 17 then
# line 94 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          p = p - 1
          current_row = []
          @current_line = @line_number
        		end
# line 94 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
when 18 then
# line 100 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          @content_start = p
        		end
# line 100 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
when 19 then
# line 104 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          current_row << con.gsub(/\\\|/, "|").gsub(/\\\\/, "\\")
        		end
# line 104 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
when 20 then
# line 109 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          @listener.row(current_row, @current_line)
        		end
# line 109 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
when 21 then
# line 113 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/aslakhellesoy/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 113 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
# line 921 "lib/gherkin/rb_lexer/et.rb"
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
# line 113 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/aslakhellesoy/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 113 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
# line 961 "lib/gherkin/rb_lexer/et.rb"
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

# line 139 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/et.rb.rl"
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
