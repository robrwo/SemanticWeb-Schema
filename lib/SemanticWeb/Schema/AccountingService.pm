use utf8;

package SemanticWeb::Schema::AccountingService;

# ABSTRACT: Accountancy business

use Moo;

extends qw/ SemanticWeb::Schema::FinancialService /;


use MooX::JSON_LD 'AccountingService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.0';

=encoding utf8

=head1 DESCRIPTION

Accountancy business.\n\nAs a [[LocalBusiness]] it can be described as a
[[provider]] of one or more [[Service]]\(s). 




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::FinancialService>

=cut

1;
