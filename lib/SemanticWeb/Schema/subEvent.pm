use utf8;

package SemanticWeb::Schema::subEvent;

# ABSTRACT: An Event that is part of this event

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'subEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An Event that is part of this event. For example, a conference event
includes many presentations, each of which is a subEvent of the conference.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
