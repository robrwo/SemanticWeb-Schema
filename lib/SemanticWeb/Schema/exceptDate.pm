use utf8;

package SemanticWeb::Schema::exceptDate;

# ABSTRACT: Defines a [[Date]] or [[DateTime]] during which a scheduled [[Event]] will not take place

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'exceptDate';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Defines a L<SemanticWeb::Schema::Date> or L<SemanticWeb::Schema::DateTime> during which a scheduled L<SemanticWeb::Schema::Event> will not take place. The property allows exceptions to
      a L<SemanticWeb::Schema::Schedule> to be specified. If an exception is specified as a L<SemanticWeb::Schema::DateTime> then only the event that would have started at that specific date and time
      should be excluded from the schedule. If an exception is specified as a L<SemanticWeb::Schema::Date> then any event that is scheduled for that 24 hour period should be
      excluded from the schedule. This allows a whole day to be excluded from the schedule without having to itemise every scheduled event.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
