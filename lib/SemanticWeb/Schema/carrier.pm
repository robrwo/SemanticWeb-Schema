use utf8;

package SemanticWeb::Schema::carrier;

# ABSTRACT: 'carrier' is an out-dated term indicating the 'provider' for parcel delivery and flights.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'carrier';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

'carrier' is an out-dated term indicating the 'provider' for parcel
delivery and flights.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
