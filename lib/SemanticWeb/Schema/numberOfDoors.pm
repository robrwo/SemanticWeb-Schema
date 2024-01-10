use utf8;

package SemanticWeb::Schema::numberOfDoors;

# ABSTRACT: The number of doors

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'numberOfDoors';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number of doors. Typical unit code(s): C62.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
