use utf8;

package SemanticWeb::Schema::BusinessEvent;

# ABSTRACT: Event type: Business event.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'BusinessEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

Event type: Business event.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
