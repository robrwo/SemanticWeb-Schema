use utf8;

package SemanticWeb::Schema::valueAddedTaxIncluded;

# ABSTRACT: Specifies whether the applicable value-added tax (VAT) is included in the price specification or not.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'valueAddedTaxIncluded';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Specifies whether the applicable value-added tax (VAT) is included in the
price specification or not.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
