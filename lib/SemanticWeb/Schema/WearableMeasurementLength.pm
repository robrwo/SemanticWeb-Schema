use utf8;

package SemanticWeb::Schema::WearableMeasurementLength;

# ABSTRACT: Represents the length

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'WearableMeasurementLength';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Represents the length, for example of a dress.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
