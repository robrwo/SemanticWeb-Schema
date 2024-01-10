use utf8;

package SemanticWeb::Schema::MerchantReturnFiniteReturnWindow;

# ABSTRACT: Specifies that there is a finite window for product returns.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'MerchantReturnFiniteReturnWindow';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Specifies that there is a finite window for product returns.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
