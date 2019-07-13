use utf8;

package SemanticWeb::Schema::LocalBusiness;

# ABSTRACT: A particular physical business or branch of an organization

use Moo;

extends qw/ SemanticWeb::Schema::Place SemanticWeb::Schema::Organization /;


use MooX::JSON_LD 'LocalBusiness';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.6.1';

=encoding utf8

=head1 DESCRIPTION

A particular physical business or branch of an organization. Examples of
LocalBusiness include a restaurant, a particular branch of a restaurant
chain, a branch of a bank, a medical practice, a club, a bowling alley,
etc.




=head1 ATTRIBUTES


=head2 C<branch_of>

C<branchOf>

=begin html

The larger organization that this local business is a branch of, if any.
Not to be confused with (anatomical)<a class="localLink"
href="http://schema.org/branch">branch</a>.

=end html


A branch_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has branch_of => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'branchOf',
);


=head2 C<currencies_accepted>

C<currenciesAccepted>

=begin html

The currency accepted.<br/><br/> Use standard formats: <a
href="http://en.wikipedia.org/wiki/ISO_4217">ISO 4217 currency format</a>
e.g. "USD"; <a
href="https://en.wikipedia.org/wiki/List_of_cryptocurrencies">Ticker
symbol</a> for cryptocurrencies e.g. "BTC"; well known names for <a
href="https://en.wikipedia.org/wiki/Local_exchange_trading_system">Local
Exchange Tradings Systems</a> (LETS) and other currency types e.g. "Ithaca
HOUR".

=end html


A currencies_accepted should be one of the following types:

=over

=item C<Str>

=back

=cut

has currencies_accepted => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'currenciesAccepted',
);


=head2 C<opening_hours>

C<openingHours>

=begin html

The general opening hours for a business. Opening hours can be specified as
a weekly time range, starting with days, then times per day. Multiple days
can be listed with commas ',' separating each day. Day or time ranges are
specified using a hyphen '-'.<br/><br/> <ul> <li>Days are specified using
the following two-letter combinations: <code>Mo</code>, <code>Tu</code>,
<code>We</code>, <code>Th</code>, <code>Fr</code>, <code>Sa</code>,
<code>Su</code>.</li> <li>Times are specified using 24:00 time. For
example, 3pm is specified as <code>15:00</code>. </li> <li>Here is an
example: <code>&lt;time itemprop="openingHours" datetime=&quot;Tu,Th
16:00-20:00&quot;&gt;Tuesdays and Thursdays 4-8pm&lt;/time&gt;</code>.</li>
<li>If a business is open 7 days a week, then it can be specified as
<code>&lt;time itemprop=&quot;openingHours&quot;
datetime=&quot;Mo-Su&quot;&gt;Monday through Sunday, all
day&lt;/time&gt;</code>.</li> </ul> 

=end html


A opening_hours should be one of the following types:

=over

=item C<Str>

=back

=cut

has opening_hours => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'openingHours',
);


=head2 C<payment_accepted>

C<paymentAccepted>

Cash, Credit Card, Cryptocurrency, Local Exchange Tradings System, etc.


A payment_accepted should be one of the following types:

=over

=item C<Str>

=back

=cut

has payment_accepted => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'paymentAccepted',
);


=head2 C<price_range>

C<priceRange>

=begin html

The price range of the business, for example <code>$$$</code>.

=end html


A price_range should be one of the following types:

=over

=item C<Str>

=back

=cut

has price_range => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'priceRange',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
