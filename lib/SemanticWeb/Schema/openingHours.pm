use utf8;

package SemanticWeb::Schema::openingHours;

# ABSTRACT: The general opening hours for a business

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'openingHours';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>The general opening hours for a business. Opening hours can be specified
as a weekly time range, starting with days, then times per day. Multiple
days can be listed with commas ',' separating each day. Day or time ranges
are specified using a hyphen '-'. * Days are specified using the following
two-letter combinations: ```Mo```, ```Tu```, ```We```, ```Th```, ```Fr```,
```Sa```, ```Su```. * Times are specified using 24:00 format. For example,
3pm is specified as ```15:00```, 10am as ```10:00```. * Here is an example:
<code>&lt;time itemprop="openingHours" datetime=&quot;Tu,Th
16:00-20:00&quot;&gt;Tuesdays and Thursdays 4-8pm&lt;/time&gt;</code>. * If
a business is open 7 days a week, then it can be specified as
<code>&lt;time itemprop=&quot;openingHours&quot;
datetime=&quot;Mo-Su&quot;&gt;Monday through Sunday, all
day&lt;/time&gt;</code>.</p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
