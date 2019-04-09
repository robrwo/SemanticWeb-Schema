use utf8;

package SemanticWeb::Schema::InsuranceAgency;

# ABSTRACT: An Insurance agency.

use Moo;

extends qw/ SemanticWeb::Schema::FinancialService /;


use MooX::JSON_LD 'InsuranceAgency';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.1.0';

=encoding utf8

=head1 DESCRIPTION

An Insurance agency.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::FinancialService>

=cut

1;
