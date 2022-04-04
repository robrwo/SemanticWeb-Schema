use utf8;

package SemanticWeb::Schema::SearchRescueOrganization;

# ABSTRACT: A Search and Rescue organization of some kind.

use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use MooX::JSON_LD 'SearchRescueOrganization';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.0';

=encoding utf8

=head1 DESCRIPTION

A Search and Rescue organization of some kind.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
