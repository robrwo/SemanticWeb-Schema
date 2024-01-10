use utf8;

package SemanticWeb::Schema::byMonthWeek;

# ABSTRACT: Defines the week(s) of the month on which a recurring Event takes place

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'byMonthWeek';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Defines the week(s) of the month on which a recurring Event takes place.
Specified as an Integer between 1-5. For clarity, byMonthWeek is best used
in conjunction with byDay to indicate concepts like the first and third
Mondays of a month.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
