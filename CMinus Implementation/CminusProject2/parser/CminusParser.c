
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton implementation for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "2.4.1"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1

/* Using locations.  */
#define YYLSP_NEEDED 0

/* Substitute the variable and function names.  */
#define yyparse         Cminus_parse
#define yylex           Cminus_lex
#define yyerror         Cminus_error
#define yylval          Cminus_lval
#define yychar          Cminus_char
#define yydebug         Cminus_debug
#define yynerrs         Cminus_nerrs


/* Copy the first part of user declarations.  */

/* Line 189 of yacc.c  */
#line 7 "CminusParser.y"

#include "node/node.h"
#include <cstdio>
#include <stdlib.h>
#include <cstring>
#include <typeinfo> 
/*********************EXTERNAL DECLARATIONS***********************/

extern "C" void Cminus_error(const char*);
extern "C" int Cminus_parse();
extern "C" int Cminus_wrap();
extern "C" int Cminus_lex(void);

char *fileName;
extern int Cminus_lineno;
CodeGenContext *context;
map<string,int> systable;
NProgram *programBlocks;



/* Line 189 of yacc.c  */
#line 103 "CminusParser.c"

/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* Enabling the token table.  */
#ifndef YYTOKEN_TABLE
# define YYTOKEN_TABLE 0
#endif


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     AND = 258,
     ELSE = 259,
     EXIT = 260,
     FOR = 261,
     IF = 262,
     INTEGER = 263,
     FLOAT = 264,
     NOT = 265,
     OR = 266,
     READ = 267,
     WHILE = 268,
     WRITE = 269,
     LBRACE = 270,
     RBRACE = 271,
     LE = 272,
     LT = 273,
     GE = 274,
     GT = 275,
     EQ = 276,
     NE = 277,
     ASSIGN = 278,
     COMMA = 279,
     SEMICOLON = 280,
     LBRACKET = 281,
     RBRACKET = 282,
     LPAREN = 283,
     RPAREN = 284,
     PLUS = 285,
     TIMES = 286,
     IDENTIFIER = 287,
     DIVIDE = 288,
     RETURN = 289,
     STRING = 290,
     INTCON = 291,
     MINUS = 292,
     DIVDE = 293
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 214 of yacc.c  */
#line 29 "CminusParser.y"

  Node *node;
  NBlock *block;
  NProgram *program;
  NIdentifier *ident;
  NExpression *expr;
  NStatement *stmt;
  NVariableDeclaration *var_decl;
  vector<NVariableDeclaration*> *varvec;
  vector<NExpression*> *exprvec;
  vector<NStatement*> *statvec;
  long long intValue;
  string *stringValue;	



/* Line 214 of yacc.c  */
#line 194 "CminusParser.c"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif


/* Copy the second part of user declarations.  */


/* Line 264 of yacc.c  */
#line 206 "CminusParser.c"

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#elif (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
typedef signed char yytype_int8;
#else
typedef short int yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(msgid) dgettext ("bison-runtime", msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(msgid) msgid
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(e) ((void) (e))
#else
# define YYUSE(e) /* empty */
#endif

/* Identity function, used to suppress warnings about constant conditions.  */
#ifndef lint
# define YYID(n) (n)
#else
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static int
YYID (int yyi)
#else
static int
YYID (yyi)
    int yyi;
#endif
{
  return yyi;
}
#endif

#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#     ifndef _STDLIB_H
#      define _STDLIB_H 1
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's `empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (YYID (0))
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined _STDLIB_H \
       && ! ((defined YYMALLOC || defined malloc) \
	     && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef _STDLIB_H
#    define _STDLIB_H 1
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
	 || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

/* Copy COUNT objects from FROM to TO.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(To, From, Count) \
      __builtin_memcpy (To, From, (Count) * sizeof (*(From)))
#  else
#   define YYCOPY(To, From, Count)		\
      do					\
	{					\
	  YYSIZE_T yyi;				\
	  for (yyi = 0; yyi < (Count); yyi++)	\
	    (To)[yyi] = (From)[yyi];		\
	}					\
      while (YYID (0))
#  endif
# endif

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)				\
    do									\
      {									\
	YYSIZE_T yynewbytes;						\
	YYCOPY (&yyptr->Stack_alloc, Stack, yysize);			\
	Stack = &yyptr->Stack_alloc;					\
	yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
	yyptr += yynewbytes / sizeof (*yyptr);				\
      }									\
    while (YYID (0))

#endif

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  9
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   144

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  39
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  32
/* YYNRULES -- Number of rules.  */
#define YYNRULES  65
/* YYNRULES -- Number of states.  */
#define YYNSTATES  130

/* YYTRANSLATE(YYLEX) -- Bison symbol number corresponding to YYLEX.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   293

#define YYTRANSLATE(YYX)						\
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[YYLEX] -- Bison symbol number corresponding to YYLEX.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38
};

#if YYDEBUG
/* YYPRHS[YYN] -- Index of the first RHS symbol of rule number YYN in
   YYRHS.  */
static const yytype_uint8 yyprhs[] =
{
       0,     0,     3,     5,     8,    11,    12,    15,    18,    20,
      26,    29,    33,    38,    40,    44,    46,    51,    53,    55,
      57,    59,    61,    63,    65,    67,    72,    77,    80,    83,
      87,    91,    95,    97,   103,   109,   115,   119,   122,   126,
     128,   131,   133,   137,   141,   144,   146,   150,   154,   158,
     162,   166,   170,   172,   176,   180,   182,   186,   190,   192,
     194,   198,   202,   204,   209,   211
};

/* YYRHS -- A `-1'-separated list of the rules' RHS.  */
static const yytype_int8 yyrhs[] =
{
      40,     0,    -1,    41,    -1,    46,    41,    -1,    42,    41,
      -1,    -1,    43,    45,    -1,    44,    46,    -1,    44,    -1,
      49,    32,    28,    29,    15,    -1,    62,    16,    -1,    49,
      47,    25,    -1,    46,    49,    47,    25,    -1,    48,    -1,
      47,    24,    48,    -1,    32,    -1,    32,    26,    36,    27,
      -1,     8,    -1,    51,    -1,    52,    -1,    55,    -1,    58,
      -1,    59,    -1,    60,    -1,    61,    -1,    68,    23,    63,
      25,    -1,     7,    53,     4,    61,    -1,     7,    53,    -1,
      54,    61,    -1,    28,    63,    29,    -1,    57,    56,    50,
      -1,    28,    63,    29,    -1,    13,    -1,    12,    28,    68,
      29,    25,    -1,    14,    28,    63,    29,    25,    -1,    14,
      28,    69,    29,    25,    -1,    34,    63,    25,    -1,     5,
      25,    -1,    15,    62,    16,    -1,    50,    -1,    62,    50,
      -1,    64,    -1,    63,    11,    64,    -1,    63,     3,    64,
      -1,    10,    64,    -1,    65,    -1,    64,    21,    65,    -1,
      64,    22,    65,    -1,    64,    17,    65,    -1,    64,    18,
      65,    -1,    64,    19,    65,    -1,    64,    20,    65,    -1,
      66,    -1,    65,    30,    66,    -1,    65,    37,    66,    -1,
      67,    -1,    66,    31,    67,    -1,    66,    33,    67,    -1,
      68,    -1,    70,    -1,    32,    28,    29,    -1,    28,    63,
      29,    -1,    32,    -1,    32,    26,    63,    27,    -1,    35,
      -1,    36,    -1
};

/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   106,   106,   111,   121,   128,   133,   143,   147,   153,
     159,   169,   173,   180,   187,   194,   200,   206,   212,   216,
     220,   224,   228,   232,   236,   242,   248,   252,   259,   265,
     272,   278,   284,   291,   297,   303,   312,   318,   324,   330,
     335,   341,   345,   349,   353,   360,   364,   368,   372,   376,
     380,   384,   390,   395,   399,   405,   410,   414,   420,   425,
     429,   433,   439,   443,   449,   456
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || YYTOKEN_TABLE
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "AND", "ELSE", "EXIT", "FOR", "IF",
  "INTEGER", "FLOAT", "NOT", "OR", "READ", "WHILE", "WRITE", "LBRACE",
  "RBRACE", "LE", "LT", "GE", "GT", "EQ", "NE", "ASSIGN", "COMMA",
  "SEMICOLON", "LBRACKET", "RBRACKET", "LPAREN", "RPAREN", "PLUS", "TIMES",
  "IDENTIFIER", "DIVIDE", "RETURN", "STRING", "INTCON", "MINUS", "DIVDE",
  "$accept", "Program", "Procedures", "ProcedureDecl", "ProcedureHead",
  "FunctionDecl", "ProcedureBody", "DeclList", "IdentifierList", "VarDecl",
  "Type", "Statement", "Assignment", "IfStatement", "TestAndThen", "Test",
  "WhileStatement", "WhileExpr", "WhileToken", "IOStatement",
  "ReturnStatement", "ExitStatement", "CompoundStatement", "StatementList",
  "Expr", "SimpleExpr", "AddExpr", "MulExpr", "Factor", "Variable",
  "StringConstant", "Constant", 0
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[YYLEX-NUM] -- Internal token number corresponding to
   token YYLEX-NUM.  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293
};
# endif

/* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    39,    40,    40,    41,    41,    42,    43,    43,    44,
      45,    46,    46,    47,    47,    48,    48,    49,    50,    50,
      50,    50,    50,    50,    50,    51,    52,    52,    53,    54,
      55,    56,    57,    58,    58,    58,    59,    60,    61,    62,
      62,    63,    63,    63,    63,    64,    64,    64,    64,    64,
      64,    64,    65,    65,    65,    66,    66,    66,    67,    67,
      67,    67,    68,    68,    69,    70
};

/* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     2,     2,     0,     2,     2,     1,     5,
       2,     3,     4,     1,     3,     1,     4,     1,     1,     1,
       1,     1,     1,     1,     1,     4,     4,     2,     2,     3,
       3,     3,     1,     5,     5,     5,     3,     2,     3,     1,
       2,     1,     3,     3,     2,     1,     3,     3,     3,     3,
       3,     3,     1,     3,     3,     1,     3,     3,     1,     1,
       3,     3,     1,     4,     1,     1
};

/* YYDEFACT[STATE-NAME] -- Default rule to reduce with in state
   STATE-NUM when YYTABLE doesn't specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       5,    17,     0,     2,     5,     0,     8,     5,     0,     1,
       4,     0,     0,     0,     0,    32,     0,     0,    62,     0,
       6,    39,    18,    19,    20,     0,    21,    22,    23,    24,
       0,     0,     7,     0,     3,     0,    15,     0,    13,     0,
      37,     0,    27,     0,     0,     0,     0,     0,     0,     0,
      62,    65,     0,    41,    45,    52,    55,    58,    59,     0,
       0,    10,    40,     0,     0,    15,     0,     0,     0,     0,
      11,     0,     0,    28,     0,    64,     0,     0,    38,     0,
      44,     0,     0,     0,     0,    36,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    30,     0,    12,
       0,     0,    14,    29,    26,     0,     0,     0,    63,    61,
      60,    43,    42,    48,    49,    50,    51,    46,    47,    53,
      54,    56,    57,    31,    25,    16,     9,    33,    34,    35
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int8 yydefgoto[] =
{
      -1,     2,     3,     4,     5,     6,    20,     7,    37,    38,
       8,    21,    22,    23,    42,    43,    24,    60,    25,    26,
      27,    28,    29,    30,    52,    53,    54,    55,    56,    57,
      77,    58
};

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
#define YYPACT_NINF -48
static const yytype_int8 yypact[] =
{
      -4,   -48,    10,   -48,    -4,    37,    -4,    -4,    -8,   -48,
     -48,    21,    36,    35,    51,   -48,    72,    37,    69,    49,
     -48,   -48,   -48,   -48,   -48,    91,   -48,   -48,   -48,   -48,
       1,   102,    -4,    94,   -48,    -8,    -6,    79,   -48,    99,
     -48,    49,   124,   114,    98,    30,    14,    49,   -25,    49,
      17,   -48,    73,    89,    62,    87,   -48,   -48,   -48,    49,
      37,   -48,   -48,    49,    94,   105,    97,    96,   104,    94,
     -48,    57,   114,   -48,   106,   -48,    61,   107,   -48,    20,
      89,    64,   108,   -25,   -25,   -48,   -25,   -25,   -25,   -25,
     -25,   -25,   -25,   -25,   -25,   -25,    67,   -48,    77,   -48,
     111,   119,   -48,   -48,   -48,   115,   116,   117,   -48,   -48,
     -48,    89,    89,    62,    62,    62,    62,    62,    62,    87,
      87,   -48,   -48,   -48,   -48,   -48,   -48,   -48,   -48,   -48
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
     -48,   -48,    90,   -48,   -48,   -48,   -48,   133,   -30,    74,
      50,   -28,   -48,   -48,   -48,   -48,   -48,   -48,   -48,   -48,
     -48,   -48,   -34,   127,    42,   -47,    26,   -19,    29,    -5,
     -48,   -48
};

/* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule which
   number is the opposite.  If zero, do what YYDEFACT says.
   If YYTABLE_NINF, syntax error.  */
#define YYTABLE_NINF -1
static const yytype_uint8 yytable[] =
{
      31,    80,    62,    49,     1,    66,    12,    50,    13,    73,
       9,    51,    31,    14,    15,    16,    17,    61,    62,    12,
      67,    13,    68,    83,    36,    31,    14,    15,    16,    17,
      78,    84,    97,    18,    66,    19,   111,   112,   104,    74,
      48,    31,    12,    47,    13,    82,    18,   108,    19,    14,
      15,    16,    17,    39,    11,    31,    33,    35,    49,    48,
      83,    40,    50,    41,    83,    75,    51,    83,    84,    18,
      83,    19,    84,   119,   120,    84,    83,    49,    84,    44,
      83,    50,    64,    71,    84,    51,   103,    76,    84,    79,
     106,    81,    92,   109,    10,    47,   123,    34,    85,    93,
      45,    96,   124,    69,    70,    98,    86,    87,    88,    89,
      90,    91,   113,   114,   115,   116,   117,   118,    94,    59,
      95,    69,    99,   121,   122,    63,    65,    68,    72,    17,
      18,    67,   100,   101,   126,   105,   107,   110,   125,    32,
     127,   128,   129,   102,    46
};

static const yytype_uint8 yycheck[] =
{
       5,    48,    30,    28,     8,    35,     5,    32,     7,    43,
       0,    36,    17,    12,    13,    14,    15,    16,    46,     5,
      26,     7,    28,     3,    32,    30,    12,    13,    14,    15,
      16,    11,    60,    32,    64,    34,    83,    84,    72,    44,
      10,    46,     5,    26,     7,    28,    32,    27,    34,    12,
      13,    14,    15,    32,     4,    60,     6,     7,    28,    10,
       3,    25,    32,    28,     3,    35,    36,     3,    11,    32,
       3,    34,    11,    92,    93,    11,     3,    28,    11,    28,
       3,    32,    32,    41,    11,    36,    29,    45,    11,    47,
      29,    49,    30,    29,     4,    26,    29,     7,    25,    37,
      28,    59,    25,    24,    25,    63,    17,    18,    19,    20,
      21,    22,    86,    87,    88,    89,    90,    91,    31,    28,
      33,    24,    25,    94,    95,    23,    32,    28,     4,    15,
      32,    26,    36,    29,    15,    29,    29,    29,    27,     6,
      25,    25,    25,    69,    17
};

/* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
   symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     8,    40,    41,    42,    43,    44,    46,    49,     0,
      41,    49,     5,     7,    12,    13,    14,    15,    32,    34,
      45,    50,    51,    52,    55,    57,    58,    59,    60,    61,
      62,    68,    46,    49,    41,    49,    32,    47,    48,    32,
      25,    28,    53,    54,    28,    28,    62,    26,    10,    28,
      32,    36,    63,    64,    65,    66,    67,    68,    70,    28,
      56,    16,    50,    23,    49,    32,    47,    26,    28,    24,
      25,    63,     4,    61,    68,    35,    63,    69,    16,    63,
      64,    63,    28,     3,    11,    25,    17,    18,    19,    20,
      21,    22,    30,    37,    31,    33,    63,    50,    63,    25,
      36,    29,    48,    29,    61,    29,    29,    29,    27,    29,
      29,    64,    64,    65,    65,    65,    65,    65,    65,    66,
      66,    67,    67,    29,    25,    27,    15,    25,    25,    25
};

#define yyerrok		(yyerrstatus = 0)
#define yyclearin	(yychar = YYEMPTY)
#define YYEMPTY		(-2)
#define YYEOF		0

#define YYACCEPT	goto yyacceptlab
#define YYABORT		goto yyabortlab
#define YYERROR		goto yyerrorlab


/* Like YYERROR except do call yyerror.  This remains here temporarily
   to ease the transition to the new meaning of YYERROR, for GCC.
   Once GCC version 2 has supplanted version 1, this can go.  */

#define YYFAIL		goto yyerrlab

#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)					\
do								\
  if (yychar == YYEMPTY && yylen == 1)				\
    {								\
      yychar = (Token);						\
      yylval = (Value);						\
      yytoken = YYTRANSLATE (yychar);				\
      YYPOPSTACK (1);						\
      goto yybackup;						\
    }								\
  else								\
    {								\
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;							\
    }								\
while (YYID (0))


#define YYTERROR	1
#define YYERRCODE	256


/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

#define YYRHSLOC(Rhs, K) ((Rhs)[K])
#ifndef YYLLOC_DEFAULT
# define YYLLOC_DEFAULT(Current, Rhs, N)				\
    do									\
      if (YYID (N))                                                    \
	{								\
	  (Current).first_line   = YYRHSLOC (Rhs, 1).first_line;	\
	  (Current).first_column = YYRHSLOC (Rhs, 1).first_column;	\
	  (Current).last_line    = YYRHSLOC (Rhs, N).last_line;		\
	  (Current).last_column  = YYRHSLOC (Rhs, N).last_column;	\
	}								\
      else								\
	{								\
	  (Current).first_line   = (Current).last_line   =		\
	    YYRHSLOC (Rhs, 0).last_line;				\
	  (Current).first_column = (Current).last_column =		\
	    YYRHSLOC (Rhs, 0).last_column;				\
	}								\
    while (YYID (0))
#endif


/* YY_LOCATION_PRINT -- Print the location on the stream.
   This macro was not mandated originally: define only if we know
   we won't break user code: when these are the locations we know.  */

#ifndef YY_LOCATION_PRINT
# if YYLTYPE_IS_TRIVIAL
#  define YY_LOCATION_PRINT(File, Loc)			\
     fprintf (File, "%d.%d-%d.%d",			\
	      (Loc).first_line, (Loc).first_column,	\
	      (Loc).last_line,  (Loc).last_column)
# else
#  define YY_LOCATION_PRINT(File, Loc) ((void) 0)
# endif
#endif


/* YYLEX -- calling `yylex' with the right arguments.  */

#ifdef YYLEX_PARAM
# define YYLEX yylex (YYLEX_PARAM)
#else
# define YYLEX yylex ()
#endif

/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)			\
do {						\
  if (yydebug)					\
    YYFPRINTF Args;				\
} while (YYID (0))

# define YY_SYMBOL_PRINT(Title, Type, Value, Location)			  \
do {									  \
  if (yydebug)								  \
    {									  \
      YYFPRINTF (stderr, "%s ", Title);					  \
      yy_symbol_print (stderr,						  \
		  Type, Value); \
      YYFPRINTF (stderr, "\n");						  \
    }									  \
} while (YYID (0))


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
#else
static void
yy_symbol_value_print (yyoutput, yytype, yyvaluep)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
#endif
{
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# else
  YYUSE (yyoutput);
# endif
  switch (yytype)
    {
      default:
	break;
    }
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
#else
static void
yy_symbol_print (yyoutput, yytype, yyvaluep)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
#endif
{
  if (yytype < YYNTOKENS)
    YYFPRINTF (yyoutput, "token %s (", yytname[yytype]);
  else
    YYFPRINTF (yyoutput, "nterm %s (", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
#else
static void
yy_stack_print (yybottom, yytop)
    yytype_int16 *yybottom;
    yytype_int16 *yytop;
#endif
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)				\
do {								\
  if (yydebug)							\
    yy_stack_print ((Bottom), (Top));				\
} while (YYID (0))


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_reduce_print (YYSTYPE *yyvsp, int yyrule)
#else
static void
yy_reduce_print (yyvsp, yyrule)
    YYSTYPE *yyvsp;
    int yyrule;
#endif
{
  int yynrhs = yyr2[yyrule];
  int yyi;
  unsigned long int yylno = yyrline[yyrule];
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
	     yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr, yyrhs[yyprhs[yyrule] + yyi],
		       &(yyvsp[(yyi + 1) - (yynrhs)])
		       		       );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)		\
do {					\
  if (yydebug)				\
    yy_reduce_print (yyvsp, Rule); \
} while (YYID (0))

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef	YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif



#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static YYSIZE_T
yystrlen (const char *yystr)
#else
static YYSIZE_T
yystrlen (yystr)
    const char *yystr;
#endif
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static char *
yystpcpy (char *yydest, const char *yysrc)
#else
static char *
yystpcpy (yydest, yysrc)
    char *yydest;
    const char *yysrc;
#endif
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
	switch (*++yyp)
	  {
	  case '\'':
	  case ',':
	    goto do_not_strip_quotes;

	  case '\\':
	    if (*++yyp != '\\')
	      goto do_not_strip_quotes;
	    /* Fall through.  */
	  default:
	    if (yyres)
	      yyres[yyn] = *yyp;
	    yyn++;
	    break;

	  case '"':
	    if (yyres)
	      yyres[yyn] = '\0';
	    return yyn;
	  }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into YYRESULT an error message about the unexpected token
   YYCHAR while in state YYSTATE.  Return the number of bytes copied,
   including the terminating null byte.  If YYRESULT is null, do not
   copy anything; just return the number of bytes that would be
   copied.  As a special case, return 0 if an ordinary "syntax error"
   message will do.  Return YYSIZE_MAXIMUM if overflow occurs during
   size calculation.  */
static YYSIZE_T
yysyntax_error (char *yyresult, int yystate, int yychar)
{
  int yyn = yypact[yystate];

  if (! (YYPACT_NINF < yyn && yyn <= YYLAST))
    return 0;
  else
    {
      int yytype = YYTRANSLATE (yychar);
      YYSIZE_T yysize0 = yytnamerr (0, yytname[yytype]);
      YYSIZE_T yysize = yysize0;
      YYSIZE_T yysize1;
      int yysize_overflow = 0;
      enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
      char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
      int yyx;

# if 0
      /* This is so xgettext sees the translatable formats that are
	 constructed on the fly.  */
      YY_("syntax error, unexpected %s");
      YY_("syntax error, unexpected %s, expecting %s");
      YY_("syntax error, unexpected %s, expecting %s or %s");
      YY_("syntax error, unexpected %s, expecting %s or %s or %s");
      YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s");
# endif
      char *yyfmt;
      char const *yyf;
      static char const yyunexpected[] = "syntax error, unexpected %s";
      static char const yyexpecting[] = ", expecting %s";
      static char const yyor[] = " or %s";
      char yyformat[sizeof yyunexpected
		    + sizeof yyexpecting - 1
		    + ((YYERROR_VERBOSE_ARGS_MAXIMUM - 2)
		       * (sizeof yyor - 1))];
      char const *yyprefix = yyexpecting;

      /* Start YYX at -YYN if negative to avoid negative indexes in
	 YYCHECK.  */
      int yyxbegin = yyn < 0 ? -yyn : 0;

      /* Stay within bounds of both yycheck and yytname.  */
      int yychecklim = YYLAST - yyn + 1;
      int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
      int yycount = 1;

      yyarg[0] = yytname[yytype];
      yyfmt = yystpcpy (yyformat, yyunexpected);

      for (yyx = yyxbegin; yyx < yyxend; ++yyx)
	if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR)
	  {
	    if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
	      {
		yycount = 1;
		yysize = yysize0;
		yyformat[sizeof yyunexpected - 1] = '\0';
		break;
	      }
	    yyarg[yycount++] = yytname[yyx];
	    yysize1 = yysize + yytnamerr (0, yytname[yyx]);
	    yysize_overflow |= (yysize1 < yysize);
	    yysize = yysize1;
	    yyfmt = yystpcpy (yyfmt, yyprefix);
	    yyprefix = yyor;
	  }

      yyf = YY_(yyformat);
      yysize1 = yysize + yystrlen (yyf);
      yysize_overflow |= (yysize1 < yysize);
      yysize = yysize1;

      if (yysize_overflow)
	return YYSIZE_MAXIMUM;

      if (yyresult)
	{
	  /* Avoid sprintf, as that infringes on the user's name space.
	     Don't have undefined behavior even if the translation
	     produced a string with the wrong number of "%s"s.  */
	  char *yyp = yyresult;
	  int yyi = 0;
	  while ((*yyp = *yyf) != '\0')
	    {
	      if (*yyp == '%' && yyf[1] == 's' && yyi < yycount)
		{
		  yyp += yytnamerr (yyp, yyarg[yyi++]);
		  yyf += 2;
		}
	      else
		{
		  yyp++;
		  yyf++;
		}
	    }
	}
      return yysize;
    }
}
#endif /* YYERROR_VERBOSE */


/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
#else
static void
yydestruct (yymsg, yytype, yyvaluep)
    const char *yymsg;
    int yytype;
    YYSTYPE *yyvaluep;
#endif
{
  YYUSE (yyvaluep);

  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  switch (yytype)
    {

      default:
	break;
    }
}

/* Prevent warnings from -Wmissing-prototypes.  */
#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int yyparse (void *YYPARSE_PARAM);
#else
int yyparse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int yyparse (void);
#else
int yyparse ();
#endif
#endif /* ! YYPARSE_PARAM */


/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;

/* Number of syntax errors so far.  */
int yynerrs;



/*-------------------------.
| yyparse or yypush_parse.  |
`-------------------------*/

#ifdef YYPARSE_PARAM
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void *YYPARSE_PARAM)
#else
int
yyparse (YYPARSE_PARAM)
    void *YYPARSE_PARAM;
#endif
#else /* ! YYPARSE_PARAM */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void)
#else
int
yyparse ()

#endif
#endif
{


    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       `yyss': related to states.
       `yyvs': related to semantic values.

       Refer to the stacks thru separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yytoken = 0;
  yyss = yyssa;
  yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */

  /* Initialize stack pointers.
     Waste one element of value and location stack
     so that they stay on the same level as the state stack.
     The wasted elements are never initialized.  */
  yyssp = yyss;
  yyvsp = yyvs;

  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
	/* Give user a chance to reallocate the stack.  Use copies of
	   these so that the &'s don't force the real ones into
	   memory.  */
	YYSTYPE *yyvs1 = yyvs;
	yytype_int16 *yyss1 = yyss;

	/* Each stack pointer address is followed by the size of the
	   data in use in that stack, in bytes.  This used to be a
	   conditional around just the two extra args, but that might
	   be undefined if yyoverflow is a macro.  */
	yyoverflow (YY_("memory exhausted"),
		    &yyss1, yysize * sizeof (*yyssp),
		    &yyvs1, yysize * sizeof (*yyvsp),
		    &yystacksize);

	yyss = yyss1;
	yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
	goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
	yystacksize = YYMAXDEPTH;

      {
	yytype_int16 *yyss1 = yyss;
	union yyalloc *yyptr =
	  (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
	if (! yyptr)
	  goto yyexhaustedlab;
	YYSTACK_RELOCATE (yyss_alloc, yyss);
	YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
	if (yyss1 != yyssa)
	  YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
		  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
	YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yyn == YYPACT_NINF)
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = YYLEX;
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yyn == 0 || yyn == YYTABLE_NINF)
	goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  *++yyvsp = yylval;

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     `$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:

/* Line 1455 of yacc.c  */
#line 107 "CminusParser.y"
    {
			(yyval.program) = (yyvsp[(1) - (1)].program);
			programBlocks=(yyval.program);
		;}
    break;

  case 3:

/* Line 1455 of yacc.c  */
#line 112 "CminusParser.y"
    {	
			for(int i=0;i<(yyvsp[(1) - (2)].varvec)->size();i++){
				(yyvsp[(2) - (2)].program)->variables.push_back((*(yyvsp[(1) - (2)].varvec))[i]);
			}
			(yyval.program) = (yyvsp[(2) - (2)].program);
			programBlocks=(yyval.program);
		;}
    break;

  case 4:

/* Line 1455 of yacc.c  */
#line 122 "CminusParser.y"
    {
                        (yyvsp[(2) - (2)].program) = new NProgram();	
			(yyvsp[(2) - (2)].program)->blocks.push_back((yyvsp[(1) - (2)].block));			
			(yyval.program) = (yyvsp[(2) - (2)].program);			
		;}
    break;

  case 5:

/* Line 1455 of yacc.c  */
#line 128 "CminusParser.y"
    {
		  //	printf("<Procedures> -> epsilon\n");
		;}
    break;

  case 6:

/* Line 1455 of yacc.c  */
#line 134 "CminusParser.y"
    {
			//cout << $1->size()<<endl;	
			for(int i=0;i<(yyvsp[(1) - (2)].varvec)->size();i++){
				(yyvsp[(2) - (2)].block)->localVariables.push_back((*(yyvsp[(1) - (2)].varvec))[i]);
			}			
			(yyval.block) = (yyvsp[(2) - (2)].block);
		;}
    break;

  case 7:

/* Line 1455 of yacc.c  */
#line 144 "CminusParser.y"
    {
			(yyval.varvec) = (yyvsp[(2) - (2)].varvec);
		;}
    break;

  case 8:

/* Line 1455 of yacc.c  */
#line 148 "CminusParser.y"
    {
			(yyval.varvec) = new VariableList();
		;}
    break;

  case 9:

/* Line 1455 of yacc.c  */
#line 154 "CminusParser.y"
    {
			//cout<<*$2<<endl;
		;}
    break;

  case 10:

/* Line 1455 of yacc.c  */
#line 160 "CminusParser.y"
    {
			(yyval.block) = new NBlock();			
			for(int i=0;i<(yyvsp[(1) - (2)].statvec)->size();i++){
				(yyval.block)->statements.push_back((*(yyvsp[(1) - (2)].statvec))[i]);
			}				
		;}
    break;

  case 11:

/* Line 1455 of yacc.c  */
#line 170 "CminusParser.y"
    {
			(yyval.varvec) = (yyvsp[(2) - (3)].varvec);
		;}
    break;

  case 12:

/* Line 1455 of yacc.c  */
#line 174 "CminusParser.y"
    {
			(yyval.varvec) = (yyvsp[(3) - (4)].varvec);
	 	;}
    break;

  case 13:

/* Line 1455 of yacc.c  */
#line 181 "CminusParser.y"
    {
			(yyval.varvec) = new VariableList();
			(yyval.varvec)->push_back((yyvsp[(1) - (1)].var_decl));

		;}
    break;

  case 14:

/* Line 1455 of yacc.c  */
#line 188 "CminusParser.y"
    {
			(yyvsp[(1) - (3)].varvec)->push_back((yyvsp[(3) - (3)].var_decl));
			(yyval.varvec) = (yyvsp[(1) - (3)].varvec);
		;}
    break;

  case 15:

/* Line 1455 of yacc.c  */
#line 195 "CminusParser.y"
    { 
			int size = context->varoffset.size();
			context->varoffset[(yyvsp[(1) - (1)].ident)->name]=size*sizeof(int);
			(yyval.var_decl) = new NVariableDeclaration(*(yyvsp[(1) - (1)].ident));	
		;}
    break;

  case 16:

/* Line 1455 of yacc.c  */
#line 201 "CminusParser.y"
    {
			//$$ = new NVariableDeclaration(*$1);
		;}
    break;

  case 17:

/* Line 1455 of yacc.c  */
#line 207 "CminusParser.y"
    { 
		  //	printf("<Type> -> <INTEGER>\n");
		;}
    break;

  case 18:

/* Line 1455 of yacc.c  */
#line 213 "CminusParser.y"
    { 
			(yyval.stmt) = new NExpressionStatement(*(yyvsp[(1) - (1)].expr));
		;}
    break;

  case 19:

/* Line 1455 of yacc.c  */
#line 217 "CminusParser.y"
    { 
		  //	printf("<Statement> -> <IfStatement>\n");
		;}
    break;

  case 20:

/* Line 1455 of yacc.c  */
#line 221 "CminusParser.y"
    { 
		  //	printf("<Statement> -> <WhileStatement>\n");
		;}
    break;

  case 21:

/* Line 1455 of yacc.c  */
#line 225 "CminusParser.y"
    { 	
			(yyval.stmt) = new NExpressionStatement(*(yyvsp[(1) - (1)].expr));	  
		;}
    break;

  case 22:

/* Line 1455 of yacc.c  */
#line 229 "CminusParser.y"
    { 
		  //	printf("<Statement> -> <ReturnStatement>\n");
		;}
    break;

  case 23:

/* Line 1455 of yacc.c  */
#line 233 "CminusParser.y"
    { 
		  //	printf("<Statement> -> <ExitStatement>\n");
		;}
    break;

  case 24:

/* Line 1455 of yacc.c  */
#line 237 "CminusParser.y"
    { 
		  //	printf("<Statement> -> <CompoundStatement>\n");
		;}
    break;

  case 25:

/* Line 1455 of yacc.c  */
#line 243 "CminusParser.y"
    {
 			(yyval.expr) = new NAssignment(*(yyvsp[(1) - (4)].ident), *(yyvsp[(3) - (4)].expr));	
		;}
    break;

  case 26:

/* Line 1455 of yacc.c  */
#line 249 "CminusParser.y"
    {
		  //	printf("<IfStatement> -> <IF> <TestAndThen> <ELSE> <CompoundStatement>\n");
		;}
    break;

  case 27:

/* Line 1455 of yacc.c  */
#line 253 "CminusParser.y"
    {
		  //	printf("<IfStatement> -> <IF> <TestAndThen>\n");
		;}
    break;

  case 28:

/* Line 1455 of yacc.c  */
#line 260 "CminusParser.y"
    {
		  //	printf("<TestAndThen> -> <Test> <CompoundStatement>\n");
		;}
    break;

  case 29:

/* Line 1455 of yacc.c  */
#line 266 "CminusParser.y"
    {
		  //	printf("<Test> -> <LP> <Expr> <RP>\n");
		;}
    break;

  case 30:

/* Line 1455 of yacc.c  */
#line 273 "CminusParser.y"
    {
		  //	printf("<WhileStatement> -> <WhileToken> <WhileExpr> <Statement>\n");
		;}
    break;

  case 31:

/* Line 1455 of yacc.c  */
#line 279 "CminusParser.y"
    {
		  // printf("<WhileExpr> -> <LP> <Expr> <RP>\n");
		;}
    break;

  case 32:

/* Line 1455 of yacc.c  */
#line 285 "CminusParser.y"
    {
		  //printf("<WhileToken> -> <WHILE>\n");
		;}
    break;

  case 33:

/* Line 1455 of yacc.c  */
#line 292 "CminusParser.y"
    {
			string *tmp= new string("read");
			NIdentifier *ident = new NIdentifier(*tmp,1);
			(yyval.expr) = new NIOStatement(*ident,*(yyvsp[(3) - (5)].ident));
		;}
    break;

  case 34:

/* Line 1455 of yacc.c  */
#line 298 "CminusParser.y"
    {
			string *tmp= new string("write");
			NIdentifier *ident = new NIdentifier(*tmp,1);
			(yyval.expr) = new NIOStatement(*ident,*(yyvsp[(3) - (5)].expr));
		;}
    break;

  case 35:

/* Line 1455 of yacc.c  */
#line 304 "CminusParser.y"
    {	
			string *tmp= new string("write");
			NIdentifier *ident = new NIdentifier(*tmp);
			(yyval.expr) = new NIOStatement(*ident,*(yyvsp[(3) - (5)].expr));
		;}
    break;

  case 36:

/* Line 1455 of yacc.c  */
#line 313 "CminusParser.y"
    {
		  //printf("<ReturnStatement> -> <RETURN> <Expr> <SC>\n");
		;}
    break;

  case 37:

/* Line 1455 of yacc.c  */
#line 319 "CminusParser.y"
    {	
		  //	printf("<ExitStatement> -> <EXIT> <SC>\n");
		;}
    break;

  case 38:

/* Line 1455 of yacc.c  */
#line 325 "CminusParser.y"
    {
		  //	printf("<CompoundStatement> -> <LBR> <StatementList> <RBR>\n");
		;}
    break;

  case 39:

/* Line 1455 of yacc.c  */
#line 331 "CminusParser.y"
    {	
			(yyval.statvec) = new StatementList();
			(yyval.statvec)->push_back((yyvsp[(1) - (1)].stmt));	
		;}
    break;

  case 40:

/* Line 1455 of yacc.c  */
#line 336 "CminusParser.y"
    {	(yyvsp[(1) - (2)].statvec)->push_back((yyvsp[(2) - (2)].stmt));
			(yyval.statvec) = (yyvsp[(1) - (2)].statvec);	
		;}
    break;

  case 41:

/* Line 1455 of yacc.c  */
#line 342 "CminusParser.y"
    {
			(yyval.expr) = (yyvsp[(1) - (1)].expr);
		;}
    break;

  case 42:

/* Line 1455 of yacc.c  */
#line 346 "CminusParser.y"
    {
			(yyval.expr) = new NBinaryOperator(*(yyvsp[(1) - (3)].expr), "||", *(yyvsp[(3) - (3)].expr));
		;}
    break;

  case 43:

/* Line 1455 of yacc.c  */
#line 350 "CminusParser.y"
    {
			(yyval.expr) = new NBinaryOperator(*(yyvsp[(1) - (3)].expr), "&&", *(yyvsp[(3) - (3)].expr));
		;}
    break;

  case 44:

/* Line 1455 of yacc.c  */
#line 354 "CminusParser.y"
    {       
		        NInteger *a = new NInteger(0);
			(yyval.expr) = new NBinaryOperator(*a, "!", *(yyvsp[(2) - (2)].expr));
		;}
    break;

  case 45:

/* Line 1455 of yacc.c  */
#line 361 "CminusParser.y"
    {
			(yyval.expr) = (yyvsp[(1) - (1)].expr);
		;}
    break;

  case 46:

/* Line 1455 of yacc.c  */
#line 365 "CminusParser.y"
    {
			(yyval.expr) = new NBinaryOperator(*(yyvsp[(1) - (3)].expr), "EQ", *(yyvsp[(3) - (3)].expr));
		;}
    break;

  case 47:

/* Line 1455 of yacc.c  */
#line 369 "CminusParser.y"
    {
			(yyval.expr) = new NBinaryOperator(*(yyvsp[(1) - (3)].expr), "NE", *(yyvsp[(3) - (3)].expr));
		;}
    break;

  case 48:

/* Line 1455 of yacc.c  */
#line 373 "CminusParser.y"
    {
			(yyval.expr) = new NBinaryOperator(*(yyvsp[(1) - (3)].expr), "LE", *(yyvsp[(3) - (3)].expr));
		;}
    break;

  case 49:

/* Line 1455 of yacc.c  */
#line 377 "CminusParser.y"
    {
			(yyval.expr) = new NBinaryOperator(*(yyvsp[(1) - (3)].expr), "LT", *(yyvsp[(3) - (3)].expr));
		;}
    break;

  case 50:

/* Line 1455 of yacc.c  */
#line 381 "CminusParser.y"
    {
			(yyval.expr) = new NBinaryOperator(*(yyvsp[(1) - (3)].expr), "GE", *(yyvsp[(3) - (3)].expr));
		;}
    break;

  case 51:

/* Line 1455 of yacc.c  */
#line 385 "CminusParser.y"
    {
			(yyval.expr) = new NBinaryOperator(*(yyvsp[(1) - (3)].expr), "GT", *(yyvsp[(3) - (3)].expr));
		;}
    break;

  case 52:

/* Line 1455 of yacc.c  */
#line 391 "CminusParser.y"
    {
			(yyval.expr) = (yyvsp[(1) - (1)].expr);
		  //	printf("<AddExpr> -> <MulExpr>\n");
		;}
    break;

  case 53:

/* Line 1455 of yacc.c  */
#line 396 "CminusParser.y"
    {
			(yyval.expr) = new NBinaryOperator(*(yyvsp[(1) - (3)].expr), "+", *(yyvsp[(3) - (3)].expr));
		;}
    break;

  case 54:

/* Line 1455 of yacc.c  */
#line 400 "CminusParser.y"
    {
			(yyval.expr) = new NBinaryOperator(*(yyvsp[(1) - (3)].expr), "-", *(yyvsp[(3) - (3)].expr));
		;}
    break;

  case 55:

/* Line 1455 of yacc.c  */
#line 406 "CminusParser.y"
    {
			(yyval.expr) = (yyvsp[(1) - (1)].expr);
		  //	printf("<MulExpr> -> <Factor>\n");
		;}
    break;

  case 56:

/* Line 1455 of yacc.c  */
#line 411 "CminusParser.y"
    {
			(yyval.expr) = new NBinaryOperator(*(yyvsp[(1) - (3)].expr), "*", *(yyvsp[(3) - (3)].expr));
		;}
    break;

  case 57:

/* Line 1455 of yacc.c  */
#line 415 "CminusParser.y"
    {
			(yyval.expr) = new NBinaryOperator(*(yyvsp[(1) - (3)].expr), "/", *(yyvsp[(3) - (3)].expr));
		;}
    break;

  case 58:

/* Line 1455 of yacc.c  */
#line 421 "CminusParser.y"
    { 
			(yyval.expr) = (yyvsp[(1) - (1)].ident);
		  //	printf("<Factor> -> <Variable>\n");
		;}
    break;

  case 59:

/* Line 1455 of yacc.c  */
#line 426 "CminusParser.y"
    { 
		  //	printf("<Factor> -> <Constant>\n");
		;}
    break;

  case 60:

/* Line 1455 of yacc.c  */
#line 430 "CminusParser.y"
    {	
		  //	printf("<Factor> -> <IDENTIFIER> <LP> <RP>\n");
		;}
    break;

  case 61:

/* Line 1455 of yacc.c  */
#line 434 "CminusParser.y"
    {
			(yyval.expr) = (yyvsp[(2) - (3)].expr);
		;}
    break;

  case 62:

/* Line 1455 of yacc.c  */
#line 440 "CminusParser.y"
    {
			(yyval.ident) = (yyvsp[(1) - (1)].ident);
		;}
    break;

  case 63:

/* Line 1455 of yacc.c  */
#line 444 "CminusParser.y"
    {
		  //	printf("<Variable> -> <IDENTIFIER> <LBK> <Expr> <RBK>\n");
               	;}
    break;

  case 64:

/* Line 1455 of yacc.c  */
#line 450 "CminusParser.y"
    {
			context->constantString.push_back((yyvsp[(1) - (1)].stringValue)->substr(1,((yyvsp[(1) - (1)].stringValue)->length()-2)));
			(yyval.expr) = new NString((yyvsp[(1) - (1)].stringValue)->substr(1,((yyvsp[(1) - (1)].stringValue)->length()-2)));
		;}
    break;

  case 65:

/* Line 1455 of yacc.c  */
#line 457 "CminusParser.y"
    { 	
			(yyval.expr) = new NInteger(atol((yyvsp[(1) - (1)].stringValue)->c_str()));
			NInteger *test = static_cast<NInteger *>(yyval.expr);
		;}
    break;



/* Line 1455 of yacc.c  */
#line 2123 "CminusParser.c"
      default: break;
    }
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now `shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*------------------------------------.
| yyerrlab -- here on detecting error |
`------------------------------------*/
yyerrlab:
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
      {
	YYSIZE_T yysize = yysyntax_error (0, yystate, yychar);
	if (yymsg_alloc < yysize && yymsg_alloc < YYSTACK_ALLOC_MAXIMUM)
	  {
	    YYSIZE_T yyalloc = 2 * yysize;
	    if (! (yysize <= yyalloc && yyalloc <= YYSTACK_ALLOC_MAXIMUM))
	      yyalloc = YYSTACK_ALLOC_MAXIMUM;
	    if (yymsg != yymsgbuf)
	      YYSTACK_FREE (yymsg);
	    yymsg = (char *) YYSTACK_ALLOC (yyalloc);
	    if (yymsg)
	      yymsg_alloc = yyalloc;
	    else
	      {
		yymsg = yymsgbuf;
		yymsg_alloc = sizeof yymsgbuf;
	      }
	  }

	if (0 < yysize && yysize <= yymsg_alloc)
	  {
	    (void) yysyntax_error (yymsg, yystate, yychar);
	    yyerror (yymsg);
	  }
	else
	  {
	    yyerror (YY_("syntax error"));
	    if (yysize != 0)
	      goto yyexhaustedlab;
	  }
      }
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
	 error, discard it.  */

      if (yychar <= YYEOF)
	{
	  /* Return failure if at end of input.  */
	  if (yychar == YYEOF)
	    YYABORT;
	}
      else
	{
	  yydestruct ("Error: discarding",
		      yytoken, &yylval);
	  yychar = YYEMPTY;
	}
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule which action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;	/* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (yyn != YYPACT_NINF)
	{
	  yyn += YYTERROR;
	  if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
	    {
	      yyn = yytable[yyn];
	      if (0 < yyn)
		break;
	    }
	}

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
	YYABORT;


      yydestruct ("Error: popping",
		  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  *++yyvsp = yylval;


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined(yyoverflow) || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
     yydestruct ("Cleanup: discarding lookahead",
		 yytoken, &yylval);
  /* Do not reclaim the symbols of the rule which action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
		  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  /* Make sure YYID is used.  */
  return YYID (yyresult);
}



/* Line 1675 of yacc.c  */
#line 462 "CminusParser.y"


/********************C/C++ ROUTINES *********************************/

void Cminus_error(const char *s){
  fprintf(stderr,"%s: line %d: %s\n",fileName,Cminus_lineno,s);
}

int Cminus_wrap() {	
  return 1;
}

static void initialize(char* inputFileName) {
  stdin = freopen(inputFileName,"r",stdin);
  if (stdin == NULL) {
    fprintf(stderr,"Error: Could not open file %s\n",inputFileName);
    exit(-1);
  }

  int len = strlen(inputFileName);
  // find the position of last .
  // for example, 1.hello.cm ==> 1.hello.s
  while(inputFileName[len-1]!='.')
    len--;

  char* outputFileName = (char*) malloc((len+1)*sizeof(char));
  strncpy(outputFileName,inputFileName,len);
  strncat(outputFileName,"s",1);
  stdout = freopen(outputFileName,"w",stdout);
  if (stdout == NULL) {
    fprintf(stderr,"Error: Could not open file %s\n",outputFileName);
    exit(-1);
  }
}

static void finalize() {
  fclose(stdin);
  fclose(stdout);    
}

int main(int argc, char** argv){	
  fileName = argv[1];
  initialize(fileName);
  context = new CodeGenContext();
  context->regList.push_back("");
  context->regList.push_back("eax");
  context->regList.push_back("ebx");
  context->regList.push_back("ecx");
  context->regList.push_back("edx");
  context->regList.push_back("r9d");
  context->regList.push_back("r10d");
  context->regList.push_back("r11d");
  context->regList.push_back("r12d");
  context->regList.push_back("r13d");
  context->regList.push_back("r14d");
  context->regList.push_back("r15d");
  Cminus_parse();	
  programBlocks->codeGen(*context);
  finalize();
  return 0;
}
/******************END OF C/C++ ROUTINES**********************/

