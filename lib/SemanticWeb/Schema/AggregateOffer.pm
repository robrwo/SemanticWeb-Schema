use utf8;

package SemanticWeb::Schema::AggregateOffer;

# ABSTRACT: When a single product is associated with multiple offers (for example

use Moo;

extends qw/ SemanticWeb::Schema::Offer /;


use MooX::JSON_LD 'AggregateOffer';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.6.0';

=encoding utf8

=head1 DESCRIPTION

When a single product is associated with multiple offers (for example, the
same pair of shoes is offered by different merchants), then AggregateOffer
can be used.




=head1 ATTRIBUTES


=head2 C<high_price>

C<highPrice>

=begin html

The highest price of all offers available.<br/><br/> Usage
guidelines:<br/><br/> <ul> <li>Use values from 0123456789 (Unicode 'DIGIT
ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similiar
Unicode symbols.</li> <li>Use '.' (Unicode 'FULL STOP' (U+002E)) rather
than ',' to indicate a decimal point. Avoid using these symbols as a
readability separator.</li> </ul> 

=end html


A high_price should be one of the following types:

=over

=item C<Str>

=item C<Num>

=back

=cut

has high_price => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'highPrice',
);


=head2 C<low_price>

C<lowPrice>

=begin html

The lowest price of all offers available.<br/><br/> Usage
guidelines:<br/><br/> <ul> <li>Use values from 0123456789 (Unicode 'DIGIT
ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similiar
Unicode symbols.</li> <li>Use '.' (Unicode 'FULL STOP' (U+002E)) rather
than ',' to indicate a decimal point. Avoid using these symbols as a
readability separator.</li> </ul> 

=end html


A low_price should be one of the following types:

=over

=item C<Str>

=item C<Num>

=back

=cut

has low_price => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'lowPrice',
);


=head2 C<offer_count>

C<offerCount>

The number of offers for the product.


A offer_count should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has offer_count => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'offerCount',
);


=head2 C<offers>



An offer to provide this item&#x2014;for example, an offer to sell a
product, rent the DVD of a movie, perform a service, or give away tickets
to an event.


A offers should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Offer']>

=back

=cut

has offers => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'offers',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Offer>

=cut

1;
