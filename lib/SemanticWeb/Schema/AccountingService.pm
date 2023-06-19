use utf8;

package SemanticWeb::Schema::AccountingService;

# ABSTRACT: Accountancy business

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::FinancialService /;


use MooX::JSON_LD 'AccountingService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.1';

=encoding utf8

=head1 DESCRIPTION

Accountancy business.

As a L<SemanticWeb::Schema::LocalBusiness> it can be described as a [[provider]] of one or more L<SemanticWeb::Schema::Service>(s).



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::FinancialService>

=cut

1;
