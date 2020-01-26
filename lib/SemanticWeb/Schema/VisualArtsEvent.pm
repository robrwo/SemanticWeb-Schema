use utf8;

package SemanticWeb::Schema::VisualArtsEvent;

# ABSTRACT: Event type: Visual arts event.

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'VisualArtsEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.0';

=encoding utf8

=head1 DESCRIPTION

Event type: Visual arts event.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
