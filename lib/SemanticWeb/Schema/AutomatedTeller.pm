package SemanticWeb::Schema::AutomatedTeller;

# ABSTRACT: ATM/cash machine.

use Moo;

extends qw/ SemanticWeb::Schema::FinancialService /;


use MooX::JSON_LD 'AutomatedTeller';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

ATM/cash machine.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::FinancialService>

=cut

1;