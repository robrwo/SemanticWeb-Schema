use utf8;

package SemanticWeb::Schema::mathExpression;

# ABSTRACT: A mathematical expression (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'mathExpression';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A mathematical expression (e.g. 'x^2-3x=0') that may be solved for a
specific variable, simplified, or transformed. This can take many formats,
e.g. LaTeX, Ascii-Math, or math as you would write with a keyboard.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
