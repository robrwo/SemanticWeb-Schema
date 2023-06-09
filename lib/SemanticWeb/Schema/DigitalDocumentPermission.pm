use utf8;

package SemanticWeb::Schema::DigitalDocumentPermission;

# ABSTRACT: A permission for a particular person or group to access a particular file.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'DigitalDocumentPermission';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A permission for a particular person or group to access a particular file.




=head1 ATTRIBUTES


=head2 C<grantee>



The person, organization, contact point, or audience that has been granted
this permission.


A grantee should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Audience']>

=item C<InstanceOf['SemanticWeb::Schema::ContactPoint']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_grantee>

A predicate for the L</grantee> attribute.

=cut

has grantee => (
    is        => 'rw',
    predicate => '_has_grantee',
    json_ld   => 'grantee',
);


=head2 C<permission_type>

C<permissionType>

The type of permission granted the person, organization, or audience.


A permission_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DigitalDocumentPermissionType']>

=back

=head2 C<_has_permission_type>

A predicate for the L</permission_type> attribute.

=cut

has permission_type => (
    is        => 'rw',
    predicate => '_has_permission_type',
    json_ld   => 'permissionType',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
