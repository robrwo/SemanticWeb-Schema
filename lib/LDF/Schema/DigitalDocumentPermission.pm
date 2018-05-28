package LDF::Schema::DigitalDocumentPermission;

# ABSTRACT: A permission for a particular person or group to access a particular file.

use Moo;

extends qw/ LDF::Schema::Intangible /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A permission for a particular person or group to access a particular file.




=head1 ATTRIBUTES


=head2 C<grantee>



The person, organization, contact point, or audience that has been granted
this permission.


A grantee should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::ContactPoint']>

=item C<InstanceOf['LDF::Schema::Person']>

=item C<InstanceOf['LDF::Schema::Organization']>

=item C<InstanceOf['LDF::Schema::Audience']>

=back

=cut

has grantee => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<permission_type>

C<permissionType>

The type of permission granted the person, organization, or audience.


A permission_type should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::DigitalDocumentPermissionType']>

=back

=cut

has permission_type => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'DigitalDocumentPermission' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'grantee' => $self->curry::_serializer('grantee'),
       'permissionType' => $self->curry::_serializer('permission_type'),
    } ]
};




=head1 SEE ALSO



L<LDF::Schema::Intangible>

=cut

1;
