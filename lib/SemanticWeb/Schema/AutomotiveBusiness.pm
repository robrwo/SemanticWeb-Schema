use utf8;

package SemanticWeb::Schema::AutomotiveBusiness;

# ABSTRACT: Car repair, sales, or parts.

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'AutomotiveBusiness';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.4';

=encoding utf8

=head1 DESCRIPTION

Car repair, sales, or parts.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
