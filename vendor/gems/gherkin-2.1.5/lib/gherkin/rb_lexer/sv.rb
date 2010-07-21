
# line 1 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
module Gherkin
  module RbLexer
    class Sv #:nodoc:
      
# line 123 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"

 
      def initialize(listener)
        @listener = listener
        
# line 14 "lib/gherkin/rb_lexer/sv.rb"
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
	0, 0, 19, 20, 21, 39, 40, 41, 
	45, 50, 55, 60, 65, 69, 73, 75, 
	76, 77, 78, 79, 80, 81, 82, 83, 
	84, 85, 86, 87, 88, 89, 90, 91, 
	92, 94, 99, 106, 111, 112, 113, 114, 
	115, 116, 117, 118, 119, 120, 121, 122, 
	123, 124, 125, 126, 127, 128, 129, 130, 
	144, 146, 148, 150, 152, 154, 156, 158, 
	160, 162, 164, 166, 168, 170, 172, 174, 
	192, 193, 194, 195, 196, 197, 198, 199, 
	200, 201, 202, 217, 219, 221, 223, 225, 
	227, 229, 231, 233, 235, 237, 239, 241, 
	243, 245, 247, 249, 251, 253, 255, 257, 
	259, 261, 263, 265, 267, 269, 271, 273, 
	275, 277, 279, 281, 283, 285, 287, 289, 
	291, 293, 295, 297, 299, 301, 303, 305, 
	307, 309, 311, 313, 315, 317, 320, 322, 
	324, 325, 326, 327, 328, 329, 330, 331, 
	332, 333, 344, 346, 348, 350, 352, 354, 
	356, 358, 360, 362, 364, 366, 368, 370, 
	372, 374, 376, 378, 380, 382, 384, 386, 
	388, 390, 392, 394, 396, 398, 400, 402, 
	404, 406, 408, 410, 412, 414, 416, 418, 
	420, 423, 425, 427, 429, 431, 433, 435, 
	437, 439, 441, 443, 445, 446, 447, 448, 
	449, 450, 451, 452, 453, 460, 462, 464, 
	466, 468, 470, 472, 474, 476, 477, 478, 
	479, 480, 481, 482, 483, 484, 485, 486, 
	487, 489, 490, 491, 492, 493, 494, 495, 
	496, 497, 498, 499, 515, 517, 519, 521, 
	523, 525, 527, 529, 531, 533, 535, 537, 
	539, 541, 543, 545, 547, 549, 551, 553, 
	555, 557, 559, 561, 563, 565, 567, 569, 
	571, 573, 575, 577, 579, 581, 583, 585, 
	587, 589, 591, 593, 595, 597, 599, 601, 
	603, 605, 607, 609, 611, 613, 615, 617, 
	619, 621, 623, 625, 627, 629, 632, 634, 
	638, 644, 647, 649, 655, 673, 675, 677, 
	679, 681, 683, 685, 687, 689, 691, 693, 
	695, 697, 699, 701, 703, 705, 707, 709, 
	711, 714, 716, 718, 720, 722, 724, 726, 
	728
]

class << self
	attr_accessor :_lexer_trans_keys
	private :_lexer_trans_keys, :_lexer_trans_keys=
end
self._lexer_trans_keys = [
	-17, 10, 32, 34, 35, 37, 42, 64, 
	65, 66, 69, 71, 77, 78, 79, 83, 
	124, 9, 13, -69, -65, 10, 32, 34, 
	35, 37, 42, 64, 65, 66, 69, 71, 
	77, 78, 79, 83, 124, 9, 13, 34, 
	34, 10, 32, 9, 13, 10, 32, 34, 
	9, 13, 10, 32, 34, 9, 13, 10, 
	32, 34, 9, 13, 10, 32, 34, 9, 
	13, 10, 32, 9, 13, 10, 32, 9, 
	13, 10, 13, 10, 95, 70, 69, 65, 
	84, 85, 82, 69, 95, 69, 78, 68, 
	95, 37, 32, 10, 10, 13, 13, 32, 
	64, 9, 10, 9, 10, 13, 32, 64, 
	11, 12, 10, 32, 64, 9, 13, 98, 
	115, 116, 114, 97, 107, 116, 32, 83, 
	99, 101, 110, 97, 114, 105, 111, 58, 
	10, 10, 10, 32, 35, 37, 42, 64, 
	69, 71, 77, 78, 79, 83, 9, 13, 
	10, 95, 10, 70, 10, 69, 10, 65, 
	10, 84, 10, 85, 10, 82, 10, 69, 
	10, 95, 10, 69, 10, 78, 10, 68, 
	10, 95, 10, 37, 10, 32, 10, 32, 
	34, 35, 37, 42, 64, 65, 66, 69, 
	71, 77, 78, 79, 83, 124, 9, 13, 
	97, 107, 103, 114, 117, 110, 100, 58, 
	10, 10, 10, 32, 35, 37, 42, 64, 
	65, 69, 71, 77, 78, 79, 83, 9, 
	13, 10, 95, 10, 70, 10, 69, 10, 
	65, 10, 84, 10, 85, 10, 82, 10, 
	69, 10, 95, 10, 69, 10, 78, 10, 
	68, 10, 95, 10, 37, 10, 32, 10, 
	98, 10, 115, 10, 116, 10, 114, 10, 
	97, 10, 107, 10, 116, 10, 32, 10, 
	83, 10, 99, 10, 101, 10, 110, 10, 
	97, 10, 114, 10, 105, 10, 111, 10, 
	58, 10, 103, 10, 101, 10, 110, 10, 
	115, 10, 107, 10, 97, 10, 112, 10, 
	105, 10, 118, 10, 101, 10, 116, 10, 
	101, 10, 110, -61, 10, -92, 10, 10, 
	114, 10, 99, 10, 104, -61, 10, 99, 
	-91, 10, 103, 120, 101, 110, 115, 107, 
	97, 112, 58, 10, 10, 10, 32, 35, 
	37, 64, 65, 66, 69, 83, 9, 13, 
	10, 95, 10, 70, 10, 69, 10, 65, 
	10, 84, 10, 85, 10, 82, 10, 69, 
	10, 95, 10, 69, 10, 78, 10, 68, 
	10, 95, 10, 37, 10, 98, 10, 115, 
	10, 116, 10, 114, 10, 97, 10, 107, 
	10, 116, 10, 32, 10, 83, 10, 99, 
	10, 101, 10, 110, 10, 97, 10, 114, 
	10, 105, 10, 111, 10, 58, 10, 97, 
	10, 107, 10, 103, 10, 114, 10, 117, 
	10, 110, 10, 100, 10, 103, 120, 10, 
	101, 10, 110, 10, 115, 10, 107, 10, 
	97, 10, 112, 10, 101, 10, 109, 10, 
	112, 10, 101, 10, 108, 101, 109, 112, 
	101, 108, 58, 10, 10, 10, 32, 35, 
	69, 124, 9, 13, 10, 103, 10, 101, 
	10, 110, 10, 115, 10, 107, 10, 97, 
	10, 112, 10, 58, 105, 118, 101, 116, 
	101, 110, -61, -92, 114, 99, 104, -61, 
	99, -91, 101, 110, 97, 114, 105, 111, 
	58, 10, 10, 10, 32, 35, 37, 42, 
	64, 65, 66, 69, 71, 77, 78, 79, 
	83, 9, 13, 10, 95, 10, 70, 10, 
	69, 10, 65, 10, 84, 10, 85, 10, 
	82, 10, 69, 10, 95, 10, 69, 10, 
	78, 10, 68, 10, 95, 10, 37, 10, 
	32, 10, 98, 10, 115, 10, 116, 10, 
	114, 10, 97, 10, 107, 10, 116, 10, 
	32, 10, 83, 10, 99, 10, 101, 10, 
	110, 10, 97, 10, 114, 10, 105, 10, 
	111, 10, 58, 10, 97, 10, 107, 10, 
	103, 10, 114, 10, 117, 10, 110, 10, 
	100, 10, 103, 10, 101, 10, 110, 10, 
	115, 10, 107, 10, 97, 10, 112, 10, 
	105, 10, 118, 10, 101, 10, 116, 10, 
	101, 10, 110, -61, 10, -92, 10, 10, 
	114, 10, 99, 10, 104, -61, 10, 99, 
	-91, 10, 32, 124, 9, 13, 10, 32, 
	92, 124, 9, 13, 10, 92, 124, 10, 
	92, 10, 32, 92, 124, 9, 13, 10, 
	32, 34, 35, 37, 42, 64, 65, 66, 
	69, 71, 77, 78, 79, 83, 124, 9, 
	13, 10, 103, 10, 101, 10, 110, 10, 
	115, 10, 107, 10, 97, 10, 112, 10, 
	58, 10, 105, 10, 118, 10, 101, 10, 
	116, 10, 101, 10, 110, -61, 10, -92, 
	10, 10, 114, 10, 99, 10, 104, -61, 
	10, 99, -91, 10, 10, 101, 10, 110, 
	10, 97, 10, 114, 10, 105, 10, 111, 
	0
]

class << self
	attr_accessor :_lexer_single_lengths
	private :_lexer_single_lengths, :_lexer_single_lengths=
end
self._lexer_single_lengths = [
	0, 17, 1, 1, 16, 1, 1, 2, 
	3, 3, 3, 3, 2, 2, 2, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	2, 3, 5, 3, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 12, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 16, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 13, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 3, 2, 2, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 9, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	3, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 1, 1, 1, 1, 
	1, 1, 1, 1, 5, 2, 2, 2, 
	2, 2, 2, 2, 2, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	2, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 14, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 3, 2, 2, 
	4, 3, 2, 4, 16, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	3, 2, 2, 2, 2, 2, 2, 2, 
	0
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
	0, 0, 0, 0, 0, 0, 0, 1, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 1, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 0, 0, 0, 0, 0, 
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
	0, 0, 0, 0, 1, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 1, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 1, 
	1, 0, 0, 1, 1, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0
]

class << self
	attr_accessor :_lexer_index_offsets
	private :_lexer_index_offsets, :_lexer_index_offsets=
end
self._lexer_index_offsets = [
	0, 0, 19, 21, 23, 41, 43, 45, 
	49, 54, 59, 64, 69, 73, 77, 80, 
	82, 84, 86, 88, 90, 92, 94, 96, 
	98, 100, 102, 104, 106, 108, 110, 112, 
	114, 117, 122, 129, 134, 136, 138, 140, 
	142, 144, 146, 148, 150, 152, 154, 156, 
	158, 160, 162, 164, 166, 168, 170, 172, 
	186, 189, 192, 195, 198, 201, 204, 207, 
	210, 213, 216, 219, 222, 225, 228, 231, 
	249, 251, 253, 255, 257, 259, 261, 263, 
	265, 267, 269, 284, 287, 290, 293, 296, 
	299, 302, 305, 308, 311, 314, 317, 320, 
	323, 326, 329, 332, 335, 338, 341, 344, 
	347, 350, 353, 356, 359, 362, 365, 368, 
	371, 374, 377, 380, 383, 386, 389, 392, 
	395, 398, 401, 404, 407, 410, 413, 416, 
	419, 422, 425, 428, 431, 434, 438, 441, 
	444, 446, 448, 450, 452, 454, 456, 458, 
	460, 462, 473, 476, 479, 482, 485, 488, 
	491, 494, 497, 500, 503, 506, 509, 512, 
	515, 518, 521, 524, 527, 530, 533, 536, 
	539, 542, 545, 548, 551, 554, 557, 560, 
	563, 566, 569, 572, 575, 578, 581, 584, 
	587, 591, 594, 597, 600, 603, 606, 609, 
	612, 615, 618, 621, 624, 626, 628, 630, 
	632, 634, 636, 638, 640, 647, 650, 653, 
	656, 659, 662, 665, 668, 671, 673, 675, 
	677, 679, 681, 683, 685, 687, 689, 691, 
	693, 696, 698, 700, 702, 704, 706, 708, 
	710, 712, 714, 716, 732, 735, 738, 741, 
	744, 747, 750, 753, 756, 759, 762, 765, 
	768, 771, 774, 777, 780, 783, 786, 789, 
	792, 795, 798, 801, 804, 807, 810, 813, 
	816, 819, 822, 825, 828, 831, 834, 837, 
	840, 843, 846, 849, 852, 855, 858, 861, 
	864, 867, 870, 873, 876, 879, 882, 885, 
	888, 891, 894, 897, 900, 903, 907, 910, 
	914, 920, 924, 927, 933, 951, 954, 957, 
	960, 963, 966, 969, 972, 975, 978, 981, 
	984, 987, 990, 993, 996, 999, 1002, 1005, 
	1008, 1012, 1015, 1018, 1021, 1024, 1027, 1030, 
	1033
]

class << self
	attr_accessor :_lexer_trans_targs
	private :_lexer_trans_targs, :_lexer_trans_targs=
end
self._lexer_trans_targs = [
	2, 4, 4, 5, 14, 16, 30, 33, 
	36, 72, 135, 213, 217, 219, 222, 224, 
	295, 4, 0, 3, 0, 4, 0, 4, 
	4, 5, 14, 16, 30, 33, 36, 72, 
	135, 213, 217, 219, 222, 224, 295, 4, 
	0, 6, 0, 7, 0, 8, 7, 7, 
	0, 9, 9, 10, 9, 9, 9, 9, 
	10, 9, 9, 9, 9, 11, 9, 9, 
	9, 9, 12, 9, 9, 4, 13, 13, 
	0, 4, 13, 13, 0, 4, 15, 14, 
	4, 0, 17, 0, 18, 0, 19, 0, 
	20, 0, 21, 0, 22, 0, 23, 0, 
	24, 0, 25, 0, 26, 0, 27, 0, 
	28, 0, 29, 0, 328, 0, 31, 0, 
	0, 32, 4, 15, 32, 0, 0, 0, 
	0, 34, 35, 4, 35, 35, 33, 34, 
	34, 4, 35, 33, 35, 0, 37, 0, 
	38, 0, 39, 0, 40, 0, 41, 0, 
	42, 0, 43, 0, 44, 0, 45, 0, 
	46, 0, 47, 0, 48, 0, 49, 0, 
	50, 0, 51, 0, 52, 0, 53, 0, 
	55, 54, 55, 54, 55, 55, 4, 56, 
	70, 4, 301, 309, 313, 315, 318, 320, 
	55, 54, 55, 57, 54, 55, 58, 54, 
	55, 59, 54, 55, 60, 54, 55, 61, 
	54, 55, 62, 54, 55, 63, 54, 55, 
	64, 54, 55, 65, 54, 55, 66, 54, 
	55, 67, 54, 55, 68, 54, 55, 69, 
	54, 55, 4, 54, 55, 71, 54, 4, 
	4, 5, 14, 16, 30, 33, 36, 72, 
	135, 213, 217, 219, 222, 224, 295, 4, 
	0, 73, 0, 74, 0, 75, 0, 76, 
	0, 77, 0, 78, 0, 79, 0, 80, 
	0, 82, 81, 82, 81, 82, 82, 4, 
	83, 97, 4, 98, 115, 122, 126, 128, 
	131, 133, 82, 81, 82, 84, 81, 82, 
	85, 81, 82, 86, 81, 82, 87, 81, 
	82, 88, 81, 82, 89, 81, 82, 90, 
	81, 82, 91, 81, 82, 92, 81, 82, 
	93, 81, 82, 94, 81, 82, 95, 81, 
	82, 96, 81, 82, 4, 81, 82, 71, 
	81, 82, 99, 81, 82, 100, 81, 82, 
	101, 81, 82, 102, 81, 82, 103, 81, 
	82, 104, 81, 82, 105, 81, 82, 106, 
	81, 82, 107, 81, 82, 108, 81, 82, 
	109, 81, 82, 110, 81, 82, 111, 81, 
	82, 112, 81, 82, 113, 81, 82, 114, 
	81, 82, 71, 81, 82, 116, 81, 82, 
	117, 81, 82, 118, 81, 82, 119, 81, 
	82, 120, 81, 82, 121, 81, 82, 114, 
	81, 82, 123, 81, 82, 124, 81, 82, 
	125, 81, 82, 97, 81, 82, 127, 81, 
	82, 97, 81, 129, 82, 81, 130, 82, 
	81, 82, 97, 81, 82, 132, 81, 82, 
	97, 81, 134, 82, 108, 81, 97, 82, 
	81, 136, 196, 0, 137, 0, 138, 0, 
	139, 0, 140, 0, 141, 0, 142, 0, 
	143, 0, 145, 144, 145, 144, 145, 145, 
	4, 146, 4, 160, 177, 184, 169, 145, 
	144, 145, 147, 144, 145, 148, 144, 145, 
	149, 144, 145, 150, 144, 145, 151, 144, 
	145, 152, 144, 145, 153, 144, 145, 154, 
	144, 145, 155, 144, 145, 156, 144, 145, 
	157, 144, 145, 158, 144, 145, 159, 144, 
	145, 4, 144, 145, 161, 144, 145, 162, 
	144, 145, 163, 144, 145, 164, 144, 145, 
	165, 144, 145, 166, 144, 145, 167, 144, 
	145, 168, 144, 145, 169, 144, 145, 170, 
	144, 145, 171, 144, 145, 172, 144, 145, 
	173, 144, 145, 174, 144, 145, 175, 144, 
	145, 176, 144, 145, 71, 144, 145, 178, 
	144, 145, 179, 144, 145, 180, 144, 145, 
	181, 144, 145, 182, 144, 145, 183, 144, 
	145, 176, 144, 145, 185, 191, 144, 145, 
	186, 144, 145, 187, 144, 145, 188, 144, 
	145, 189, 144, 145, 190, 144, 145, 176, 
	144, 145, 192, 144, 145, 193, 144, 145, 
	194, 144, 145, 195, 144, 145, 176, 144, 
	197, 0, 198, 0, 199, 0, 200, 0, 
	201, 0, 202, 0, 204, 203, 204, 203, 
	204, 204, 4, 205, 4, 204, 203, 204, 
	206, 203, 204, 207, 203, 204, 208, 203, 
	204, 209, 203, 204, 210, 203, 204, 211, 
	203, 204, 212, 203, 204, 71, 203, 214, 
	0, 215, 0, 216, 0, 30, 0, 218, 
	0, 30, 0, 220, 0, 221, 0, 30, 
	0, 223, 0, 30, 0, 225, 226, 0, 
	30, 0, 227, 0, 228, 0, 229, 0, 
	230, 0, 231, 0, 232, 0, 233, 0, 
	235, 234, 235, 234, 235, 235, 4, 236, 
	250, 4, 251, 268, 275, 282, 286, 288, 
	291, 293, 235, 234, 235, 237, 234, 235, 
	238, 234, 235, 239, 234, 235, 240, 234, 
	235, 241, 234, 235, 242, 234, 235, 243, 
	234, 235, 244, 234, 235, 245, 234, 235, 
	246, 234, 235, 247, 234, 235, 248, 234, 
	235, 249, 234, 235, 4, 234, 235, 71, 
	234, 235, 252, 234, 235, 253, 234, 235, 
	254, 234, 235, 255, 234, 235, 256, 234, 
	235, 257, 234, 235, 258, 234, 235, 259, 
	234, 235, 260, 234, 235, 261, 234, 235, 
	262, 234, 235, 263, 234, 235, 264, 234, 
	235, 265, 234, 235, 266, 234, 235, 267, 
	234, 235, 71, 234, 235, 269, 234, 235, 
	270, 234, 235, 271, 234, 235, 272, 234, 
	235, 273, 234, 235, 274, 234, 235, 267, 
	234, 235, 276, 234, 235, 277, 234, 235, 
	278, 234, 235, 279, 234, 235, 280, 234, 
	235, 281, 234, 235, 267, 234, 235, 283, 
	234, 235, 284, 234, 235, 285, 234, 235, 
	250, 234, 235, 287, 234, 235, 250, 234, 
	289, 235, 234, 290, 235, 234, 235, 250, 
	234, 235, 292, 234, 235, 250, 234, 294, 
	235, 261, 234, 250, 235, 234, 295, 296, 
	295, 0, 300, 299, 298, 296, 299, 297, 
	0, 298, 296, 297, 0, 298, 297, 300, 
	299, 298, 296, 299, 297, 300, 300, 5, 
	14, 16, 30, 33, 36, 72, 135, 213, 
	217, 219, 222, 224, 295, 300, 0, 55, 
	302, 54, 55, 303, 54, 55, 304, 54, 
	55, 305, 54, 55, 306, 54, 55, 307, 
	54, 55, 308, 54, 55, 71, 54, 55, 
	310, 54, 55, 311, 54, 55, 312, 54, 
	55, 70, 54, 55, 314, 54, 55, 70, 
	54, 316, 55, 54, 317, 55, 54, 55, 
	70, 54, 55, 319, 54, 55, 70, 54, 
	321, 55, 322, 54, 70, 55, 54, 55, 
	323, 54, 55, 324, 54, 55, 325, 54, 
	55, 326, 54, 55, 327, 54, 55, 308, 
	54, 0, 0
]

class << self
	attr_accessor :_lexer_trans_actions
	private :_lexer_trans_actions, :_lexer_trans_actions=
end
self._lexer_trans_actions = [
	0, 47, 0, 3, 1, 0, 25, 1, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	31, 0, 39, 0, 39, 0, 39, 47, 
	0, 3, 1, 0, 25, 1, 25, 25, 
	25, 25, 25, 25, 25, 25, 31, 0, 
	39, 0, 39, 0, 39, 47, 0, 0, 
	39, 119, 41, 41, 41, 5, 111, 29, 
	29, 29, 0, 111, 29, 29, 29, 0, 
	111, 29, 0, 29, 0, 95, 7, 7, 
	39, 47, 0, 0, 39, 103, 21, 0, 
	47, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	39, 50, 99, 19, 0, 39, 39, 39, 
	39, 0, 23, 107, 23, 23, 44, 23, 
	0, 47, 0, 1, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	124, 50, 47, 0, 47, 0, 71, 29, 
	77, 71, 77, 77, 77, 77, 77, 77, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 15, 0, 47, 15, 0, 115, 
	27, 53, 50, 27, 56, 50, 56, 56, 
	56, 56, 56, 56, 56, 56, 59, 27, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 124, 50, 47, 0, 47, 0, 65, 
	29, 77, 65, 77, 77, 77, 77, 77, 
	77, 77, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 11, 0, 47, 11, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 11, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 0, 47, 0, 0, 47, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 0, 47, 0, 0, 0, 47, 
	0, 0, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 124, 50, 47, 0, 47, 0, 
	62, 29, 62, 77, 77, 77, 77, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 9, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 9, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 124, 50, 47, 0, 
	47, 0, 74, 77, 74, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 17, 0, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 39, 0, 
	39, 0, 39, 0, 39, 0, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	124, 50, 47, 0, 47, 0, 68, 29, 
	77, 68, 77, 77, 77, 77, 77, 77, 
	77, 77, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 13, 0, 47, 13, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 13, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	0, 47, 0, 0, 47, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 0, 
	47, 0, 0, 0, 47, 0, 0, 0, 
	0, 39, 47, 33, 33, 80, 33, 33, 
	39, 0, 35, 0, 39, 0, 0, 47, 
	0, 0, 35, 0, 0, 47, 0, 86, 
	83, 37, 89, 83, 89, 89, 89, 89, 
	89, 89, 89, 89, 92, 0, 39, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 15, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 0, 47, 0, 0, 47, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	0, 47, 0, 0, 0, 47, 0, 47, 
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
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39, 39, 39, 39, 39, 39, 39, 39, 
	39
]

class << self
	attr_accessor :lexer_start
end
self.lexer_start = 1;
class << self
	attr_accessor :lexer_first_final
end
self.lexer_first_final = 328;
class << self
	attr_accessor :lexer_error
end
self.lexer_error = 0;

class << self
	attr_accessor :lexer_en_main
end
self.lexer_en_main = 1;


# line 128 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
      end
 
      def scan(data)
        data = (data + "\n%_FEATURE_END_%").unpack("c*") # Explicit EOF simplifies things considerably
        eof = pe = data.length
 
        @line_number = 1
        @last_newline = 0
 
        
# line 687 "lib/gherkin/rb_lexer/sv.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = lexer_start
end

# line 138 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
        
# line 696 "lib/gherkin/rb_lexer/sv.rb"
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
# line 7 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          @content_start = p
          @current_line = @line_number
        		end
# line 7 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
when 1 then
# line 12 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          @current_line = @line_number
          @start_col = p - @last_newline
        		end
# line 12 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
when 2 then
# line 17 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          @content_start = p
        		end
# line 17 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
when 3 then
# line 21 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          con = unindent(@start_col, utf8_pack(data[@content_start...@next_keyword_start-1]).sub(/(\r?\n)?([\t ])*\Z/, '').gsub(/\\"\\"\\"/, '"""'))
          @listener.py_string(con, @current_line) 
        		end
# line 21 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
when 4 then
# line 26 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          store_keyword_content(:feature, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start          
          @next_keyword_start = nil
        		end
# line 26 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
when 5 then
# line 32 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          store_keyword_content(:background, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
# line 32 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
when 6 then
# line 38 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          store_keyword_content(:scenario, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
# line 38 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
when 7 then
# line 44 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          store_keyword_content(:scenario_outline, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
# line 44 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
when 8 then
# line 50 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          store_keyword_content(:examples, data, p, eof) { |con| multiline_strip(con) }
          p = @next_keyword_start - 1 if @next_keyword_start                    
          @next_keyword_start = nil
        		end
# line 50 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
when 9 then
# line 56 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.step(@keyword, con, @current_line)
        		end
# line 56 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
when 10 then
# line 61 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.comment(con, @line_number)
          @keyword_start = nil
        		end
# line 61 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
when 11 then
# line 67 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.tag(con, @current_line)
          @keyword_start = nil
        		end
# line 67 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
when 12 then
# line 73 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          @line_number += 1
        		end
# line 73 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
when 13 then
# line 77 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          @last_newline = p + 1
        		end
# line 77 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
when 14 then
# line 81 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          @keyword_start ||= p
        		end
# line 81 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
when 15 then
# line 85 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          @keyword = utf8_pack(data[@keyword_start...p]).sub(/:$/,'')
          @keyword_start = nil
        		end
# line 85 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
when 16 then
# line 90 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          @next_keyword_start = p
        		end
# line 90 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
when 17 then
# line 94 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          p = p - 1
          current_row = []
          @current_line = @line_number
        		end
# line 94 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
when 18 then
# line 100 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          @content_start = p
        		end
# line 100 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
when 19 then
# line 104 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          current_row << con.gsub(/\\\|/, "|").gsub(/\\\\/, "\\")
        		end
# line 104 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
when 20 then
# line 109 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          @listener.row(current_row, @current_line)
        		end
# line 109 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
when 21 then
# line 113 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/aslakhellesoy/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 113 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
# line 957 "lib/gherkin/rb_lexer/sv.rb"
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
# line 113 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/aslakhellesoy/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 113 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
# line 997 "lib/gherkin/rb_lexer/sv.rb"
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

# line 139 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/sv.rb.rl"
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
