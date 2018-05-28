package LDF::Schema;

# ABSTRACT: Moo classes for http://schema.org/ classes

use Moo;
with 'MooX::Role::JSON_LD';

use List::Util qw/ first /;
use Ref::Util qw/ is_blessed_ref is_plain_arrayref /;
use Types::Standard qw/ Str /;

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
    isa       => Str,
    predicate => 1,
);

=head2 C<context>

The context defaults to "http://schema.org/".

=cut

sub _build_context {
    return 'http://schema.org/';
}

around json_ld_data => sub {
    my ($next, $self) = @_;

    my $data = $self->$next;

    delete $data->{$_} for grep { !defined $data->{$_} } keys %$data;

    $data->{'@id'} //= $self->id if $self->has_id;

    return $data;
};

sub json_ld_type { }

sub json_ld_fields { [] }

sub _serializer {
    my ( $self, $method ) = @_;
    my $values = $self->$method;

    return undef unless defined $values;

    my $jsonify = sub {
        my ($value) = @_;

        if ( is_blessed_ref($value) ) {

            if ( my $method =
                first { $value->can($_) }
                qw/ json_ld_data as_string stringify / )
            {
                return $value->$method;
            }
            else {
                return
                  $value
                  ;    # Let JSON handle it, though it will probably be an error
            }

        }
        else {

            return $value;

        }
    };

    if ( is_plain_arrayref($values) ) {
        return [ map { $jsonify->($_) } @$values ];
    }
    else {
        return $jsonify->($values);
    }
}

=head1 SEE ALSO

=over

=item L<Moo>

=item L<MooX::Role::JSON_LD>

=item L<http://schema.org/>

=back

=cut

1;
