use utf8;

package SemanticWeb::Schema::ReturnLabelCustomerResponsibility;

# ABSTRACT: Indicated that creating a return label is the responsibility of the customer.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'ReturnLabelCustomerResponsibility';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicated that creating a return label is the responsibility of the
customer.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
