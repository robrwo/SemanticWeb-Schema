use utf8;

package SemanticWeb::Schema::offeredBy;

# ABSTRACT: A pointer to the organization or person making the offer.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'offeredBy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A pointer to the organization or person making the offer.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
