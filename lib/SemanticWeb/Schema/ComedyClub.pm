use utf8;

package SemanticWeb::Schema::ComedyClub;

# ABSTRACT: A comedy club.

use Moo;

extends qw/ SemanticWeb::Schema::EntertainmentBusiness /;


use MooX::JSON_LD 'ComedyClub';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

=encoding utf8

=head1 DESCRIPTION

A comedy club.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::EntertainmentBusiness>

=cut

1;
