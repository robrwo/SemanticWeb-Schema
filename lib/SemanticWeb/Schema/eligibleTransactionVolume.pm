use utf8;

package SemanticWeb::Schema::eligibleTransactionVolume;

# ABSTRACT: The transaction volume

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'eligibleTransactionVolume';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The transaction volume, in a monetary unit, for which the offer or price
specification is valid, e.g. for indicating a minimal purchasing volume, to
express free shipping above a certain order volume, or to limit the
acceptance of credit cards to purchases to a certain minimal amount.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
