use utf8;

package SemanticWeb::Schema::subReservation;

# ABSTRACT: The individual reservations included in the package

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'subReservation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The individual reservations included in the package. Typically a repeated
property.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
