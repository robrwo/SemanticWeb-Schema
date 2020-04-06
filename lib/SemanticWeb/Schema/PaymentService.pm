use utf8;

package SemanticWeb::Schema::PaymentService;

# ABSTRACT: A Service to transfer funds from a person or organization to a beneficiary person or organization.

use Moo;

extends qw/ SemanticWeb::Schema::FinancialProduct /;


use MooX::JSON_LD 'PaymentService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.4';

=encoding utf8

=head1 DESCRIPTION

A Service to transfer funds from a person or organization to a beneficiary
person or organization.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::FinancialProduct>

=cut

1;
