%token le "le"
%token me "me"
%token gusta "gusta"
%token el "el"
%token ruby "ruby"

%%
SpanishPhrase: VerbAndObject el ruby {
  printf("%s Ruby\n", $1);
};
VerbAndObject: SheLikes | ILike {
$$ = $1; };
SheLikes: le gusta {
  $$ = "She likes";
}
ILike: me gusta {
  $$ = "I like";
}
%%