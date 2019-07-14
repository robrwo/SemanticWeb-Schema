use utf8;

package SemanticWeb::Schema::AutoRepair;

# ABSTRACT: Car repair business.

use Moo;

extends qw/ SemanticWeb::Schema::AutomotiveBusiness /;


use MooX::JSON_LD 'AutoRepair';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.1';

=encoding utf8

=head1 DESCRIPTION

Car repair business.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AutomotiveBusiness>

=cut

1;
