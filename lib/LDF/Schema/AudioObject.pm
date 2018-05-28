package LDF::Schema::AudioObject;

# ABSTRACT: An audio file.

use Moo;

extends qw/ LDF::Schema::MediaObject /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An audio file.




=head1 ATTRIBUTES


=head2 C<transcript>



If this MediaObject is an AudioObject or VideoObject, the transcript of
that object.


A transcript should be one of the following types:

=over

=item C<Str>

=back

=cut

has transcript => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'AudioObject' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'transcript' => $self->curry::_serializer('transcript'),
    } ]
};




=head1 SEE ALSO



L<LDF::Schema::MediaObject>

=cut

1;
