package LDF::Schema::AggregateOffer;

# ABSTRACT: When a single product is associated with multiple offers (for example

use Moo;

extends qw/ LDF::Schema::Offer /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

When a single product is associated with multiple offers (for example, the
same pair of shoes is offered by different merchants), then AggregateOffer
can be used.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<high_price>

C<highPrice>

The highest price of all offers available.


A high_price should be one of the following types:

=over

=item C<Num>

=item C<Str>

=back

=cut

has high_price => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<low_price>

C<lowPrice>

The lowest price of all offers available.


A low_price should be one of the following types:

=over

=item C<Num>

=item C<Str>

=back

=cut

has low_price => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<offer_count>

C<offerCount>

The number of offers for the product.


A offer_count should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Integer']>

=back

=cut

has offer_count => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<offers>



An offer to provide this item&#x2014;for example, an offer to sell a
product, rent the DVD of a movie, perform a service, or give away tickets
to an event.


A offers should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Offer']>

=back

=cut

has offers => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'AggregateOffer' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { highPrice => 'high_price' },
      { lowPrice => 'low_price' },
      { offerCount => 'offer_count' },
      { offers => 'offers' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::Offer>

=cut

1;
