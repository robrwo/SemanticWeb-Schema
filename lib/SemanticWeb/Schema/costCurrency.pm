use utf8;

package SemanticWeb::Schema::costCurrency;

# ABSTRACT: The currency (in 3-letter) of the drug cost

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'costCurrency';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The currency (in 3-letter) of the drug cost. See:
http://en.wikipedia.org/wiki/ISO_4217. 




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
