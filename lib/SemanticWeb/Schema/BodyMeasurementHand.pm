use utf8;

package SemanticWeb::Schema::BodyMeasurementHand;

# ABSTRACT: Maximum hand girth (measured over the knuckles of the open right hand excluding thumb

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'BodyMeasurementHand';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Maximum hand girth (measured over the knuckles of the open right hand
excluding thumb, fingers together). Used, for example, to fit gloves.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
