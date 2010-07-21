
#line 1 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
#include <assert.h>
#include <ruby.h>

#if defined(_WIN32)
#include <stddef.h>
#endif

#ifdef HAVE_RUBY_RE_H
#include <ruby/re.h>
#else
#include <re.h>
#endif

#ifdef HAVE_RUBY_ENCODING_H
#include <ruby/encoding.h>
#define ENCODED_STR_NEW(ptr, len) \
    rb_enc_str_new(ptr, len, rb_utf8_encoding())
#else
#define ENCODED_STR_NEW(ptr, len) \
    rb_str_new(ptr, len)
#endif

#define LF_FLAG      0
#define CRLF_FLAG    1
#define LF           "\n"
#define CRLF         "\r\n"

#ifndef RSTRING_PTR
#define RSTRING_PTR(s) (RSTRING(s)->ptr)
#endif

#ifndef RSTRING_LEN
#define RSTRING_LEN(s) (RSTRING(s)->len)
#endif

#define DATA_GET(FROM, TYPE, NAME) \
  Data_Get_Struct(FROM, TYPE, NAME); \
  if (NAME == NULL) { \
    rb_raise(rb_eArgError, "NULL found for " # NAME " when it shouldn't be."); \
  }
 
typedef struct lexer_state {
  int content_len;
  int line_number;
  int current_line;
  int start_col;
  int eol;
  size_t mark;
  size_t keyword_start;
  size_t keyword_end;
  size_t next_keyword_start;
  size_t content_start;
  size_t content_end;
  size_t query_start;
  size_t last_newline;
  size_t final_newline;
} lexer_state;

static VALUE mGherkin;
static VALUE mCLexer;
static VALUE cI18nLexer;
static VALUE rb_eGherkinLexingError;

#define LEN(AT, P) (P - data - lexer->AT)
#define MARK(M, P) (lexer->M = (P) - data)
#define PTR_TO(P) (data + lexer->P)

#define STORE_KW_END_CON(EVENT) \
  store_multiline_kw_con(listener, # EVENT, \
    PTR_TO(keyword_start), LEN(keyword_start, PTR_TO(keyword_end - 1)), \
    PTR_TO(content_start), LEN(content_start, PTR_TO(content_end)), \
    lexer->current_line, lexer->eol); \
    if (lexer->content_end != 0) { \
      p = PTR_TO(content_end - 1); \
    } \
    lexer->content_end = 0

#define STORE_ATTR(ATTR) \
    store_attr(listener, # ATTR, \
      PTR_TO(content_start), LEN(content_start, p), \
      lexer->line_number)


#line 239 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"


/** Data **/

#line 92 "ext/gherkin_lexer_no/gherkin_lexer_no.c"
static const char _lexer_actions[] = {
	0, 1, 0, 1, 1, 1, 2, 1, 
	3, 1, 4, 1, 5, 1, 6, 1, 
	7, 1, 8, 1, 9, 1, 10, 1, 
	11, 1, 14, 1, 15, 1, 16, 1, 
	17, 1, 18, 1, 19, 1, 20, 1, 
	21, 2, 1, 16, 2, 11, 0, 2, 
	12, 13, 2, 15, 0, 2, 15, 2, 
	2, 15, 14, 2, 15, 17, 2, 16, 
	4, 2, 16, 5, 2, 16, 6, 2, 
	16, 7, 2, 16, 8, 2, 16, 14, 
	2, 18, 19, 2, 20, 0, 2, 20, 
	2, 2, 20, 14, 2, 20, 17, 3, 
	3, 12, 13, 3, 9, 12, 13, 3, 
	10, 12, 13, 3, 11, 12, 13, 3, 
	12, 13, 16, 3, 15, 12, 13, 4, 
	1, 12, 13, 16, 4, 15, 0, 12, 
	13
};

static const short _lexer_key_offsets[] = {
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
	307, 309, 311, 313, 316, 318, 320, 321, 
	322, 323, 324, 325, 326, 327, 328, 329, 
	340, 342, 344, 346, 348, 350, 352, 354, 
	356, 358, 360, 362, 364, 366, 368, 370, 
	372, 374, 376, 378, 380, 382, 384, 386, 
	388, 390, 392, 394, 396, 398, 400, 402, 
	404, 406, 408, 410, 412, 414, 416, 419, 
	421, 423, 425, 427, 429, 431, 433, 435, 
	437, 439, 441, 443, 445, 446, 447, 448, 
	449, 450, 451, 452, 453, 454, 455, 462, 
	464, 466, 468, 470, 472, 474, 476, 478, 
	479, 480, 481, 482, 483, 484, 485, 486, 
	487, 489, 490, 491, 492, 493, 494, 495, 
	496, 497, 498, 499, 515, 517, 519, 521, 
	523, 525, 527, 529, 531, 533, 535, 537, 
	539, 541, 543, 545, 547, 549, 551, 553, 
	555, 557, 559, 561, 563, 565, 567, 569, 
	571, 573, 575, 577, 579, 581, 583, 585, 
	587, 589, 591, 593, 595, 597, 599, 601, 
	603, 605, 607, 609, 611, 613, 615, 617, 
	619, 621, 623, 625, 628, 630, 634, 640, 
	643, 645, 651, 669, 671, 673, 675, 677, 
	679, 681, 683, 685, 687, 689, 691, 693, 
	695, 697, 699, 701, 703, 706, 708, 710, 
	712, 714, 716, 718, 720
};

static const char _lexer_trans_keys[] = {
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
	97, 107, 103, 114, 117, 110, 110, 58, 
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
	105, 10, 116, 10, 116, 10, 101, 10, 
	110, -61, 10, -91, 10, 10, 114, 10, 
	103, -61, 10, 99, -91, 10, 103, 107, 
	101, 110, 115, 107, 97, 112, 58, 10, 
	10, 10, 32, 35, 37, 64, 65, 66, 
	69, 83, 9, 13, 10, 95, 10, 70, 
	10, 69, 10, 65, 10, 84, 10, 85, 
	10, 82, 10, 69, 10, 95, 10, 69, 
	10, 78, 10, 68, 10, 95, 10, 37, 
	10, 98, 10, 115, 10, 116, 10, 114, 
	10, 97, 10, 107, 10, 116, 10, 32, 
	10, 83, 10, 99, 10, 101, 10, 110, 
	10, 97, 10, 114, 10, 105, 10, 111, 
	10, 58, 10, 97, 10, 107, 10, 103, 
	10, 114, 10, 117, 10, 110, 10, 110, 
	10, 103, 107, 10, 101, 10, 110, 10, 
	115, 10, 107, 10, 97, 10, 112, 10, 
	115, 10, 101, 10, 109, 10, 112, 10, 
	108, 10, 101, 10, 114, 115, 101, 109, 
	112, 108, 101, 114, 58, 10, 10, 10, 
	32, 35, 69, 124, 9, 13, 10, 103, 
	10, 101, 10, 110, 10, 115, 10, 107, 
	10, 97, 10, 112, 10, 58, 105, 116, 
	116, 101, 110, -61, -91, 114, 103, -61, 
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
	110, 10, 103, 10, 101, 10, 110, 10, 
	115, 10, 107, 10, 97, 10, 112, 10, 
	105, 10, 116, 10, 116, 10, 101, 10, 
	110, -61, 10, -91, 10, 10, 114, 10, 
	103, -61, 10, 99, -91, 10, 32, 124, 
	9, 13, 10, 32, 92, 124, 9, 13, 
	10, 92, 124, 10, 92, 10, 32, 92, 
	124, 9, 13, 10, 32, 34, 35, 37, 
	42, 64, 65, 66, 69, 71, 77, 78, 
	79, 83, 124, 9, 13, 10, 103, 10, 
	101, 10, 110, 10, 115, 10, 107, 10, 
	97, 10, 112, 10, 58, 10, 105, 10, 
	116, 10, 116, 10, 101, 10, 110, -61, 
	10, -91, 10, 10, 114, 10, 103, -61, 
	10, 99, -91, 10, 10, 101, 10, 110, 
	10, 97, 10, 114, 10, 105, 10, 111, 
	0
};

static const char _lexer_single_lengths[] = {
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
	2, 2, 2, 3, 2, 2, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 9, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 3, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 5, 2, 
	2, 2, 2, 2, 2, 2, 2, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	2, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 14, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 3, 2, 2, 4, 3, 
	2, 4, 16, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 3, 2, 2, 2, 
	2, 2, 2, 2, 0
};

static const char _lexer_range_lengths[] = {
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
	0, 0, 0, 0, 0, 0, 0, 1, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 1, 0, 
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
	0, 0, 0, 0, 0, 1, 1, 0, 
	0, 1, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0
};

static const short _lexer_index_offsets[] = {
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
	419, 422, 425, 428, 432, 435, 438, 440, 
	442, 444, 446, 448, 450, 452, 454, 456, 
	467, 470, 473, 476, 479, 482, 485, 488, 
	491, 494, 497, 500, 503, 506, 509, 512, 
	515, 518, 521, 524, 527, 530, 533, 536, 
	539, 542, 545, 548, 551, 554, 557, 560, 
	563, 566, 569, 572, 575, 578, 581, 585, 
	588, 591, 594, 597, 600, 603, 606, 609, 
	612, 615, 618, 621, 624, 626, 628, 630, 
	632, 634, 636, 638, 640, 642, 644, 651, 
	654, 657, 660, 663, 666, 669, 672, 675, 
	677, 679, 681, 683, 685, 687, 689, 691, 
	693, 696, 698, 700, 702, 704, 706, 708, 
	710, 712, 714, 716, 732, 735, 738, 741, 
	744, 747, 750, 753, 756, 759, 762, 765, 
	768, 771, 774, 777, 780, 783, 786, 789, 
	792, 795, 798, 801, 804, 807, 810, 813, 
	816, 819, 822, 825, 828, 831, 834, 837, 
	840, 843, 846, 849, 852, 855, 858, 861, 
	864, 867, 870, 873, 876, 879, 882, 885, 
	888, 891, 894, 897, 901, 904, 908, 914, 
	918, 921, 927, 945, 948, 951, 954, 957, 
	960, 963, 966, 969, 972, 975, 978, 981, 
	984, 987, 990, 993, 996, 1000, 1003, 1006, 
	1009, 1012, 1015, 1018, 1021
};

static const short _lexer_trans_targs[] = {
	2, 4, 4, 5, 14, 16, 30, 33, 
	36, 72, 133, 215, 218, 220, 223, 224, 
	293, 4, 0, 3, 0, 4, 0, 4, 
	4, 5, 14, 16, 30, 33, 36, 72, 
	133, 215, 218, 220, 223, 224, 293, 4, 
	0, 6, 0, 7, 0, 8, 7, 7, 
	0, 9, 9, 10, 9, 9, 9, 9, 
	10, 9, 9, 9, 9, 11, 9, 9, 
	9, 9, 12, 9, 9, 4, 13, 13, 
	0, 4, 13, 13, 0, 4, 15, 14, 
	4, 0, 17, 0, 18, 0, 19, 0, 
	20, 0, 21, 0, 22, 0, 23, 0, 
	24, 0, 25, 0, 26, 0, 27, 0, 
	28, 0, 29, 0, 324, 0, 31, 0, 
	0, 32, 4, 15, 32, 0, 0, 0, 
	0, 34, 35, 4, 35, 35, 33, 34, 
	34, 4, 35, 33, 35, 0, 37, 0, 
	38, 0, 39, 0, 40, 0, 41, 0, 
	42, 0, 43, 0, 44, 0, 45, 0, 
	46, 0, 47, 0, 48, 0, 49, 0, 
	50, 0, 51, 0, 52, 0, 53, 0, 
	55, 54, 55, 54, 55, 55, 4, 56, 
	70, 4, 299, 307, 310, 312, 315, 316, 
	55, 54, 55, 57, 54, 55, 58, 54, 
	55, 59, 54, 55, 60, 54, 55, 61, 
	54, 55, 62, 54, 55, 63, 54, 55, 
	64, 54, 55, 65, 54, 55, 66, 54, 
	55, 67, 54, 55, 68, 54, 55, 69, 
	54, 55, 4, 54, 55, 71, 54, 4, 
	4, 5, 14, 16, 30, 33, 36, 72, 
	133, 215, 218, 220, 223, 224, 293, 4, 
	0, 73, 0, 74, 0, 75, 0, 76, 
	0, 77, 0, 78, 0, 79, 0, 80, 
	0, 82, 81, 82, 81, 82, 82, 4, 
	83, 97, 4, 98, 115, 122, 125, 127, 
	130, 131, 82, 81, 82, 84, 81, 82, 
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
	97, 81, 82, 126, 81, 82, 97, 81, 
	128, 82, 81, 129, 82, 81, 82, 97, 
	81, 82, 97, 81, 132, 82, 108, 81, 
	97, 82, 81, 134, 196, 0, 135, 0, 
	136, 0, 137, 0, 138, 0, 139, 0, 
	140, 0, 141, 0, 143, 142, 143, 142, 
	143, 143, 4, 144, 4, 158, 175, 182, 
	167, 143, 142, 143, 145, 142, 143, 146, 
	142, 143, 147, 142, 143, 148, 142, 143, 
	149, 142, 143, 150, 142, 143, 151, 142, 
	143, 152, 142, 143, 153, 142, 143, 154, 
	142, 143, 155, 142, 143, 156, 142, 143, 
	157, 142, 143, 4, 142, 143, 159, 142, 
	143, 160, 142, 143, 161, 142, 143, 162, 
	142, 143, 163, 142, 143, 164, 142, 143, 
	165, 142, 143, 166, 142, 143, 167, 142, 
	143, 168, 142, 143, 169, 142, 143, 170, 
	142, 143, 171, 142, 143, 172, 142, 143, 
	173, 142, 143, 174, 142, 143, 71, 142, 
	143, 176, 142, 143, 177, 142, 143, 178, 
	142, 143, 179, 142, 143, 180, 142, 143, 
	181, 142, 143, 174, 142, 143, 183, 189, 
	142, 143, 184, 142, 143, 185, 142, 143, 
	186, 142, 143, 187, 142, 143, 188, 142, 
	143, 174, 142, 143, 190, 142, 143, 191, 
	142, 143, 192, 142, 143, 193, 142, 143, 
	194, 142, 143, 195, 142, 143, 174, 142, 
	197, 0, 198, 0, 199, 0, 200, 0, 
	201, 0, 202, 0, 203, 0, 204, 0, 
	206, 205, 206, 205, 206, 206, 4, 207, 
	4, 206, 205, 206, 208, 205, 206, 209, 
	205, 206, 210, 205, 206, 211, 205, 206, 
	212, 205, 206, 213, 205, 206, 214, 205, 
	206, 71, 205, 216, 0, 217, 0, 30, 
	0, 219, 0, 30, 0, 221, 0, 222, 
	0, 30, 0, 30, 0, 225, 226, 0, 
	30, 0, 227, 0, 228, 0, 229, 0, 
	230, 0, 231, 0, 232, 0, 233, 0, 
	235, 234, 235, 234, 235, 235, 4, 236, 
	250, 4, 251, 268, 275, 282, 285, 287, 
	290, 291, 235, 234, 235, 237, 234, 235, 
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
	234, 235, 284, 234, 235, 250, 234, 235, 
	286, 234, 235, 250, 234, 288, 235, 234, 
	289, 235, 234, 235, 250, 234, 235, 250, 
	234, 292, 235, 261, 234, 250, 235, 234, 
	293, 294, 293, 0, 298, 297, 296, 294, 
	297, 295, 0, 296, 294, 295, 0, 296, 
	295, 298, 297, 296, 294, 297, 295, 298, 
	298, 5, 14, 16, 30, 33, 36, 72, 
	133, 215, 218, 220, 223, 224, 293, 298, 
	0, 55, 300, 54, 55, 301, 54, 55, 
	302, 54, 55, 303, 54, 55, 304, 54, 
	55, 305, 54, 55, 306, 54, 55, 71, 
	54, 55, 308, 54, 55, 309, 54, 55, 
	70, 54, 55, 311, 54, 55, 70, 54, 
	313, 55, 54, 314, 55, 54, 55, 70, 
	54, 55, 70, 54, 317, 55, 318, 54, 
	70, 55, 54, 55, 319, 54, 55, 320, 
	54, 55, 321, 54, 55, 322, 54, 55, 
	323, 54, 55, 306, 54, 0, 0
};

static const char _lexer_trans_actions[] = {
	0, 47, 0, 5, 1, 0, 25, 1, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	31, 0, 39, 0, 39, 0, 39, 47, 
	0, 5, 1, 0, 25, 1, 25, 25, 
	25, 25, 25, 25, 25, 25, 31, 0, 
	39, 0, 39, 0, 39, 47, 0, 0, 
	39, 119, 41, 41, 41, 3, 111, 29, 
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
	0, 47, 0, 0, 47, 0, 47, 0, 
	0, 47, 0, 0, 0, 47, 0, 0, 
	0, 47, 0, 0, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 124, 50, 47, 0, 
	47, 0, 62, 29, 62, 77, 77, 77, 
	77, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 9, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 9, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	0, 39, 0, 39, 0, 39, 0, 39, 
	124, 50, 47, 0, 47, 0, 74, 77, 
	74, 0, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 17, 0, 0, 39, 0, 39, 0, 
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
	0, 0, 47, 0, 0, 0, 47, 0, 
	0, 47, 0, 47, 0, 0, 47, 0, 
	0, 0, 47, 0, 0, 0, 47, 0, 
	0, 0, 0, 39, 47, 33, 33, 80, 
	33, 33, 39, 0, 35, 0, 39, 0, 
	0, 47, 0, 0, 35, 0, 0, 47, 
	0, 86, 83, 37, 89, 83, 89, 89, 
	89, 89, 89, 89, 89, 89, 92, 0, 
	39, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	47, 0, 0, 47, 0, 0, 47, 15, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 47, 0, 0, 
	0, 47, 0, 0, 47, 0, 47, 0, 
	0, 47, 0, 0, 0, 47, 0, 0, 
	0, 47, 0, 47, 0, 0, 47, 0, 
	0, 47, 0, 0, 47, 0, 0, 47, 
	0, 0, 47, 0, 0, 0, 0
};

static const char _lexer_eof_actions[] = {
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
	39, 39, 39, 39, 39
};

static const int lexer_start = 1;
static const int lexer_first_final = 324;
static const int lexer_error = 0;

static const int lexer_en_main = 1;


#line 243 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"

static VALUE 
strip_i(VALUE str, VALUE ary)
{
  rb_funcall(str, rb_intern("strip!"), 0);
  rb_ary_push(ary, str);
  
  return Qnil;
}

static VALUE 
multiline_strip(VALUE text)
{
  VALUE map = rb_ary_new();
  VALUE split = rb_str_split(text, "\n");
  
  rb_iterate(rb_each, split, strip_i, map);
  
  return split;
}

static void 
store_kw_con(VALUE listener, const char * event_name, 
             const char * keyword_at, size_t keyword_length, 
             const char * at,         size_t length, 
             int current_line)
{
  VALUE con = Qnil, kw = Qnil;
  kw = ENCODED_STR_NEW(keyword_at, keyword_length);
  con = ENCODED_STR_NEW(at, length);
  rb_funcall(con, rb_intern("strip!"), 0);
  rb_funcall(listener, rb_intern(event_name), 3, kw, con, INT2FIX(current_line)); 
}

static void
store_multiline_kw_con(VALUE listener, const char * event_name,
                      const char * keyword_at, size_t keyword_length,
                      const char * at,         size_t length,
                      int current_line, int eol)
{
  VALUE con = Qnil, kw = Qnil, name = Qnil, desc = Qnil;

  kw = ENCODED_STR_NEW(keyword_at, keyword_length);
  con = ENCODED_STR_NEW(at, length);

  VALUE split = multiline_strip(con);
  
  name = rb_funcall(split, rb_intern("shift"), 0);
  desc = rb_ary_join(split, rb_str_new2( \
          eol == CRLF_FLAG ? CRLF : LF ));

  if( name == Qnil ) 
  {
    name = rb_str_new2("");
  }
  if( rb_funcall(desc, rb_intern("size"), 0) == 0) 
  {
    desc = rb_str_new2("");
  }
  rb_funcall(name, rb_intern("strip!"), 0);
  rb_funcall(desc, rb_intern("strip!"), 0);
  rb_funcall(listener, rb_intern(event_name), 4, kw, name, desc, INT2FIX(current_line)); 
}

static void 
store_attr(VALUE listener, const char * attr_type,
           const char * at, size_t length, 
           int line)
{
  VALUE val = ENCODED_STR_NEW(at, length);
  rb_funcall(listener, rb_intern(attr_type), 2, val, INT2FIX(line));
}

static void 
store_pystring_content(VALUE listener, 
          int start_col, 
          const char *at, size_t length, 
          int current_line)
{
  VALUE con = ENCODED_STR_NEW(at, length);
  // Gherkin will crash gracefully if the string representation of start_col pushes the pattern past 32 characters
  char pat[32]; 
  snprintf(pat, 32, "^[\t ]{0,%d}", start_col); 
  VALUE re = rb_reg_regcomp(rb_str_new2(pat));
  VALUE re2 = rb_reg_regcomp(rb_str_new2("\r\\Z"));
  VALUE unescape_escaped_quotes = rb_reg_regcomp(rb_str_new2("\\\\\"\\\\\"\\\\\""));
  rb_funcall(con, rb_intern("gsub!"), 2, re, rb_str_new2(""));
  rb_funcall(con, rb_intern("sub!"), 2, re2, rb_str_new2(""));
  rb_funcall(con, rb_intern("gsub!"), 2, unescape_escaped_quotes, rb_str_new2("\"\"\""));
  rb_funcall(listener, rb_intern("py_string"), 2, con, INT2FIX(current_line));
}

static void 
raise_lexer_error(const char * at, int line)
{ 
  rb_raise(rb_eGherkinLexingError, "Lexing error on line %d: '%s'. See http://wiki.github.com/aslakhellesoy/gherkin/lexingerror for more information.", line, at);
}

static int 
count_char(char char_to_count, char *str) {

  int count = 0;
  int i = 0;
  while(str[i] != '\0') {
    if(str[i] == char_to_count) {
      count++;
    }
    i++;
  }
  return count;
}

static void lexer_init(lexer_state *lexer) {
  lexer->content_start = 0;
  lexer->content_end = 0;
  lexer->content_len = 0;
  lexer->mark = 0;
  lexer->keyword_start = 0;
  lexer->keyword_end = 0;
  lexer->next_keyword_start = 0;
  lexer->line_number = 1;
  lexer->last_newline = 0;
  lexer->final_newline = 0;
  lexer->start_col = 0;
  lexer->eol = LF_FLAG;
}

static VALUE CLexer_alloc(VALUE klass)
{
  VALUE obj;
  lexer_state *lxr = ALLOC(lexer_state);
  lexer_init(lxr);

  obj = Data_Wrap_Struct(klass, NULL, -1, lxr);

  return obj;
}

static VALUE CLexer_init(VALUE self, VALUE listener)
{
  rb_iv_set(self, "@listener", listener);
  
  lexer_state *lxr = NULL;
  DATA_GET(self, lexer_state, lxr);
  lexer_init(lxr);
  
  return self;
}

static VALUE CLexer_scan(VALUE self, VALUE input)
{
  VALUE listener = rb_iv_get(self, "@listener");

  lexer_state *lexer = NULL;
  DATA_GET(self, lexer_state, lexer);

  VALUE input_copy = rb_str_dup(input);

  rb_str_append(input_copy, rb_str_new2("\n%_FEATURE_END_%"));
  char *data = RSTRING_PTR(input_copy);
  size_t len = RSTRING_LEN(input_copy);
  
  if (count_char('\r', data) > (count_char('\n', data) / 2)) {
    lexer->eol = CRLF_FLAG;
  }
  
  if (len == 0) { 
    rb_raise(rb_eGherkinLexingError, "No content to lex.");
  } else {

    const char *p, *pe, *eof;
    int cs = 0;
    
    VALUE current_row = Qnil;

    p = data;
    pe = data + len;
    eof = pe;
    
    assert(*pe == '\0' && "pointer does not end on NULL");
    
    
#line 879 "ext/gherkin_lexer_no/gherkin_lexer_no.c"
	{
	cs = lexer_start;
	}

#line 425 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
    
#line 886 "ext/gherkin_lexer_no/gherkin_lexer_no.c"
	{
	int _klen;
	unsigned int _trans;
	const char *_acts;
	unsigned int _nacts;
	const char *_keys;

	if ( p == pe )
		goto _test_eof;
	if ( cs == 0 )
		goto _out;
_resume:
	_keys = _lexer_trans_keys + _lexer_key_offsets[cs];
	_trans = _lexer_index_offsets[cs];

	_klen = _lexer_single_lengths[cs];
	if ( _klen > 0 ) {
		const char *_lower = _keys;
		const char *_mid;
		const char *_upper = _keys + _klen - 1;
		while (1) {
			if ( _upper < _lower )
				break;

			_mid = _lower + ((_upper-_lower) >> 1);
			if ( (*p) < *_mid )
				_upper = _mid - 1;
			else if ( (*p) > *_mid )
				_lower = _mid + 1;
			else {
				_trans += (_mid - _keys);
				goto _match;
			}
		}
		_keys += _klen;
		_trans += _klen;
	}

	_klen = _lexer_range_lengths[cs];
	if ( _klen > 0 ) {
		const char *_lower = _keys;
		const char *_mid;
		const char *_upper = _keys + (_klen<<1) - 2;
		while (1) {
			if ( _upper < _lower )
				break;

			_mid = _lower + (((_upper-_lower) >> 1) & ~1);
			if ( (*p) < _mid[0] )
				_upper = _mid - 2;
			else if ( (*p) > _mid[1] )
				_lower = _mid + 2;
			else {
				_trans += ((_mid - _keys)>>1);
				goto _match;
			}
		}
		_trans += _klen;
	}

_match:
	cs = _lexer_trans_targs[_trans];

	if ( _lexer_trans_actions[_trans] == 0 )
		goto _again;

	_acts = _lexer_actions + _lexer_trans_actions[_trans];
	_nacts = (unsigned int) *_acts++;
	while ( _nacts-- > 0 )
	{
		switch ( *_acts++ )
		{
	case 0:
#line 86 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
		MARK(content_start, p);
    lexer->current_line = lexer->line_number;
  }
	break;
	case 1:
#line 91 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
    MARK(content_start, p);
  }
	break;
	case 2:
#line 95 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
    lexer->current_line = lexer->line_number;
    lexer->start_col = p - data - lexer->last_newline;
  }
	break;
	case 3:
#line 100 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
    int len = LEN(content_start, PTR_TO(final_newline));

    if (len < 0) len = 0;

    store_pystring_content(listener, lexer->start_col, PTR_TO(content_start), len, lexer->current_line);
  }
	break;
	case 4:
#line 108 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
    STORE_KW_END_CON(feature);
  }
	break;
	case 5:
#line 112 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
    STORE_KW_END_CON(background);
  }
	break;
	case 6:
#line 116 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
    STORE_KW_END_CON(scenario);
  }
	break;
	case 7:
#line 120 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
    STORE_KW_END_CON(scenario_outline);
  }
	break;
	case 8:
#line 124 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
    STORE_KW_END_CON(examples);
  }
	break;
	case 9:
#line 128 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
    store_kw_con(listener, "step",
      PTR_TO(keyword_start), LEN(keyword_start, PTR_TO(keyword_end)),
      PTR_TO(content_start), LEN(content_start, p), 
      lexer->current_line);
  }
	break;
	case 10:
#line 135 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
    STORE_ATTR(comment);
    lexer->mark = 0;
  }
	break;
	case 11:
#line 140 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
    STORE_ATTR(tag);
    lexer->mark = 0;
  }
	break;
	case 12:
#line 145 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
    lexer->line_number += 1;
    MARK(final_newline, p);
  }
	break;
	case 13:
#line 150 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
    MARK(last_newline, p + 1);
  }
	break;
	case 14:
#line 154 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
    if (lexer->mark == 0) {
      MARK(mark, p);
    }
  }
	break;
	case 15:
#line 160 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
    MARK(keyword_end, p);
    MARK(keyword_start, PTR_TO(mark));
    MARK(content_start, p + 1);
    lexer->mark = 0;
  }
	break;
	case 16:
#line 167 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
    MARK(content_end, p);
  }
	break;
	case 17:
#line 171 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
    p = p - 1;
    lexer->current_line = lexer->line_number;
    current_row = rb_ary_new();
  }
	break;
	case 18:
#line 177 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
		MARK(content_start, p);
  }
	break;
	case 19:
#line 181 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
    VALUE con = ENCODED_STR_NEW(PTR_TO(content_start), LEN(content_start, p));
    rb_funcall(con, rb_intern("strip!"), 0);
    VALUE re_pipe      = rb_reg_regcomp(rb_str_new2("\\\\\\|"));
    VALUE re_backslash = rb_reg_regcomp(rb_str_new2("\\\\\\\\"));
    rb_funcall(con, rb_intern("gsub!"), 2, re_pipe,      rb_str_new2("|"));
    rb_funcall(con, rb_intern("gsub!"), 2, re_backslash, rb_str_new2("\\"));

    rb_ary_push(current_row, con);
  }
	break;
	case 20:
#line 192 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
    rb_funcall(listener, rb_intern("row"), 2, current_row, INT2FIX(lexer->current_line));
  }
	break;
	case 21:
#line 196 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
    if (cs < lexer_first_final) {
      if (raise_lexer_error != NULL) {
        size_t count = 0;
        int newstr_count = 0;
        size_t len;
        const char *buff;
        if (lexer->last_newline != 0) {
          len = LEN(last_newline, eof);
          buff = PTR_TO(last_newline);
        } else {
          len = strlen(data);
          buff = data;
        }

        char newstr[len]; 

        for (count = 0; count < len; count++) {
          if(buff[count] == 10) {
            newstr[newstr_count] = '\0'; // terminate new string at first newline found
            break;
          } else {
            if (buff[count] == '%') {
              newstr[newstr_count++] = buff[count];
              newstr[newstr_count] = buff[count];
            } else {
              newstr[newstr_count] = buff[count];
            }
          }
          newstr_count++;
        }

        int line = lexer->line_number;
        lexer_init(lexer); // Re-initialize so we can scan again with the same lexer
        raise_lexer_error(newstr, line);
      }
    } else {
      rb_funcall(listener, rb_intern("eof"), 0);
    }
  }
	break;
#line 1154 "ext/gherkin_lexer_no/gherkin_lexer_no.c"
		}
	}

_again:
	if ( cs == 0 )
		goto _out;
	if ( ++p != pe )
		goto _resume;
	_test_eof: {}
	if ( p == eof )
	{
	const char *__acts = _lexer_actions + _lexer_eof_actions[cs];
	unsigned int __nacts = (unsigned int) *__acts++;
	while ( __nacts-- > 0 ) {
		switch ( *__acts++ ) {
	case 21:
#line 196 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"
	{
    if (cs < lexer_first_final) {
      if (raise_lexer_error != NULL) {
        size_t count = 0;
        int newstr_count = 0;
        size_t len;
        const char *buff;
        if (lexer->last_newline != 0) {
          len = LEN(last_newline, eof);
          buff = PTR_TO(last_newline);
        } else {
          len = strlen(data);
          buff = data;
        }

        char newstr[len]; 

        for (count = 0; count < len; count++) {
          if(buff[count] == 10) {
            newstr[newstr_count] = '\0'; // terminate new string at first newline found
            break;
          } else {
            if (buff[count] == '%') {
              newstr[newstr_count++] = buff[count];
              newstr[newstr_count] = buff[count];
            } else {
              newstr[newstr_count] = buff[count];
            }
          }
          newstr_count++;
        }

        int line = lexer->line_number;
        lexer_init(lexer); // Re-initialize so we can scan again with the same lexer
        raise_lexer_error(newstr, line);
      }
    } else {
      rb_funcall(listener, rb_intern("eof"), 0);
    }
  }
	break;
#line 1213 "ext/gherkin_lexer_no/gherkin_lexer_no.c"
		}
	}
	}

	_out: {}
	}

#line 426 "/Users/aslakhellesoy/scm/gherkin/tasks/../ragel/i18n/no.c.rl"

    assert(p <= pe && "data overflow after parsing execute");
    assert(lexer->content_start <= len && "content starts after data end");
    assert(lexer->mark < len && "mark is after data end");
    
    // Reset lexer by re-initializing the whole thing
    lexer_init(lexer);

    if (cs == lexer_error) {
      rb_raise(rb_eGherkinLexingError, "Invalid format, lexing fails.");
    } else {
      return Qtrue;
    }
  }
}

void Init_gherkin_lexer_no()
{
  mGherkin = rb_define_module("Gherkin");
  rb_eGherkinLexingError = rb_const_get(mGherkin, rb_intern("LexingError"));

  mCLexer = rb_define_module_under(mGherkin, "CLexer");
  cI18nLexer = rb_define_class_under(mCLexer, "No", rb_cObject);
  rb_define_alloc_func(cI18nLexer, CLexer_alloc);
  rb_define_method(cI18nLexer, "initialize", CLexer_init, 1);
  rb_define_method(cI18nLexer, "scan", CLexer_scan, 1);
}

