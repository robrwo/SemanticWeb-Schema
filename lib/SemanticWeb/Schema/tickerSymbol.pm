use utf8;

package SemanticWeb::Schema::tickerSymbol;

# ABSTRACT: The exchange traded instrument associated with a Corporation object

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'tickerSymbol';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The exchange traded instrument associated with a Corporation object. The
tickerSymbol is expressed as an exchange and an instrument name separated
by a space character. For the exchange component of the tickerSymbol
attribute, we recommend using the controlled vocabulary of Market
Identifier Codes (MIC) specified in ISO 15022.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
