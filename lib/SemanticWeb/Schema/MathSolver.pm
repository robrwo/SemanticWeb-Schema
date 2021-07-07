use utf8;

package SemanticWeb::Schema::MathSolver;

# ABSTRACT: A math solver which is capable of solving a subset of mathematical problems.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'MathSolver';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v13.0.0';

=encoding utf8

=head1 DESCRIPTION

A math solver which is capable of solving a subset of mathematical
problems.




=head1 ATTRIBUTES


=head2 C<math_expression>

C<mathExpression>

A mathematical expression (e.g. 'x^2-3x=0') that may be solved for a
specific variable, simplified, or transformed. This can take many formats,
e.g. LaTeX, Ascii-Math, or math as you would write with a keyboard.


A math_expression should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::SolveMathAction']>

=item C<Str>

=back

=head2 C<_has_math_expression>

A predicate for the L</math_expression> attribute.

=cut

has math_expression => (
    is        => 'rw',
    predicate => '_has_math_expression',
    json_ld   => 'mathExpression',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
