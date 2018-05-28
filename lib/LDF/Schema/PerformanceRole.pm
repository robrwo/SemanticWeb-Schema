package LDF::Schema::PerformanceRole;

# ABSTRACT: A PerformanceRole is a Role that some entity places with regard to a theatrical performance

use Moo;

extends qw/ LDF::Schema::Role /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A PerformanceRole is a Role that some entity places with regard to a
theatrical performance, e.g. in a Movie, TVSeries etc.




=head1 ATTRIBUTES


=head2 C<character_name>

C<characterName>

The name of a character played in some acting or performing role, i.e. in a
PerformanceRole.


A character_name should be one of the following types:

=over

=item C<Str>

=back

=cut

has character_name => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'PerformanceRole' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'characterName' => $self->curry::_serializer('character_name'),
    } ]
};




=head1 SEE ALSO



L<LDF::Schema::Role>

=cut

1;
