package LDF::Schema;

# ABSTRACT: Moo classes for http://schema.org/ classes

use Moo;
with 'MooX::Role::JSON_LD';

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The C<LDF::Schema> classes were generated automatically from the
following sources:

=over


=item L<http://schema.org/version/3.3/ext-meta.rdf>

=item L<http://schema.org/version/3.3/schema.rdf>

=back

=head1 ATTRIBUTES

=head2 C<id>

If this is set, it adds a C<@id> to the L</json_ld_data>.

=cut

has id => (
    is        => 'rw',
    predicate => 1,
);

=head2 C<context>

=cut

has context => (
    is => 'lazy',
);

sub _build_context {
    return 'http://schema.org/';
}

around json_ld_data => sub {
    my ($next, $self) = @_;

    my $data = $self->$next;
    $data->{'@id'} //= $self->id if $self->has_id;
    $data->{'@context'} = $self->context;

    return $data;
};

sub json_ld_type { }

sub json_ld_fields { [] }

=head1 SEE ALSO

=over

=item L<Moo>

=item L<MooX::Role::JSON_LD>

=item L<http://schema.org/>

=back

=cut

1;
