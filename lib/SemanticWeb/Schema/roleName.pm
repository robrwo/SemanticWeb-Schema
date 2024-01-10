use utf8;

package SemanticWeb::Schema::roleName;

# ABSTRACT: A role played

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'roleName';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A role played, performed or filled by a person or organization. For
example, the team of creators for a comic book might fill the roles named
'inker', 'penciller', and 'letterer'; or an athlete in a SportsTeam might
play in the position named 'Quarterback'.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
