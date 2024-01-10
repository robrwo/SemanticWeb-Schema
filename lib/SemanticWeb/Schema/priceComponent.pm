use utf8;

package SemanticWeb::Schema::priceComponent;

# ABSTRACT: This property links to all [[UnitPriceSpecification]] nodes that apply in parallel for the [[CompoundPriceSpecification]] node.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'priceComponent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

This property links to all L<SemanticWeb::Schema::UnitPriceSpecification> nodes that apply in parallel for the L<SemanticWeb::Schema::CompoundPriceSpecification> node.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
