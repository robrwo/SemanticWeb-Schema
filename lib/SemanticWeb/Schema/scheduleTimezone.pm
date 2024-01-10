use utf8;

package SemanticWeb::Schema::scheduleTimezone;

# ABSTRACT: Indicates the timezone for which the time(s) indicated in the [[Schedule]] are given

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'scheduleTimezone';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the timezone for which the time(s) indicated in the L<SemanticWeb::Schema::Schedule> are given. The value provided should be among those listed in the IANA Time Zone Database.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
