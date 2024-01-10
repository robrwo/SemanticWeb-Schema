use utf8;

package SemanticWeb::Schema::eventSchedule;

# ABSTRACT: Associates an [[Event]] with a [[Schedule]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'eventSchedule';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Associates an L<SemanticWeb::Schema::Event> with a L<SemanticWeb::Schema::Schedule>. There are circumstances where it is preferable to share a schedule for a series of
      repeating events rather than data on the individual events themselves. For example, a website or application might prefer to publish a schedule for a weekly
      gym class rather than provide data on every event. A schedule could be processed by applications to add forthcoming events to a calendar. An L<SemanticWeb::Schema::Event> that
      is associated with a L<SemanticWeb::Schema::Schedule> using this property should not have [[startDate]] or [[endDate]] properties. These are instead defined within the associated
      L<SemanticWeb::Schema::Schedule>, this avoids any ambiguity for clients using the data. The property might have repeated values to specify different schedules, e.g. for different months
      or seasons.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
