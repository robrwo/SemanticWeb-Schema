use utf8;

package SemanticWeb::Schema::eventStatus;

# ABSTRACT: An eventStatus of an event represents its status; particularly useful when an event is cancelled or rescheduled.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'eventStatus';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An eventStatus of an event represents its status; particularly useful when
an event is cancelled or rescheduled.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
