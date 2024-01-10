use utf8;

package SemanticWeb::Schema::ActivationFee;

# ABSTRACT: Represents the activation fee part of the total price for an offered product

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'ActivationFee';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Represents the activation fee part of the total price for an offered
product, for example a cellphone contract.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
