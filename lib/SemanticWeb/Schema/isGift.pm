use utf8;

package SemanticWeb::Schema::isGift;

# ABSTRACT: Indicates whether the offer was accepted as a gift for someone other than the buyer.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'isGift';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates whether the offer was accepted as a gift for someone other than
the buyer.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
