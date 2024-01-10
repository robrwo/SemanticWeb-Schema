use utf8;

package SemanticWeb::Schema::previousStartDate;

# ABSTRACT: Used in conjunction with eventStatus for rescheduled or cancelled events

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'previousStartDate';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Used in conjunction with eventStatus for rescheduled or cancelled events.
This property contains the previously scheduled start date. For rescheduled
events, the startDate property should be used for the newly scheduled start
date. In the (rare) case of an event that has been postponed and
rescheduled multiple times, this field may be repeated.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
