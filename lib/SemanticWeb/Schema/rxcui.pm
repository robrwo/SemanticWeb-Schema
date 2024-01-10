use utf8;

package SemanticWeb::Schema::rxcui;

# ABSTRACT: The RxCUI drug identifier from RXNORM.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'rxcui';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The RxCUI drug identifier from RXNORM.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
