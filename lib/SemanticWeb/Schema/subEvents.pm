use utf8;

package SemanticWeb::Schema::subEvents;

# ABSTRACT: Events that are a part of this event

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'subEvents';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Events that are a part of this event. For example, a conference event
includes many presentations, each subEvents of the conference.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
