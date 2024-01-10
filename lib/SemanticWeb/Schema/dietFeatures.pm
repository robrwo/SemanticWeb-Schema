use utf8;

package SemanticWeb::Schema::dietFeatures;

# ABSTRACT: Nutritional information specific to the dietary plan

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'dietFeatures';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Nutritional information specific to the dietary plan. May include dietary
recommendations on what foods to avoid, what foods to consume, and specific
alterations/deviations from the USDA or other regulatory body's approved
dietary guidelines.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
