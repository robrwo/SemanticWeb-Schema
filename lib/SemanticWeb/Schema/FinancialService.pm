use utf8;

package SemanticWeb::Schema::FinancialService;

# ABSTRACT: Financial services business.

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'FinancialService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.0';

=encoding utf8

=head1 DESCRIPTION

Financial services business.




=head1 ATTRIBUTES


=head2 C<fees_and_commissions_specification>

C<feesAndCommissionsSpecification>

Description of fees, commissions, and other terms applied either to a class
of financial product, or by a financial service organization.


A fees_and_commissions_specification should be one of the following types:

=over

=item C<Str>

=back

=cut

has fees_and_commissions_specification => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'feesAndCommissionsSpecification',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
