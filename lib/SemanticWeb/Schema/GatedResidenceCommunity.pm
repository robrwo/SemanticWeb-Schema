use utf8;

package SemanticWeb::Schema::GatedResidenceCommunity;

# ABSTRACT: Residence type: Gated community.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Residence /;


use MooX::JSON_LD 'GatedResidenceCommunity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

Residence type: Gated community.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Residence>

=cut

1;
