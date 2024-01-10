use utf8;

package SemanticWeb::Schema::returnPolicySeasonalOverride;

# ABSTRACT: Seasonal override of a return policy.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'returnPolicySeasonalOverride';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Seasonal override of a return policy.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
