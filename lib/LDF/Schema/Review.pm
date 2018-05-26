package LDF::Schema::Review;

# ABSTRACT: A review of an item - for example

use Moo;

extends qw/ LDF::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A review of an item - for example, of a restaurant, movie, or store.




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


=head2 C<review_body>

C<reviewBody>

The actual body of the review.


A review_body should be one of the following types:

=over

=item C<Str>

=back

=cut

has review_body => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<review_rating>

C<reviewRating>

=begin html

The rating given in this review. Note that reviews can themselves be rated.
The <code>reviewRating</code> applies to rating given by the review. The <a
class="localLink"
href="http://schema.org/aggregateRating">aggregateRating</a> property
applies to the review itself, as a creative work.

=end html


A review_rating should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Rating']>

=back

=cut

has review_rating => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Review' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { itemReviewed => 'item_reviewed' },
      { reviewBody => 'review_body' },
      { reviewRating => 'review_rating' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::CreativeWork>

=cut

1;
