use utf8;

package SemanticWeb::Schema::LeisureTimeActivity;

# ABSTRACT: Any physical activity engaged in for recreational purposes

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'LeisureTimeActivity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Any physical activity engaged in for recreational purposes. Examples may
include ballroom dancing, roller skating, canoeing, fishing, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
