use utf8;

package SemanticWeb::Schema::bed;

# ABSTRACT: The type of bed or beds included in the accommodation

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'bed';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The type of bed or beds included in the accommodation. For the single case
of just one bed of a certain type, you use bed directly with a text. If you
want to indicate the quantity of a certain kind of bed, use an instance of
BedDetails. For more detailed information, use the amenityFeature property.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
