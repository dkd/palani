
# line 1 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
module Gherkin
  module RbLexer
    class Ro #:nodoc:
      
# line 123 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"

 
      def initialize(listener)
        @listener = listener
        
# line 14 "lib/gherkin/rb_lexer/ro.rb"
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
	88, 90, 95, 102, 107, 108, 109, 110, 
	111, 112, 114, 115, 116, 117, 118, 119, 
	120, 121, 122, 123, 124, 125, 138, 140, 
	142, 144, 146, 148, 150, 152, 154, 156, 
	158, 160, 162, 164, 166, 168, 184, 185, 
	187, 188, 189, 190, 191, 192, 193, 194, 
	195, 196, 197, 198, 199, 206, 208, 210, 
	212, 214, 216, 218, 220, 222, 224, 226, 
	228, 230, 232, 234, 236, 237, 238, 239, 
	240, 241, 242, 243, 244, 245, 246, 247, 
	248, 249, 250, 251, 252, 253, 264, 266, 
	268, 270, 272, 274, 276, 278, 280, 282, 
	284, 286, 288, 290, 292, 294, 296, 298, 
	300, 302, 304, 306, 308, 310, 312, 314, 
	316, 318, 320, 322, 324, 326, 328, 330, 
	332, 334, 336, 338, 340, 342, 344, 346, 
	348, 350, 352, 354, 356, 358, 360, 362, 
	364, 367, 369, 371, 373, 375, 377, 379, 
	381, 383, 385, 387, 389, 390, 391, 392, 
	393, 394, 395, 397, 398, 399, 412, 414, 
	416, 418, 420, 422, 424, 426, 428, 430, 
	432, 434, 436, 438, 440, 442, 444, 446, 
	448, 450, 452, 455, 457, 459, 461, 463, 
	465, 467, 469, 471, 473, 475, 478, 480, 
	482, 484, 486, 488, 490, 492, 494, 496, 
	498, 500, 502, 504, 506, 508, 511, 513, 
	515, 517, 519, 521, 523, 526, 528, 530, 
	532, 534, 536, 538, 540, 542, 544, 546, 
	547, 548, 549, 550, 551, 552, 553, 554, 
	555, 556, 557, 558, 559, 572, 574, 576, 
	578, 580, 582, 584, 586, 588, 590, 592, 
	594, 596, 598, 600, 602, 604, 606, 608, 
	610, 612, 614, 616, 618, 620, 623, 625, 
	627, 629, 631, 633, 635, 637, 639, 641, 
	643, 645, 647, 649, 651, 653, 655, 658, 
	660, 662, 664, 666, 668, 670, 674, 680, 
	683, 685, 691, 707, 709, 711, 713, 715, 
	717, 719, 721, 723, 725, 728, 730, 732, 
	734, 736, 738, 740, 742, 744, 746, 748, 
	750, 752, 754, 756, 758, 760, 763, 765, 
	767, 769, 771, 773, 775, 778, 780, 782, 
	784, 786, 788, 790, 792, 794, 796, 798
]

class << self
	attr_accessor :_lexer_trans_keys
	private :_lexer_trans_keys, :_lexer_trans_keys=
end
self._lexer_trans_keys = [
	-17, 10, 32, 34, 35, 37, 42, 64, 
	65, 67, 68, 69, 70, 83, 124, 9, 
	13, -69, -65, 10, 32, 34, 35, 37, 
	42, 64, 65, 67, 68, 69, 70, 83, 
	124, 9, 13, 34, 34, 10, 32, 9, 
	13, 10, 32, 34, 9, 13, 10, 32, 
	34, 9, 13, 10, 32, 34, 9, 13, 
	10, 32, 34, 9, 13, 10, 32, 9, 
	13, 10, 32, 9, 13, 10, 13, 10, 
	95, 70, 69, 65, 84, 85, 82, 69, 
	95, 69, 78, 68, 95, 37, 32, 10, 
	10, 13, 13, 32, 64, 9, 10, 9, 
	10, 13, 32, 64, 11, 12, 10, 32, 
	64, 9, 13, 116, 117, 110, 99, 105, 
	97, 111, 110, 100, 110, 100, 105, 116, 
	105, 105, 58, 10, 10, 10, 32, 35, 
	37, 42, 64, 65, 67, 68, 70, 83, 
	9, 13, 10, 95, 10, 70, 10, 69, 
	10, 65, 10, 84, 10, 85, 10, 82, 
	10, 69, 10, 95, 10, 69, 10, 78, 
	10, 68, 10, 95, 10, 37, 10, 32, 
	10, 32, 34, 35, 37, 42, 64, 65, 
	67, 68, 69, 70, 83, 124, 9, 13, 
	97, 99, 114, 97, 120, 101, 109, 112, 
	108, 101, 108, 101, 58, 10, 10, 10, 
	32, 35, 70, 124, 9, 13, 10, 117, 
	10, 110, 10, 99, 10, 116, 10, 105, 
	10, 111, 10, 110, 10, 97, 10, 108, 
	10, 105, 10, 116, 10, 97, 10, 116, 
	10, 101, 10, 58, 117, 110, 99, 116, 
	105, 111, 110, 97, 108, 105, 116, 97, 
	116, 101, 58, 10, 10, 10, 32, 35, 
	37, 64, 67, 69, 70, 83, 9, 13, 
	10, 95, 10, 70, 10, 69, 10, 65, 
	10, 84, 10, 85, 10, 82, 10, 69, 
	10, 95, 10, 69, 10, 78, 10, 68, 
	10, 95, 10, 37, 10, 111, 10, 110, 
	10, 100, 10, 105, 10, 116, 10, 105, 
	10, 105, 10, 58, 10, 120, 10, 101, 
	10, 109, 10, 112, 10, 108, 10, 101, 
	10, 108, 10, 101, 10, 117, 10, 110, 
	10, 99, 10, 116, 10, 105, 10, 111, 
	10, 110, 10, 97, 10, 108, 10, 105, 
	10, 116, 10, 97, 10, 116, 10, 99, 
	10, 101, 10, 110, 10, 97, 10, 114, 
	10, 105, 10, 117, 10, 58, 108, 10, 
	32, 10, 100, 10, 101, 10, 32, 10, 
	115, 10, 97, 10, 98, 10, 108, 10, 
	111, 10, 110, 99, 105, 101, 110, 97, 
	114, 105, 117, 58, 108, 10, 10, 10, 
	32, 35, 37, 42, 64, 65, 67, 68, 
	70, 83, 9, 13, 10, 95, 10, 70, 
	10, 69, 10, 65, 10, 84, 10, 85, 
	10, 82, 10, 69, 10, 95, 10, 69, 
	10, 78, 10, 68, 10, 95, 10, 37, 
	10, 32, 10, 116, 10, 117, 10, 110, 
	10, 99, 10, 105, 10, 97, 111, 10, 
	110, 10, 100, 10, 110, 10, 100, 10, 
	105, 10, 116, 10, 105, 10, 105, 10, 
	58, 10, 97, 10, 99, 114, 10, 97, 
	10, 117, 10, 110, 10, 99, 10, 116, 
	10, 105, 10, 111, 10, 110, 10, 97, 
	10, 108, 10, 105, 10, 116, 10, 97, 
	10, 116, 10, 101, 10, 99, 105, 10, 
	101, 10, 110, 10, 97, 10, 114, 10, 
	105, 10, 117, 10, 58, 108, 10, 32, 
	10, 100, 10, 101, 10, 32, 10, 115, 
	10, 97, 10, 98, 10, 108, 10, 111, 
	10, 110, 32, 100, 101, 32, 115, 97, 
	98, 108, 111, 110, 58, 10, 10, 10, 
	32, 35, 37, 42, 64, 65, 67, 68, 
	70, 83, 9, 13, 10, 95, 10, 70, 
	10, 69, 10, 65, 10, 84, 10, 85, 
	10, 82, 10, 69, 10, 95, 10, 69, 
	10, 78, 10, 68, 10, 95, 10, 37, 
	10, 32, 10, 116, 10, 117, 10, 110, 
	10, 99, 10, 105, 10, 97, 10, 110, 
	10, 100, 10, 97, 10, 99, 114, 10, 
	97, 10, 117, 10, 110, 10, 99, 10, 
	116, 10, 105, 10, 111, 10, 110, 10, 
	97, 10, 108, 10, 105, 10, 116, 10, 
	97, 10, 116, 10, 101, 10, 58, 10, 
	99, 105, 10, 101, 10, 110, 10, 97, 
	10, 114, 10, 105, 10, 117, 32, 124, 
	9, 13, 10, 32, 92, 124, 9, 13, 
	10, 92, 124, 10, 92, 10, 32, 92, 
	124, 9, 13, 10, 32, 34, 35, 37, 
	42, 64, 65, 67, 68, 69, 70, 83, 
	124, 9, 13, 10, 116, 10, 117, 10, 
	110, 10, 99, 10, 105, 10, 97, 10, 
	110, 10, 100, 10, 97, 10, 99, 114, 
	10, 97, 10, 117, 10, 110, 10, 99, 
	10, 116, 10, 105, 10, 111, 10, 110, 
	10, 97, 10, 108, 10, 105, 10, 116, 
	10, 97, 10, 116, 10, 101, 10, 58, 
	10, 99, 105, 10, 101, 10, 110, 10, 
	97, 10, 114, 10, 105, 10, 117, 10, 
	58, 108, 10, 32, 10, 100, 10, 101, 
	10, 32, 10, 115, 10, 97, 10, 98, 
	10, 108, 10, 111, 10, 110, 0
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
	2, 3, 5, 3, 1, 1, 1, 1, 
	1, 2, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 11, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 14, 1, 2, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 5, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 9, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	3, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 1, 1, 1, 1, 
	1, 1, 2, 1, 1, 11, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 3, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 3, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 3, 2, 2, 
	2, 2, 2, 2, 3, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 11, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 3, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 3, 2, 
	2, 2, 2, 2, 2, 2, 4, 3, 
	2, 4, 14, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 3, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 3, 2, 2, 
	2, 2, 2, 2, 3, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 0
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
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 1, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 1, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 1, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
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
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 1, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 1, 1, 0, 
	0, 1, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0
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
	110, 113, 118, 125, 130, 132, 134, 136, 
	138, 140, 143, 145, 147, 149, 151, 153, 
	155, 157, 159, 161, 163, 165, 178, 181, 
	184, 187, 190, 193, 196, 199, 202, 205, 
	208, 211, 214, 217, 220, 223, 239, 241, 
	244, 246, 248, 250, 252, 254, 256, 258, 
	260, 262, 264, 266, 268, 275, 278, 281, 
	284, 287, 290, 293, 296, 299, 302, 305, 
	308, 311, 314, 317, 320, 322, 324, 326, 
	328, 330, 332, 334, 336, 338, 340, 342, 
	344, 346, 348, 350, 352, 354, 365, 368, 
	371, 374, 377, 380, 383, 386, 389, 392, 
	395, 398, 401, 404, 407, 410, 413, 416, 
	419, 422, 425, 428, 431, 434, 437, 440, 
	443, 446, 449, 452, 455, 458, 461, 464, 
	467, 470, 473, 476, 479, 482, 485, 488, 
	491, 494, 497, 500, 503, 506, 509, 512, 
	515, 519, 522, 525, 528, 531, 534, 537, 
	540, 543, 546, 549, 552, 554, 556, 558, 
	560, 562, 564, 567, 569, 571, 584, 587, 
	590, 593, 596, 599, 602, 605, 608, 611, 
	614, 617, 620, 623, 626, 629, 632, 635, 
	638, 641, 644, 648, 651, 654, 657, 660, 
	663, 666, 669, 672, 675, 678, 682, 685, 
	688, 691, 694, 697, 700, 703, 706, 709, 
	712, 715, 718, 721, 724, 727, 731, 734, 
	737, 740, 743, 746, 749, 753, 756, 759, 
	762, 765, 768, 771, 774, 777, 780, 783, 
	785, 787, 789, 791, 793, 795, 797, 799, 
	801, 803, 805, 807, 809, 822, 825, 828, 
	831, 834, 837, 840, 843, 846, 849, 852, 
	855, 858, 861, 864, 867, 870, 873, 876, 
	879, 882, 885, 888, 891, 894, 898, 901, 
	904, 907, 910, 913, 916, 919, 922, 925, 
	928, 931, 934, 937, 940, 943, 946, 950, 
	953, 956, 959, 962, 965, 968, 972, 978, 
	982, 985, 991, 1007, 1010, 1013, 1016, 1019, 
	1022, 1025, 1028, 1031, 1034, 1038, 1041, 1044, 
	1047, 1050, 1053, 1056, 1059, 1062, 1065, 1068, 
	1071, 1074, 1077, 1080, 1083, 1086, 1090, 1093, 
	1096, 1099, 1102, 1105, 1108, 1112, 1115, 1118, 
	1121, 1124, 1127, 1130, 1133, 1136, 1139, 1142
]

class << self
	attr_accessor :_lexer_trans_targs
	private :_lexer_trans_targs, :_lexer_trans_targs=
end
self._lexer_trans_targs = [
	2, 4, 4, 5, 14, 16, 30, 33, 
	36, 41, 70, 73, 100, 179, 317, 4, 
	0, 3, 0, 4, 0, 4, 4, 5, 
	14, 16, 30, 33, 36, 41, 70, 73, 
	100, 179, 317, 4, 0, 6, 0, 7, 
	0, 8, 7, 7, 0, 9, 9, 10, 
	9, 9, 9, 9, 10, 9, 9, 9, 
	9, 11, 9, 9, 9, 9, 12, 9, 
	9, 4, 13, 13, 0, 4, 13, 13, 
	0, 4, 15, 14, 4, 0, 17, 0, 
	18, 0, 19, 0, 20, 0, 21, 0, 
	22, 0, 23, 0, 24, 0, 25, 0, 
	26, 0, 27, 0, 28, 0, 29, 0, 
	367, 0, 31, 0, 0, 32, 4, 15, 
	32, 0, 0, 0, 0, 34, 35, 4, 
	35, 35, 33, 34, 34, 4, 35, 33, 
	35, 0, 37, 0, 38, 0, 39, 0, 
	40, 0, 30, 0, 42, 44, 0, 43, 
	0, 30, 0, 45, 0, 46, 0, 47, 
	0, 48, 0, 49, 0, 50, 0, 51, 
	0, 53, 52, 53, 52, 53, 53, 4, 
	54, 68, 4, 323, 328, 331, 334, 349, 
	53, 52, 53, 55, 52, 53, 56, 52, 
	53, 57, 52, 53, 58, 52, 53, 59, 
	52, 53, 60, 52, 53, 61, 52, 53, 
	62, 52, 53, 63, 52, 53, 64, 52, 
	53, 65, 52, 53, 66, 52, 53, 67, 
	52, 53, 4, 52, 53, 69, 52, 4, 
	4, 5, 14, 16, 30, 33, 36, 41, 
	70, 73, 100, 179, 317, 4, 0, 71, 
	0, 72, 30, 0, 30, 0, 74, 0, 
	75, 0, 76, 0, 77, 0, 78, 0, 
	79, 0, 80, 0, 81, 0, 82, 0, 
	84, 83, 84, 83, 84, 84, 4, 85, 
	4, 84, 83, 84, 86, 83, 84, 87, 
	83, 84, 88, 83, 84, 89, 83, 84, 
	90, 83, 84, 91, 83, 84, 92, 83, 
	84, 93, 83, 84, 94, 83, 84, 95, 
	83, 84, 96, 83, 84, 97, 83, 84, 
	98, 83, 84, 99, 83, 84, 69, 83, 
	101, 0, 102, 0, 103, 0, 104, 0, 
	105, 0, 106, 0, 107, 0, 108, 0, 
	109, 0, 110, 0, 111, 0, 112, 0, 
	113, 0, 114, 0, 115, 0, 117, 116, 
	117, 116, 117, 117, 4, 118, 4, 132, 
	140, 148, 161, 117, 116, 117, 119, 116, 
	117, 120, 116, 117, 121, 116, 117, 122, 
	116, 117, 123, 116, 117, 124, 116, 117, 
	125, 116, 117, 126, 116, 117, 127, 116, 
	117, 128, 116, 117, 129, 116, 117, 130, 
	116, 117, 131, 116, 117, 4, 116, 117, 
	133, 116, 117, 134, 116, 117, 135, 116, 
	117, 136, 116, 117, 137, 116, 117, 138, 
	116, 117, 139, 116, 117, 69, 116, 117, 
	141, 116, 117, 142, 116, 117, 143, 116, 
	117, 144, 116, 117, 145, 116, 117, 146, 
	116, 117, 147, 116, 117, 139, 116, 117, 
	149, 116, 117, 150, 116, 117, 151, 116, 
	117, 152, 116, 117, 153, 116, 117, 154, 
	116, 117, 155, 116, 117, 156, 116, 117, 
	157, 116, 117, 158, 116, 117, 159, 116, 
	117, 160, 116, 117, 147, 116, 117, 162, 
	116, 117, 163, 116, 117, 164, 116, 117, 
	165, 116, 117, 166, 116, 117, 167, 116, 
	117, 168, 116, 117, 69, 169, 116, 117, 
	170, 116, 117, 171, 116, 117, 172, 116, 
	117, 173, 116, 117, 174, 116, 117, 175, 
	116, 117, 176, 116, 117, 177, 116, 117, 
	178, 116, 117, 139, 116, 180, 30, 0, 
	181, 0, 182, 0, 183, 0, 184, 0, 
	185, 0, 186, 0, 187, 255, 0, 189, 
	188, 189, 188, 189, 189, 4, 190, 204, 
	4, 205, 210, 220, 223, 237, 189, 188, 
	189, 191, 188, 189, 192, 188, 189, 193, 
	188, 189, 194, 188, 189, 195, 188, 189, 
	196, 188, 189, 197, 188, 189, 198, 188, 
	189, 199, 188, 189, 200, 188, 189, 201, 
	188, 189, 202, 188, 189, 203, 188, 189, 
	4, 188, 189, 69, 188, 189, 206, 188, 
	189, 207, 188, 189, 208, 188, 189, 209, 
	188, 189, 204, 188, 189, 211, 213, 188, 
	189, 212, 188, 189, 204, 188, 189, 214, 
	188, 189, 215, 188, 189, 216, 188, 189, 
	217, 188, 189, 218, 188, 189, 219, 188, 
	189, 69, 188, 189, 221, 188, 189, 222, 
	204, 188, 189, 204, 188, 189, 224, 188, 
	189, 225, 188, 189, 226, 188, 189, 227, 
	188, 189, 228, 188, 189, 229, 188, 189, 
	230, 188, 189, 231, 188, 189, 232, 188, 
	189, 233, 188, 189, 234, 188, 189, 235, 
	188, 189, 236, 188, 189, 219, 188, 189, 
	238, 204, 188, 189, 239, 188, 189, 240, 
	188, 189, 241, 188, 189, 242, 188, 189, 
	243, 188, 189, 244, 188, 189, 69, 245, 
	188, 189, 246, 188, 189, 247, 188, 189, 
	248, 188, 189, 249, 188, 189, 250, 188, 
	189, 251, 188, 189, 252, 188, 189, 253, 
	188, 189, 254, 188, 189, 219, 188, 256, 
	0, 257, 0, 258, 0, 259, 0, 260, 
	0, 261, 0, 262, 0, 263, 0, 264, 
	0, 265, 0, 266, 0, 268, 267, 268, 
	267, 268, 268, 4, 269, 283, 4, 284, 
	289, 292, 295, 310, 268, 267, 268, 270, 
	267, 268, 271, 267, 268, 272, 267, 268, 
	273, 267, 268, 274, 267, 268, 275, 267, 
	268, 276, 267, 268, 277, 267, 268, 278, 
	267, 268, 279, 267, 268, 280, 267, 268, 
	281, 267, 268, 282, 267, 268, 4, 267, 
	268, 69, 267, 268, 285, 267, 268, 286, 
	267, 268, 287, 267, 268, 288, 267, 268, 
	283, 267, 268, 290, 267, 268, 291, 267, 
	268, 283, 267, 268, 293, 267, 268, 294, 
	283, 267, 268, 283, 267, 268, 296, 267, 
	268, 297, 267, 268, 298, 267, 268, 299, 
	267, 268, 300, 267, 268, 301, 267, 268, 
	302, 267, 268, 303, 267, 268, 304, 267, 
	268, 305, 267, 268, 306, 267, 268, 307, 
	267, 268, 308, 267, 268, 309, 267, 268, 
	69, 267, 268, 311, 283, 267, 268, 312, 
	267, 268, 313, 267, 268, 314, 267, 268, 
	315, 267, 268, 316, 267, 268, 309, 267, 
	317, 318, 317, 0, 322, 321, 320, 318, 
	321, 319, 0, 320, 318, 319, 0, 320, 
	319, 322, 321, 320, 318, 321, 319, 322, 
	322, 5, 14, 16, 30, 33, 36, 41, 
	70, 73, 100, 179, 317, 322, 0, 53, 
	324, 52, 53, 325, 52, 53, 326, 52, 
	53, 327, 52, 53, 68, 52, 53, 329, 
	52, 53, 330, 52, 53, 68, 52, 53, 
	332, 52, 53, 333, 68, 52, 53, 68, 
	52, 53, 335, 52, 53, 336, 52, 53, 
	337, 52, 53, 338, 52, 53, 339, 52, 
	53, 340, 52, 53, 341, 52, 53, 342, 
	52, 53, 343, 52, 53, 344, 52, 53, 
	345, 52, 53, 346, 52, 53, 347, 52, 
	53, 348, 52, 53, 69, 52, 53, 350, 
	68, 52, 53, 351, 52, 53, 352, 52, 
	53, 353, 52, 53, 354, 52, 53, 355, 
	52, 53, 356, 52, 53, 69, 357, 52, 
	53, 358, 52, 53, 359, 52, 53, 360, 
	52, 53, 361, 52, 53, 362, 52, 53, 
	363, 52, 53, 364, 52, 53, 365, 52, 
	53, 366, 52, 53, 348, 52, 0, 0
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
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 124, 50, 47, 0, 47, 0, 65, 
	29, 77, 65, 77, 77, 77, 77, 77, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 11, 0, 47, 11, 0, 115, 
	27, 53, 50, 27, 56, 50, 56, 56, 
	56, 56, 56, 56, 59, 27, 39, 0, 
	39, 0, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	124, 50, 47, 0, 47, 0, 74, 77, 
	74, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 17, 0, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 124, 50, 
	47, 0, 47, 0, 62, 29, 62, 77, 
	77, 77, 77, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 9, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 9, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 9, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 0, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 0, 39, 124, 
	50, 47, 0, 47, 0, 68, 29, 77, 
	68, 77, 77, 77, 77, 77, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	13, 0, 47, 13, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 13, 0, 47, 0, 0, 47, 0, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 13, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 124, 50, 47, 
	0, 47, 0, 71, 29, 77, 71, 77, 
	77, 77, 77, 77, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 15, 0, 
	47, 15, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	15, 0, 47, 0, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	0, 0, 0, 39, 47, 33, 33, 80, 
	33, 33, 39, 0, 35, 0, 39, 0, 
	0, 47, 0, 0, 35, 0, 0, 47, 
	0, 86, 83, 37, 89, 83, 89, 89, 
	89, 89, 89, 89, 92, 0, 39, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 11, 0, 47, 0, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 11, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 0, 0
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
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39
]

class << self
	attr_accessor :lexer_start
end
self.lexer_start = 1;
class << self
	attr_accessor :lexer_first_final
end
self.lexer_first_final = 367;
class << self
	attr_accessor :lexer_error
end
self.lexer_error = 0;

class << self
	attr_accessor :lexer_en_main
end
self.lexer_en_main = 1;


# line 128 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
      end
 
      def scan(data)
        data = (data + "\n%_FEATURE_END_%").unpack("c*") # Explicit EOF simplifies things considerably
        eof = pe = data.length
 
        @line_number = 1
        @last_newline = 0
 
        
# line 741 "lib/gherkin/rb_lexer/ro.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = lexer_start
end

# line 138 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
        
# line 750 "lib/gherkin/rb_lexer/ro.rb"
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
# line 7 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          @content_start = p
          @current_line = @line_number
        		end
# line 7 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
when 1 then
# line 12 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          @current_line = @line_number
          @start_col = p - @last_newline
        		end
# line 12 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
when 2 then
# line 17 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          @content_start = p
        		end
# line 17 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
when 3 then
# line 21 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          con = unindent(@start_col, utf8_pack(data[@content_start...@next_keyword_start-1]).sub(/(\r?\n)?([\t ])*\Z/, '').gsub(/\\"\\"\\"/, '"""'))
          @listener.py_string(con, @current_line) 
        		end
# line 21 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
when 4 then
# line 26 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          store_keyword_content(:feature, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start          
          @next_keyword_start = nil
        		end
# line 26 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
when 5 then
# line 32 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          store_keyword_content(:background, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
# line 32 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
when 6 then
# line 38 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          store_keyword_content(:scenario, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
# line 38 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
when 7 then
# line 44 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          store_keyword_content(:scenario_outline, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
# line 44 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
when 8 then
# line 50 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          store_keyword_content(:examples, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
# line 50 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
when 9 then
# line 56 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.step(@keyword, con, @current_line)
        		end
# line 56 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
when 10 then
# line 61 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.comment(con, @line_number)
          @keyword_start = nil
        		end
# line 61 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
when 11 then
# line 67 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.tag(con, @current_line)
          @keyword_start = nil
        		end
# line 67 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
when 12 then
# line 73 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          @line_number += 1
        		end
# line 73 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
when 13 then
# line 77 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          @last_newline = p + 1
        		end
# line 77 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
when 14 then
# line 81 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          @keyword_start ||= p
        		end
# line 81 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
when 15 then
# line 85 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          @keyword = utf8_pack(data[@keyword_start...p]).sub(/:$/,'')
          @keyword_start = nil
        		end
# line 85 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
when 16 then
# line 90 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          @next_keyword_start = p
        		end
# line 90 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
when 17 then
# line 94 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          p = p - 1
          current_row = []
          @current_line = @line_number
        		end
# line 94 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
when 18 then
# line 100 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          @content_start = p
        		end
# line 100 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
when 19 then
# line 104 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          current_row << con.gsub(/\\\|/, "|").gsub(/\\\\/, "\\")
        		end
# line 104 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
when 20 then
# line 109 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          @listener.row(current_row, @current_line)
        		end
# line 109 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
when 21 then
# line 113 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/aslakhellesoy/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 113 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
# line 1011 "lib/gherkin/rb_lexer/ro.rb"
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
# line 113 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/aslakhellesoy/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 113 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
# line 1051 "lib/gherkin/rb_lexer/ro.rb"
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

# line 139 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/ro.rb.rl"
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
