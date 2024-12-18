use utf8;

package SemanticWeb::Schema::broadcastSignalModulation;

# ABSTRACT: The modulation (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'broadcastSignalModulation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The modulation (e.g. FM, AM, etc) used by a particular broadcast service.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;