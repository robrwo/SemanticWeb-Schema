use utf8;

package SemanticWeb::Schema::RsvpResponseType;

# ABSTRACT: RsvpResponseType is an enumeration type whose instances represent responding to an RSVP request.

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'RsvpResponseType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.2';

=encoding utf8

=head1 DESCRIPTION

RsvpResponseType is an enumeration type whose instances represent
responding to an RSVP request.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
