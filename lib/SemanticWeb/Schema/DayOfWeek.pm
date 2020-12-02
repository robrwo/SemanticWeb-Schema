use utf8;

package SemanticWeb::Schema::DayOfWeek;

# ABSTRACT: The day of the week, e

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'DayOfWeek';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.1';

=encoding utf8

=head1 DESCRIPTION

The day of the week, e.g. used to specify to which day the opening hours of
an OpeningHoursSpecification refer. Originally, URLs from
[GoodRelations](http://purl.org/goodrelations/v1) were used (for
[[Monday]], [[Tuesday]], [[Wednesday]], [[Thursday]], [[Friday]],
[[Saturday]], [[Sunday]] plus a special entry for [[PublicHolidays]]);
these have now been integrated directly into schema.org. 




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
