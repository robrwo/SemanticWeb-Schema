package LDF::Schema::ClaimReview;

# ABSTRACT: A fact-checking review of claims made (or reported) in some creative work (referenced via itemReviewed).

use Moo;

extends qw/ LDF::Schema::Review /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A fact-checking review of claims made (or reported) in some creative work
(referenced via itemReviewed).



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<claim_reviewed>

C<claimReviewed>

A short summary of the specific claims reviewed in a ClaimReview.


A claim_reviewed should be one of the following types:

=over

=item C<Str>

=back

=cut

has claim_reviewed => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ClaimReview' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { claimReviewed => 'claim_reviewed' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::Review>

=cut

1;
