package LDF::Schema::Map;

# ABSTRACT: A map.

use Moo;

extends qw/ LDF::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A map.




=head1 ATTRIBUTES


=head2 C<map_type>

C<mapType>

Indicates the kind of Map, from the MapCategoryType Enumeration.


A map_type should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::MapCategoryType']>

=back

=cut

has map_type => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Map' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { mapType => 'map_type' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::CreativeWork>

=cut

1;
