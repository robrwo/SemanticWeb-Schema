use utf8;

package SemanticWeb::Schema::releasedEvent;

# ABSTRACT: The place and time the release was issued

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'releasedEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The place and time the release was issued, expressed as a PublicationEvent.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
