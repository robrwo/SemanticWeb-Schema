use utf8;

package SemanticWeb::Schema::NightClub;

# ABSTRACT: A nightclub or discotheque.

use Moo;

extends qw/ SemanticWeb::Schema::EntertainmentBusiness /;


use MooX::JSON_LD 'NightClub';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.2';

=encoding utf8

=head1 DESCRIPTION

A nightclub or discotheque.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::EntertainmentBusiness>

=cut

1;
