use utf8;

package SemanticWeb::Schema::AggregateRating;

# ABSTRACT: The average rating based on multiple ratings or reviews.

use Moo;

extends qw/ SemanticWeb::Schema::Rating /;


use MooX::JSON_LD 'AggregateRating';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.4';

=encoding utf8

=head1 DESCRIPTION

The average rating based on multiple ratings or reviews.




=head1 ATTRIBUTES


=head2 C<item_reviewed>

C<itemReviewed>

The item that is being reviewed/rated.


A item_reviewed should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has item_reviewed => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'itemReviewed',
);


=head2 C<rating_count>

C<ratingCount>

The count of total number of ratings.


A rating_count should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has rating_count => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'ratingCount',
);


=head2 C<review_count>

C<reviewCount>

The count of total number of reviews.


A review_count should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has review_count => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'reviewCount',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Rating>

=cut

1;
