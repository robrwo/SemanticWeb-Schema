use utf8;

package SemanticWeb::Schema::PoliticalParty;

# ABSTRACT: Organization: Political Party.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use MooX::JSON_LD 'PoliticalParty';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.0';

=encoding utf8

=head1 DESCRIPTION

Organization: Political Party.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
