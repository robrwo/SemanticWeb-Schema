use utf8;

package SemanticWeb::Schema::EventStatusType;

# ABSTRACT: EventStatusType is an enumeration type whose instances represent several states that an Event may be in.

use Moo;

extends qw/ SemanticWeb::Schema::StatusEnumeration /;


use MooX::JSON_LD 'EventStatusType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.0';

=encoding utf8

=head1 DESCRIPTION

EventStatusType is an enumeration type whose instances represent several
states that an Event may be in.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::StatusEnumeration>

=cut

1;
