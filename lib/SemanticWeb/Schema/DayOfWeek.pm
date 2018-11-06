use utf8;

package SemanticWeb::Schema::DayOfWeek;

# ABSTRACT: The day of the week, e

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'DayOfWeek';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.4';

=encoding utf8

=head1 DESCRIPTION

=begin html

The day of the week, e.g. used to specify to which day the opening hours of
an OpeningHoursSpecification refer.<br/><br/> Originally, URLs from <a
href="http://purl.org/goodrelations/v1">GoodRelations</a> were used (for <a
class="localLink" href="http://schema.org/Monday">Monday</a>, <a
class="localLink" href="http://schema.org/Tuesday">Tuesday</a>, <a
class="localLink" href="http://schema.org/Wednesday">Wednesday</a>, <a
class="localLink" href="http://schema.org/Thursday">Thursday</a>, <a
class="localLink" href="http://schema.org/Friday">Friday</a>, <a
class="localLink" href="http://schema.org/Saturday">Saturday</a>, <a
class="localLink" href="http://schema.org/Sunday">Sunday</a> plus a special
entry for <a class="localLink"
href="http://schema.org/PublicHolidays">PublicHolidays</a>); these have now
been integrated directly into schema.org.

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
