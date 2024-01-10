use utf8;

package SemanticWeb::Schema::leaseLength;

# ABSTRACT: Length of the lease for some [[Accommodation]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'leaseLength';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Length of the lease for some L<SemanticWeb::Schema::Accommodation>, either particular to some L<SemanticWeb::Schema::Offer> or in some cases intrinsic to the property.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
