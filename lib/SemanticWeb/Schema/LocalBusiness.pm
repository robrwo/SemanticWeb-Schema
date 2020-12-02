use utf8;

package SemanticWeb::Schema::LocalBusiness;

# ABSTRACT: A particular physical business or branch of an organization

use Moo;

extends qw/ SemanticWeb::Schema::Organization SemanticWeb::Schema::Place /;


use MooX::JSON_LD 'LocalBusiness';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.1';

=encoding utf8

=head1 DESCRIPTION

A particular physical business or branch of an organization. Examples of
LocalBusiness include a restaurant, a particular branch of a restaurant
chain, a branch of a bank, a medical practice, a club, a bowling alley,
etc.




=head1 ATTRIBUTES


=head2 C<branch_of>

C<branchOf>

The larger organization that this local business is a branch of, if any.
Not to be confused with (anatomical)[[branch]].


A branch_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=head2 C<_has_branch_of>

A predicate for the L</branch_of> attribute.

=cut

has branch_of => (
    is        => 'rw',
    predicate => '_has_branch_of',
    json_ld   => 'branchOf',
);


=head2 C<currencies_accepted>

C<currenciesAccepted>

The currency accepted.\n\nUse standard formats: [ISO 4217 currency
format](http://en.wikipedia.org/wiki/ISO_4217) e.g. "USD"; [Ticker
symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for
cryptocurrencies e.g. "BTC"; well known names for [Local Exchange Tradings
Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system)
(LETS) and other currency types e.g. "Ithaca HOUR".


A currencies_accepted should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_currencies_accepted>

A predicate for the L</currencies_accepted> attribute.

=cut

has currencies_accepted => (
    is        => 'rw',
    predicate => '_has_currencies_accepted',
    json_ld   => 'currenciesAccepted',
);


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


=head2 C<payment_accepted>

C<paymentAccepted>

Cash, Credit Card, Cryptocurrency, Local Exchange Tradings System, etc.


A payment_accepted should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_payment_accepted>

A predicate for the L</payment_accepted> attribute.

=cut

has payment_accepted => (
    is        => 'rw',
    predicate => '_has_payment_accepted',
    json_ld   => 'paymentAccepted',
);


=head2 C<price_range>

C<priceRange>

The price range of the business, for example ```$$$```.


A price_range should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_price_range>

A predicate for the L</price_range> attribute.

=cut

has price_range => (
    is        => 'rw',
    predicate => '_has_price_range',
    json_ld   => 'priceRange',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Place>

=cut

1;
