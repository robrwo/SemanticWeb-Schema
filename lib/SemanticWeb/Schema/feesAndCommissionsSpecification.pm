use utf8;

package SemanticWeb::Schema::feesAndCommissionsSpecification;

# ABSTRACT: Description of fees

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'feesAndCommissionsSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Description of fees, commissions, and other terms applied either to a class
of financial product, or by a financial service organization.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
