use utf8;

package SemanticWeb::Schema::MusicEvent;

# ABSTRACT: Event type: Music event.

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'MusicEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.4';

=encoding utf8

=head1 DESCRIPTION

Event type: Music event.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
