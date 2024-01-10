use utf8;

package SemanticWeb::Schema::organizer;

# ABSTRACT: An organizer of an Event.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'organizer';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An organizer of an Event.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
