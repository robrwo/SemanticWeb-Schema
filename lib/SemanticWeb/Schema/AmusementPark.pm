use utf8;

package SemanticWeb::Schema::AmusementPark;

# ABSTRACT: An amusement park.

use Moo;

extends qw/ SemanticWeb::Schema::EntertainmentBusiness /;


use MooX::JSON_LD 'AmusementPark';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.1';

=encoding utf8

=head1 DESCRIPTION

An amusement park.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::EntertainmentBusiness>

=cut

1;
