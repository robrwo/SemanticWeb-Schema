use utf8;

package SemanticWeb::Schema::EventAttendanceModeEnumeration;

# ABSTRACT: An EventAttendanceModeEnumeration value is one of potentially several modes of organising an event

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'EventAttendanceModeEnumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v8.0.1';

=encoding utf8

=head1 DESCRIPTION

An EventAttendanceModeEnumeration value is one of potentially several modes
of organising an event, relating to whether it is online or offline.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
