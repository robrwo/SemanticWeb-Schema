use utf8;

package SemanticWeb::Schema::returnMethod;

# ABSTRACT: The type of return method offered

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'returnMethod';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The type of return method offered, specified from an enumeration.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
