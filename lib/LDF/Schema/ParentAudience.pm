package LDF::Schema::ParentAudience;

# ABSTRACT: A set of characteristics describing parents

use Moo;

extends qw/ LDF::Schema::PeopleAudience /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A set of characteristics describing parents, who can be interested in
viewing some content.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<child_max_age>

C<childMaxAge>

Maximal age of the child.


A child_max_age should be one of the following types:

=over

=item C<Num>

=back

=cut

has child_max_age => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<child_min_age>

C<childMinAge>

Minimal age of the child.


A child_min_age should be one of the following types:

=over

=item C<Num>

=back

=cut

has child_min_age => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ParentAudience' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { childMaxAge => 'child_max_age' },
      { childMinAge => 'child_min_age' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::PeopleAudience>

=cut

1;
