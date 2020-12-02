use utf8;

package SemanticWeb::Schema::CivicStructure;

# ABSTRACT: A public structure

use Moo;

extends qw/ SemanticWeb::Schema::Place /;


use MooX::JSON_LD 'CivicStructure';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.1';

=encoding utf8

=head1 DESCRIPTION

A public structure, such as a town hall or concert hall.




=head1 ATTRIBUTES


=head2 C<opening_hours>

C<openingHours>

=begin html

<p>The general opening hours for a business. Opening hours can be specified
as a weekly time range, starting with days, then times per day. Multiple
days can be listed with commas ',' separating each day. Day or time ranges
are specified using a hyphen '-'.\n\n* Days are specified using the
following two-letter combinations: ```Mo```, ```Tu```, ```We```, ```Th```,
```Fr```, ```Sa```, ```Su```.\n* Times are specified using 24:00 format.
For example, 3pm is specified as ```15:00```, 10am as ```10:00```. \n* Here
is an example: <code>&lt;time itemprop="openingHours" datetime=&quot;Tu,Th
16:00-20:00&quot;&gt;Tuesdays and Thursdays 4-8pm&lt;/time&gt;</code>.\n*
If a business is open 7 days a week, then it can be specified as
<code>&lt;time itemprop=&quot;openingHours&quot;
datetime=&quot;Mo-Su&quot;&gt;Monday through Sunday, all
day&lt;/time&gt;</code>.<p>

=end html


A opening_hours should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_opening_hours>

A predicate for the L</opening_hours> attribute.

=cut

has opening_hours => (
    is        => 'rw',
    predicate => '_has_opening_hours',
    json_ld   => 'openingHours',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Place>

=cut

1;
