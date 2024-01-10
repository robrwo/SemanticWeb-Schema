use utf8;

package SemanticWeb::Schema::arrivalStation;

# ABSTRACT: The station where the train trip ends.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'arrivalStation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The station where the train trip ends.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
