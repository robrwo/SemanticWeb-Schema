package LDF::Schema::Audience;

# ABSTRACT: Intended audience for an item, i

use Moo;

extends qw/ LDF::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Intended audience for an item, i.e. the group for whom the item was
created.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<audience_type>

C<audienceType>

The target group associated with a given audience (e.g. veterans, car
owners, musicians, etc.).


A audience_type should be one of the following types:

=over

=item C<Str>

=back

=cut

has audience_type => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<geographic_area>

C<geographicArea>

The geographic area associated with the audience.


A geographic_area should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::AdministrativeArea']>

=back

=cut

has geographic_area => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Audience' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { audienceType => 'audience_type' },
      { geographicArea => 'geographic_area' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Intangible>

=cut

1;
