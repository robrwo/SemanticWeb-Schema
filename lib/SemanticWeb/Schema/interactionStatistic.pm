use utf8;

package SemanticWeb::Schema::interactionStatistic;

# ABSTRACT: The number of interactions for the CreativeWork using the WebSite or SoftwareApplication

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'interactionStatistic';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number of interactions for the CreativeWork using the WebSite or
SoftwareApplication. The most specific child type of InteractionCounter
should be used.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
