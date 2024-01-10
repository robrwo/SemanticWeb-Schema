use utf8;

package SemanticWeb::Schema::DistanceFee;

# ABSTRACT: Represents the distance fee (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'DistanceFee';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Represents the distance fee (e.g., price per km or mile) part of the total
price for an offered product, for example a car rental.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
