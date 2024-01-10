use utf8;

package SemanticWeb::Schema::BodyMeasurementNeck;

# ABSTRACT: Girth of neck

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'BodyMeasurementNeck';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Girth of neck. Used, for example, to fit shirts.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
