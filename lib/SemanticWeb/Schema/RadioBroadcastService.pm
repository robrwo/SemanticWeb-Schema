use utf8;

package SemanticWeb::Schema::RadioBroadcastService;

# ABSTRACT: A delivery service through which radio content is provided via broadcast over the air or online.

use Moo;

extends qw/ SemanticWeb::Schema::BroadcastService /;


use MooX::JSON_LD 'RadioBroadcastService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.0';

=encoding utf8

=head1 DESCRIPTION

A delivery service through which radio content is provided via broadcast
over the air or online.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::BroadcastService>

=cut

1;
