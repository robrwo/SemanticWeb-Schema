package SemanticWeb::Schema::AccountingService;

# ABSTRACT: Accountancy business

use Moo;

extends qw/ SemanticWeb::Schema::FinancialService /;


use MooX::JSON_LD 'AccountingService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

=begin html

Accountancy business.</p> <p>As a <a class="localLink"
href="http://schema.org/LocalBusiness">LocalBusiness</a> it can be
described as a <a class="localLink"
href="http://schema.org/provider">provider</a> of one or more <a
class="localLink" href="http://schema.org/Service">Service</a>(s).

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::FinancialService>

=cut

1;