use utf8;

package SemanticWeb::Schema::broadcastFrequencyValue;

# ABSTRACT: The frequency in MHz for a particular broadcast.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'broadcastFrequencyValue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The frequency in MHz for a particular broadcast.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
