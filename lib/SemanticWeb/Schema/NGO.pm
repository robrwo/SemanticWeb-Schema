use utf8;

package SemanticWeb::Schema::NGO;

# ABSTRACT: Organization: Non-governmental Organization.

use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use MooX::JSON_LD 'NGO';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.1';

=encoding utf8

=head1 DESCRIPTION

Organization: Non-governmental Organization.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
