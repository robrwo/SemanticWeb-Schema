use utf8;

package SemanticWeb::Schema::governmentBenefitsInfo;

# ABSTRACT: governmentBenefitsInfo provides information about government benefits associated with a SpecialAnnouncement.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'governmentBenefitsInfo';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

governmentBenefitsInfo provides information about government benefits
associated with a SpecialAnnouncement.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
