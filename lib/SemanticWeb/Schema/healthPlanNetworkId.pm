use utf8;

package SemanticWeb::Schema::healthPlanNetworkId;

# ABSTRACT: Name or unique ID of network

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'healthPlanNetworkId';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Name or unique ID of network. (Networks are often reused across different
insurance plans.)




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
