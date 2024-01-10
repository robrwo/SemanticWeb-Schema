use utf8;

package SemanticWeb::Schema::eligibleQuantity;

# ABSTRACT: The interval and unit of measurement of ordering quantities for which the offer or price specification is valid

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'eligibleQuantity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The interval and unit of measurement of ordering quantities for which the
offer or price specification is valid. This allows e.g. specifying that a
certain freight charge is valid only for a certain quantity.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
