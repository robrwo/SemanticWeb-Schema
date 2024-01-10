use utf8;

package SemanticWeb::Schema::event;

# ABSTRACT: Upcoming or past event associated with this place

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'event';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Upcoming or past event associated with this place, organization, or action.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
