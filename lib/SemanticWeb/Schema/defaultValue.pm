use utf8;

package SemanticWeb::Schema::defaultValue;

# ABSTRACT: The default value of the input

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'defaultValue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The default value of the input. For properties that expect a literal, the
default is a literal value, for properties that expect an object, it's an
ID reference to one of the current values.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
