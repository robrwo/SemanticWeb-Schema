use utf8;

package SemanticWeb::Schema::EventVenue;

# ABSTRACT: An event venue.

use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure /;


use MooX::JSON_LD 'EventVenue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.2';

=encoding utf8

=head1 DESCRIPTION

An event venue.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CivicStructure>

=cut

1;
