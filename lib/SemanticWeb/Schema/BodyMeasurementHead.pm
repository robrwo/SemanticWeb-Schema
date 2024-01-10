use utf8;

package SemanticWeb::Schema::BodyMeasurementHead;

# ABSTRACT: Maximum girth of head above the ears

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'BodyMeasurementHead';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Maximum girth of head above the ears. Used, for example, to fit hats.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
