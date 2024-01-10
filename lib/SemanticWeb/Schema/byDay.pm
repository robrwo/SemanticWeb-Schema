use utf8;

package SemanticWeb::Schema::byDay;

# ABSTRACT: Defines the day(s) of the week on which a recurring [[Event]] takes place

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'byDay';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Defines the day(s) of the week on which a recurring L<SemanticWeb::Schema::Event> takes place. May be specified using either L<SemanticWeb::Schema::DayOfWeek>, or alternatively L<SemanticWeb::Schema::Text> conforming to iCal's syntax for byDay recurrence rules.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
