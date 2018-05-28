package SemanticWeb::Schema::Brand;

# ABSTRACT: A brand is a name used by an organization or business person for labeling a product

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A brand is a name used by an organization or business person for labeling a
product, product group, or similar.




=head1 ATTRIBUTES


=head2 C<aggregate_rating>

C<aggregateRating>

The overall rating, based on a collection of reviews or ratings, of the
item.


A aggregate_rating should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AggregateRating']>

=back

=cut

has aggregate_rating => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'aggregateRating',
    json_ld_serializer => \&_serialize_aggregate_rating,
);

sub _serialize_aggregate_rating { $_[0]->_serializer('aggregate_rating') }


=head2 C<logo>



An associated logo.


A logo should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::ImageObject']>

=back

=cut

has logo => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'logo',
    json_ld_serializer => \&_serialize_logo,
);

sub _serialize_logo { $_[0]->_serializer('logo') }


=head2 C<review>



A review of the item.


A review should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Review']>

=back

=cut

has review => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'review',
    json_ld_serializer => \&_serialize_review,
);

sub _serialize_review { $_[0]->_serializer('review') }




around json_ld_type => sub { return 'Brand' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'aggregateRating' => \&_serialize_aggregate_rating,
       'logo' => \&_serialize_logo,
       'review' => \&_serialize_review,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
