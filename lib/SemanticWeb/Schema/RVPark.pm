use utf8;

package SemanticWeb::Schema::RVPark;

# ABSTRACT: A place offering space for "Recreational Vehicles"

use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure /;


use MooX::JSON_LD 'RVPark';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.1.0';

=encoding utf8

=head1 DESCRIPTION

A place offering space for "Recreational Vehicles", Caravans, mobile homes
and the like.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CivicStructure>

=cut

1;
