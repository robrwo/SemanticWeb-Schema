use utf8;

package SemanticWeb::Schema::namedPosition;

# ABSTRACT: A position played

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'namedPosition';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A position played, performed or filled by a person or organization, as part
of an organization. For example, an athlete in a SportsTeam might play in
the position named 'Quarterback'.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
