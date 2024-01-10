use utf8;

package SemanticWeb::Schema::OccupationalActivity;

# ABSTRACT: Any physical activity engaged in for job-related purposes

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'OccupationalActivity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Any physical activity engaged in for job-related purposes. Examples may
include waiting tables, maid service, carrying a mailbag, picking fruits or
vegetables, construction work, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
