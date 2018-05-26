package LDF::Schema::AggregateRating;

# ABSTRACT: The average rating based on multiple ratings or reviews.

use Moo;

extends qw/ LDF::Schema::Rating /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The average rating based on multiple ratings or reviews.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/ext-meta.rdf>

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<item_reviewed>

C<itemReviewed>

The item that is being reviewed/rated.


A item_reviewed should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Thing']>

=back

=cut

has item_reviewed => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<rating_count>

C<ratingCount>

The count of total number of ratings.


A rating_count should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Integer']>

=back

=cut

has rating_count => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<review_count>

C<reviewCount>

The count of total number of reviews.


A review_count should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Integer']>

=back

=cut

has review_count => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'AggregateRating' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { itemReviewed => 'item_reviewed' },
      { ratingCount => 'rating_count' },
      { reviewCount => 'review_count' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Rating>

=cut

1;
