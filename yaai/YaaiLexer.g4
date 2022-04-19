lexer grammar YaaiLexer;

ACTOR   : 'actor';
FUNC    : 'func';
INIT    : 'init';
PACKAGE : 'package';
RECEIVE : 'receive';
SELF    : 'self';
STRUCT  : 'struct';
TYPE    : 'type';
VAR     : 'var';

T_INT    : 'int';
T_INT32  : 'int32';
T_INT64  : 'int64';
T_UINT   : 'uint';
T_UINT32 : 'uint32';
T_UINT64 : 'uint64';
T_STRING : 'string';

IDENTIFIER: [a-zA-Z][a-zA-Z0-9_]*;

fragment STRING_BODY : ('\\"' | ~["])+;
STRING_LITERAL  : '"' STRING_BODY '"';

NUMERIC_LITERAL : [0-9]+;

VAR_INITIALIZER : ':=';
ASSIGNMENT      : '=';

PLUS_EQUAL   : '+=';
MINUS_EQUAL  : '-=';

L_BRACKET    : '{';
R_BRACKET    : '}';
L_PAREN      : '(';
R_PAREN      : ')';
DOT          : '.';
PLUG         : '+';
MINUS        : '-';
STAR         : '*';
F_SLASH      : '/';
COMMA        : ',';
// SEMI: ';';


// non-breaking whitespace
NB_WS: [ \t] -> skip;

LINE_COMMENT           : '//' ~[\r\n]*      -> channel(HIDDEN);

EOS:  ([\r\n]+ | ';' | EOF) -> mode(DEFAULT_MODE);